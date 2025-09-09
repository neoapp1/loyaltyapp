const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.updateUsersBatch = functions.https.onCall(async (data, context) => {
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
    // Buscar el grupo
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
    const collectionRef = groupDocRef.collection("groupUsers");

    const batch = admin.firestore().batch();

    // IDs actuales que llegaron en el update
    const incomingUserIds = users.map((u) => u.userId);

    // Obtener todos los documentos actuales de la subcolección
    const currentDocsSnap = await collectionRef.get();
    currentDocsSnap.forEach((doc) => {
      if (!incomingUserIds.includes(doc.id)) {
        batch.delete(doc.ref); // Eliminar si no está en la nueva lista
      }
    });

    // Actualizar o crear los que vienen en la nueva lista
    users.forEach((user) => {
      if (!user.userId) return;
      const docRef = collectionRef.doc(user.userId);
      batch.set(
        docRef,
        {
          userId: user.userId,
          groupId: groupId,
          ...(user.name !== undefined && { name: user.name }),
          ...(user.email !== undefined && { email: user.email }),
          addedAt: admin.firestore.FieldValue.serverTimestamp(),
        },
        { merge: true },
      ); // merge para evitar sobrescribir campos no enviados
    });

    await batch.commit();

    return { message: "Users updated and cleaned up successfully in group." };
  } catch (error) {
    console.error("Error processing users batch:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Error actualizando usuarios en el grupo",
    );
  }
});
