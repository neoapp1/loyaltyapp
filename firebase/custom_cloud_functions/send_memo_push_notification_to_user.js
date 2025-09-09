const functions = require("firebase-functions");
const admin = require("firebase-admin");

if (!admin.apps.length) {
  admin.initializeApp();
}

exports.sendMemoPushNotificationToUser = functions.https.onCall(
  async (data, context) => {
    const { userId, memoType, amount, referenceNumber } = data;

    if (!userId || !memoType || !amount) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "userId, memoType, and amount are required",
      );
    }

    try {
      const userRef = admin.firestore().collection("users").doc(userId);
      const userDoc = await userRef.get();

      if (!userDoc.exists) {
        console.log("User not found:", userId);
        return { success: false, message: "User not found" };
      }

      const tokensSnapshot = await userRef.collection("fcm_tokens").get();
      const fcmTokens = tokensSnapshot.docs
        .map((doc) => doc.data().fcm_token?.trim())
        .filter((token) => token);

      if (fcmTokens.length === 0) {
        return { success: false, message: "No tokens found" };
      }

      let title = "";
      let body = "";

      const formattedAmount = new Intl.NumberFormat("en-IE", {
        style: "currency",
        currency: "EUR",
      }).format(amount);

      if (memoType === "credit") {
        body = `Credit memo of ${formattedAmount} was applied to your cashback balance.`;
      } else if (memoType === "debit") {
        body = `Debit memo of ${formattedAmount} was applied to your cashback balance.`;
      } else {
        body = `Memo of ${formattedAmount} was applied to your cashback balance.`;
      }

      if (referenceNumber) {
        body += ` Ref: ${referenceNumber}`;
      }

      const payloadData = {
        type: "memo",
        userId,
        memoType,
        amount: amount.toString(),
      };
      if (referenceNumber) payloadData.referenceNumber = referenceNumber;

      const message = {
        notification: { title, body },
        data: payloadData,
        android: { priority: "high", notification: { sound: "default" } },
        apns: { payload: { aps: { sound: "default" } } },
        tokens: fcmTokens,
      };

      const response = await admin.messaging().sendEachForMulticast(message);

      const successCount = response.responses.filter((r) => r.success).length;
      const failureCount = response.responses.filter((r) => !r.success).length;

      return {
        success: true,
        sentCount: successCount,
        failedCount: failureCount,
        responses: response.responses,
      };
    } catch (error) {
      console.error("Error sending push notification:", error);
      throw new functions.https.HttpsError("internal", error.message);
    }
  },
);
