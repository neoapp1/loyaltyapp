import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
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
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? countCompanies;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserCompaniesRecord? companyIdd;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CompaniesRecord? companyLoyaltySchemee;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserCompaniesRecord>? userCompanies;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserCompaniesRecord? companyId;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CompaniesRecord? companyLoyaltyScheme;

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
