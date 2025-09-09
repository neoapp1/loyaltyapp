import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'registered_user_admin_panel_widget.dart'
    show RegisteredUserAdminPanelWidget;
import 'package:flutter/material.dart';

class RegisteredUserAdminPanelModel
    extends FlutterFlowModel<RegisteredUserAdminPanelWidget> {
  ///  Local state fields for this page.

  bool newUserOption = true;

  bool registeredUser = false;

  String filterOption = '1';

  List<UserCompaniesRecord> userCompanieDocs = [];
  void addToUserCompanieDocs(UserCompaniesRecord item) =>
      userCompanieDocs.add(item);
  void removeFromUserCompanieDocs(UserCompaniesRecord item) =>
      userCompanieDocs.remove(item);
  void removeAtIndexFromUserCompanieDocs(int index) =>
      userCompanieDocs.removeAt(index);
  void insertAtIndexInUserCompanieDocs(int index, UserCompaniesRecord item) =>
      userCompanieDocs.insert(index, item);
  void updateUserCompanieDocsAtIndex(
          int index, Function(UserCompaniesRecord) updateFn) =>
      userCompanieDocs[index] = updateFn(userCompanieDocs[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in RegisteredUserAdminPanel widget.
  List<UserCompaniesRecord>? emailFilter;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UserCompaniesRecord> simpleSearchResults = [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
