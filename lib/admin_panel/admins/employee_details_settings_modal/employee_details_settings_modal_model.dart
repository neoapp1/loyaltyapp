import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'employee_details_settings_modal_widget.dart'
    show EmployeeDetailsSettingsModalWidget;
import 'package:flutter/material.dart';

class EmployeeDetailsSettingsModalModel
    extends FlutterFlowModel<EmployeeDetailsSettingsModalWidget> {
  ///  Local state fields for this component.

  bool hasAdminPanelAccess = false;

  bool hasScannerAppAccess = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in employeeDetailsSettingsModal widget.
  CompaniesRecord? companyData;
  // Stores action output result for [Firestore Query - Query a collection] action in employeeDetailsSettingsModal widget.
  UsersRecord? dataAccess;
  // State field(s) for CountryCode widget.
  String? countryCodeValue;
  FormFieldController<String>? countryCodeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CountriesRecord? countryCode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
