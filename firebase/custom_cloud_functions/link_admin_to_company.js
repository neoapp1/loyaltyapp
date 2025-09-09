const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.linkAdminToCompany = functions.https.onCall(async (data, context) => {
  const { userId, companyId } = data;

  if (!userId || !companyId) {
    throw new functions.https.HttpsError(
      "invalid-argument",
      "Faltan userId o companyId.",
    );
  }

  try {
    // 📌 Obtener datos del usuario existente
    const userRef = admin.firestore().collection("users").doc(userId);
    const userDoc = await userRef.get();

    if (!userDoc.exists) {
      throw new functions.https.HttpsError(
        "not-found",
        "Usuario no encontrado.",
      );
    }

    const userData = userDoc.data();

    // 📌 Obtener datos de la empresa
    const companyRef = admin.firestore().collection("companies").doc(companyId);
    const companyDoc = await companyRef.get();

    if (!companyDoc.exists) {
      throw new functions.https.HttpsError(
        "not-found",
        "Empresa no encontrada.",
      );
    }

    const companyData = companyDoc.data();

    // 📦 Construir objeto para guardar en "userCompanies"
    const companyDataToSave = {
      companyId: companyId,
      companyName: companyData.companyName,
      email: userData.email,
      loyaltyScheme: companyData.loyaltySystem || {},
      ...userData,
    };

    // 🔐 Guardar los datos en la subcolección del usuario
    await userRef.collection("userCompanies").add(companyDataToSave);

    console.log("Usuario vinculado correctamente a la empresa:", companyId);

    return {
      success: true,
      message: `Usuario vinculado correctamente a la empresa.`,
      companyData: companyDataToSave,
    };
  } catch (error) {
    console.error("Error al vincular usuario a empresa:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Ocurrió un error al vincular el usuario.",
    );
  }
});
