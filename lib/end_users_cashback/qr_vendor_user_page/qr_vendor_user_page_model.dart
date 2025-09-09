import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'qr_vendor_user_page_widget.dart' show QrVendorUserPageWidget;
import 'package:flutter/material.dart';

class QrVendorUserPageModel extends FlutterFlowModel<QrVendorUserPageWidget> {
  ///  Local state fields for this page.

  String? scannedCode;

  ///  State fields for stateful widgets in this page.

  var qrcodeData = '';
  // Stores action output result for [Cloud Function - userLinkingToVendor] action in Button widget.
  UserLinkingToVendorCloudFunctionCallResponse? cloudFunctioncg4;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CompaniesRecord? companyData;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
