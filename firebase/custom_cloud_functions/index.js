const admin = require("firebase-admin/app");
admin.initializeApp();

const createUserCompanyData = require("./create_user_company_data.js");
exports.createUserCompanyData = createUserCompanyData.createUserCompanyData;
const linkUserToCompany = require("./link_user_to_company.js");
exports.linkUserToCompany = linkUserToCompany.linkUserToCompany;
const linkAdminToCompany = require("./link_admin_to_company.js");
exports.linkAdminToCompany = linkAdminToCompany.linkAdminToCompany;
const saveUsersBatch = require("./save_users_batch.js");
exports.saveUsersBatch = saveUsersBatch.saveUsersBatch;
const updateUsersBatch = require("./update_users_batch.js");
exports.updateUsersBatch = updateUsersBatch.updateUsersBatch;
const userLinkingToVendor = require("./user_linking_to_vendor.js");
exports.userLinkingToVendor = userLinkingToVendor.userLinkingToVendor;
const sendMemoPushNotificationToUser = require("./send_memo_push_notification_to_user.js");
exports.sendMemoPushNotificationToUser =
  sendMemoPushNotificationToUser.sendMemoPushNotificationToUser;
