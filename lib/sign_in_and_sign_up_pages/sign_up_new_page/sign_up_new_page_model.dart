import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_new_page_widget.dart' show SignUpNewPageWidget;
import 'package:flutter/material.dart';

class SignUpNewPageModel extends FlutterFlowModel<SignUpNewPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
