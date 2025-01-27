import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_company_widget.dart' show AddNewCompanyWidget;
import 'package:flutter/material.dart';

class AddNewCompanyModel extends FlutterFlowModel<AddNewCompanyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for companyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for telephoneNumber widget.
  FocusNode? telephoneNumberFocusNode;
  TextEditingController? telephoneNumberTextController;
  String? Function(BuildContext, String?)?
      telephoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    telephoneNumberFocusNode?.dispose();
    telephoneNumberTextController?.dispose();
  }
}
