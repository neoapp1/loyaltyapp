import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_page_widget.dart' show SignInPageWidget;
import 'package:flutter/material.dart';

class SignInPageModel extends FlutterFlowModel<SignInPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailLogIn widget.
  FocusNode? emailLogInFocusNode;
  TextEditingController? emailLogInTextController;
  String? Function(BuildContext, String?)? emailLogInTextControllerValidator;
  // State field(s) for passwordLogIn widget.
  FocusNode? passwordLogInFocusNode;
  TextEditingController? passwordLogInTextController;
  late bool passwordLogInVisibility;
  String? Function(BuildContext, String?)? passwordLogInTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordLogInVisibility = false;
  }

  @override
  void dispose() {
    emailLogInFocusNode?.dispose();
    emailLogInTextController?.dispose();

    passwordLogInFocusNode?.dispose();
    passwordLogInTextController?.dispose();
  }
}
