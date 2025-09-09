import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_users_group_widget.dart' show AddUsersGroupWidget;
import 'package:flutter/material.dart';

class AddUsersGroupModel extends FlutterFlowModel<AddUsersGroupWidget> {
  ///  Local state fields for this page.

  bool promoLimitError = false;

  List<UserGroupsAddedStruct> selectedUsers = [];
  void addToSelectedUsers(UserGroupsAddedStruct item) =>
      selectedUsers.add(item);
  void removeFromSelectedUsers(UserGroupsAddedStruct item) =>
      selectedUsers.remove(item);
  void removeAtIndexFromSelectedUsers(int index) =>
      selectedUsers.removeAt(index);
  void insertAtIndexInSelectedUsers(int index, UserGroupsAddedStruct item) =>
      selectedUsers.insert(index, item);
  void updateSelectedUsersAtIndex(
          int index, Function(UserGroupsAddedStruct) updateFn) =>
      selectedUsers[index] = updateFn(selectedUsers[index]);

  ///  State fields for stateful widgets in this page.

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
  // Stores action output result for [Cloud Function - saveUsersBatch] action in Button widget.
  SaveUsersBatchCloudFunctionCallResponse? functionReturn;

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
