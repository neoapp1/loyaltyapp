const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.createUserCompanyData = functions.auth.user().onCreate(async (user) => {
  const userId = user.uid; // ID del usuario recién creado
  const email = user.email; // Correo del usuario

  try {
    // 🔍 Buscar en la colección "approvedEmails" por el email del usuario
    const querySnapshot = await admin
      .firestore()
      .collection("approvedEmails")
      .where("email", "==", email)
      .limit(1)
      .get();

    if (querySnapshot.empty) {
      console.error("No se encontró la empresa para este email.");
      return null;
    }

    const approvedData = querySnapshot.docs[0].data();
    const companyId = approvedData.companyId;

    if (!companyId) {
      console.error("El companyId no está definido en approvedEmails.");
      return null;
    }

    // 🔍 Obtener datos de la empresa
    const companyRef = admin.firestore().collection("companies").doc(companyId);
    const companyDoc = await companyRef.get();

    if (!companyDoc.exists) {
      console.error("Company not found!");
      return null;
    }

    const companyData = companyDoc.data();

    // 🔍 Obtener datos del usuario
    const userRef = admin.firestore().collection("users").doc(userId);
    const userDoc = await userRef.get();

    if (!userDoc.exists) {
      console.error("User not found!");
      return null;
    }

    const userData = userDoc.data();

    // 📌 Preparar datos para guardar
    const companyDataToSave = {
      companyId: companyId,
      companyName: companyData.companyName,
      email: email,
      loyaltyScheme: companyData.loyaltySystem || {},
      ...userData,
    };

    // 🔥 Si el usuario es un "user" y no un "admin", agregar campos iniciales según el loyalty system
    if (userData.isUser) {
      const loyaltySystem = companyData.loyaltySystem?.type || "";

      if (loyaltySystem === "One Plan") {
        Object.assign(companyDataToSave, {
          cashbackBalance: 0,
          cashbackUsed: 0,
          lastTransactionAt: admin.firestore.Timestamp.now(),
          totalSpent: 0,
        });
      } else if (loyaltySystem === "Reward One") {
        Object.assign(companyDataToSave, {
          pointsBalance: 0,
          pointsUsed: 0,
          lastTransactionAt: admin.firestore.Timestamp.now(),
          totalSpent: 0,
        });
      } else if (loyaltySystem === "Game One") {
        Object.assign(companyDataToSave, {
          visitsCount: 0,
          visitsRedeemed: 0,
          lastVisitAt: admin.firestore.Timestamp.now(),
          totalVisits: 0,
        });
      }
    }

    // 📌 Guardar en la subcolección "userCompanies"
    await admin
      .firestore()
      .collection("users")
      .doc(userId)
      .collection("userCompanies")
      .add(companyDataToSave);

    console.log("Empresa asociada correctamente al usuario.");

    // 🗑️ Eliminar el documento de "approvedEmails"
    await admin
      .firestore()
      .collection("approvedEmails")
      .doc(querySnapshot.docs[0].id)
      .delete();

    console.log("Documento de approvedEmails eliminado.");

    // Retornar info
    return {
      userId: userId,
      email: email,
      companyId: companyId,
      companyData: companyData,
      approvedData: approvedData,
    };
  } catch (error) {
    console.error("Error en createUserCompanyData:", error);
    return null;
  }
});
