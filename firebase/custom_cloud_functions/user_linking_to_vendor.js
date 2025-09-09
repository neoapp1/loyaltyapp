const functions = require("firebase-functions");
const admin = require("firebase-admin");
exports.userLinkingToVendor = functions.https.onCall(async (data, context) => {
  const { userId, qrCompanyId } = data;

  if (!userId || !qrCompanyId) {
    return { success: false, message: "Missing userId or qrCompanyId." };
  }

  try {
    const companiesRef = admin.firestore().collection("companies");
    const querySnapshot = await companiesRef
      .where("companyId", "==", qrCompanyId)
      .limit(1)
      .get();

    if (querySnapshot.empty) {
      return {
        success: false,
        message: "Company not found with the provided QR code.",
      };
    }

    const companyDoc = querySnapshot.docs[0];
    const companyData = companyDoc.data();

    if (companyData.isInvitationOnly === true) {
      return {
        success: false,
        message:
          "This vendor requires an invitation to join. Please contact them directly to request access or wait for an invitation.",
      };
    }

    const userRef = admin.firestore().collection("users").doc(userId);
    const userDoc = await userRef.get();

    if (!userDoc.exists) {
      return { success: false, message: "User not found." };
    }

    const userData = userDoc.data();

    const companyDataToSave = {
      companyId: companyData.companyId,
      companyName: companyData.companyName,
      email: userData.email,
      loyaltyScheme: companyData.loyaltySystem || {},
      linkedAt: admin.firestore.FieldValue.serverTimestamp(),
      ...userData,
    };

    await userRef.collection("userCompanies").add(companyDataToSave);

    return {
      success: true,
      message: "User successfully linked to the company.",
    };
  } catch (error) {
    console.error("Error linking user to vendor:", error);
    return {
      success: false,
      message: "An internal error occurred while linking the user.",
    };
  }
});
