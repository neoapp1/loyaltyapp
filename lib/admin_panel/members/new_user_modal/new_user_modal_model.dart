import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_user_modal_widget.dart' show NewUserModalWidget;
import 'package:flutter/material.dart';

class NewUserModalModel extends FlutterFlowModel<NewUserModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newUserEmail widget.
  FocusNode? newUserEmailFocusNode;
  TextEditingController? newUserEmailTextController;
  String? Function(BuildContext, String?)? newUserEmailTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? valueFound;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CompaniesRecord? companyData;
  // Stores action output result for [Cloud Function - linkUserToCompany] action in Button widget.
  LinkUserToCompanyCloudFunctionCallResponse? linkData;
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
