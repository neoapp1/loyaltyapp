import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'scan_vendor_email_verification_widget.dart'
    show ScanVendorEmailVerificationWidget;
import 'package:flutter/material.dart';

class ScanVendorEmailVerificationModel
    extends FlutterFlowModel<ScanVendorEmailVerificationWidget> {
  ///  Local state fields for this page.

  dynamic approvedEmailCollection;

  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAccount widget.
  FocusNode? emailAccountFocusNode;
  TextEditingController? emailAccountTextController;
  String? Function(BuildContext, String?)? emailAccountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAccountFocusNode?.dispose();
    emailAccountTextController?.dispose();
  }
}
