import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_admin_modal_widget.dart' show NewAdminModalWidget;
import 'package:flutter/material.dart';

class NewAdminModalModel extends FlutterFlowModel<NewAdminModalWidget> {
  ///  Local state fields for this component.

  bool hasWebAdminAccess = false;

  bool hasScannerAccess = false;

  String role = 'Employee';

  ///  State fields for stateful widgets in this component.

  // State field(s) for newUserEmail widget.
  FocusNode? newUserEmailFocusNode;
  TextEditingController? newUserEmailTextController;
  String? Function(BuildContext, String?)? newUserEmailTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? valueFound;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CompaniesRecord? companyData;
  // Stores action output result for [Cloud Function - linkAdminToCompany] action in Button widget.
  LinkAdminToCompanyCloudFunctionCallResponse? linkData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ApprovedEmailsRecord? newClient1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newUserEmailFocusNode?.dispose();
    newUserEmailTextController?.dispose();
  }
}
