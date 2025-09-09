import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for contactCountryCode widget.
  String? contactCountryCodeValue;
  FormFieldController<String>? contactCountryCodeValueController;
  // State field(s) for contactTelephoneNumber widget.
  FocusNode? contactTelephoneNumberFocusNode;
  TextEditingController? contactTelephoneNumberTextController;
  String? Function(BuildContext, String?)?
      contactTelephoneNumberTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in createButton widget.
  CountriesRecord? countryCode;
  // Stores action output result for [Cloud Function - createUserCompanyData] action in createButton widget.
  CreateUserCompanyDataCloudFunctionCallResponse? companyData;
  // Stores action output result for [Firestore Query - Query a collection] action in createButton widget.
  CompaniesRecord? companyLoyaltyScheme;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    contactTelephoneNumberFocusNode?.dispose();
    contactTelephoneNumberTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
