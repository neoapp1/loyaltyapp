import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_new_page_widget.dart' show SignUpNewPageWidget;
import 'package:flutter/material.dart';

class SignUpNewPageModel extends FlutterFlowModel<SignUpNewPageWidget> {
  ///  Local state fields for this page.

  dynamic approvedEmailCollection;

  String? companyQrCode;

  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAccount widget.
  FocusNode? emailAccountFocusNode;
  TextEditingController? emailAccountTextController;
  String? Function(BuildContext, String?)? emailAccountTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in verifyEmail widget.
  ApprovedEmailsRecord? isUser;
  var qrcodeData = '';
  // Stores action output result for [Firestore Query - Query a collection] action in verifyEmail widget.
  CompaniesRecord? companydata;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAccountFocusNode?.dispose();
    emailAccountTextController?.dispose();
  }
}
