const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.saveUsersBatch = functions.https.onCall(async (data, context) => {
  const { groupId, usersJsonString } = data;

  if (typeof groupId !== "string" || groupId.trim() === "") {
    throw new functions.https.HttpsError(
      "invalid-argument",
      '"groupId" es requerido y debe ser un string',
    );
  }

  if (typeof usersJsonString !== "string") {
    throw new functions.https.HttpsError(
      "invalid-argument",
      '"usersJsonString" debe ser un string JSON',
    );
  }

  let users;
  try {
    users = JSON.parse(usersJsonString);
  } catch (e) {
    throw new functions.https.HttpsError(
      "invalid-argument",
      'JSON inválido en "usersJsonString"',
    );
  }

  if (!Array.isArray(users)) {
    throw new functions.https.HttpsError(
      "invalid-argument",
      '"users" debe ser un array después del parseo',
    );
  }

  try {
    // 🔍 Buscar documento en 'groups' donde el campo 'groupId' coincida
    const groupsQuery = await admin
      .firestore()
      .collection("groups")
      .where("groupId", "==", groupId)
      .limit(1)
      .get();

    if (groupsQuery.empty) {
      throw new functions.https.HttpsError(
        "not-found",
        `No se encontró un grupo con groupId: ${groupId}`,
      );
    }

    const groupDocRef = groupsQuery.docs[0].ref;
    const collectionRef = groupDocRef.collection("groupUsers"); // Subcolección
    const batch = admin.firestore().batch();

    users.forEach((user) => {
      if (!user.userId) return;
      const docRef = collectionRef.doc(user.userId);
      batch.set(docRef, {
        userId: user.userId,
        groupId: groupId,
        name: user.name || "",
        email: user.email || "",
        addedAt: admin.firestore.FieldValue.serverTimestamp(),
      });
    });

    await batch.commit();

    return { message: "Users saved successfully in group." };
  } catch (error) {
    console.error("Error saving users:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Error guardando usuarios en el grupo",
    );
  }
});
