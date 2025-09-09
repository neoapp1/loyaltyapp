import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'registered_admin_telephone_number_widget.dart'
    show RegisteredAdminTelephoneNumberWidget;
import 'package:flutter/material.dart';

class RegisteredAdminTelephoneNumberModel
    extends FlutterFlowModel<RegisteredAdminTelephoneNumberWidget> {
  ///  Local state fields for this page.

  bool newUserOption = true;

  bool registeredUser = false;

  ///  State fields for stateful widgets in this page.

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
