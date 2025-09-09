import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_users_group_widget.dart' show EditUsersGroupWidget;
import 'package:flutter/material.dart';

class EditUsersGroupModel extends FlutterFlowModel<EditUsersGroupWidget> {
  ///  Local state fields for this page.

  bool promoLimitError = false;

  List<UserGroupsAddedStruct> existingUsers = [];
  void addToExistingUsers(UserGroupsAddedStruct item) =>
      existingUsers.add(item);
  void removeFromExistingUsers(UserGroupsAddedStruct item) =>
      existingUsers.remove(item);
  void removeAtIndexFromExistingUsers(int index) =>
      existingUsers.removeAt(index);
  void insertAtIndexInExistingUsers(int index, UserGroupsAddedStruct item) =>
      existingUsers.insert(index, item);
  void updateExistingUsersAtIndex(
          int index, Function(UserGroupsAddedStruct) updateFn) =>
      existingUsers[index] = updateFn(existingUsers[index]);

  List<UserGroupsAddedStruct> combinedUsers = [];
  void addToCombinedUsers(UserGroupsAddedStruct item) =>
      combinedUsers.add(item);
  void removeFromCombinedUsers(UserGroupsAddedStruct item) =>
      combinedUsers.remove(item);
  void removeAtIndexFromCombinedUsers(int index) =>
      combinedUsers.removeAt(index);
  void insertAtIndexInCombinedUsers(int index, UserGroupsAddedStruct item) =>
      combinedUsers.insert(index, item);
  void updateCombinedUsersAtIndex(
          int index, Function(UserGroupsAddedStruct) updateFn) =>
      combinedUsers[index] = updateFn(combinedUsers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in EditUsersGroup widget.
  List<GroupUsersRecord>? existingQueryUsers;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController3Validator;
  List<UserCompaniesRecord> simpleSearchResults = [];
  // Stores action output result for [Custom Action - checkIfUserExistsInList] action in IconButton widget.
  bool? userAddedValidation;
  // Stores action output result for [Custom Action - saveUsersToGroupUsersCollection] action in Button widget.
  String? valuesString;
  // Stores action output result for [Cloud Function - updateUsersBatch] action in Button widget.
  UpdateUsersBatchCloudFunctionCallResponse? functionReturn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
  }
}
