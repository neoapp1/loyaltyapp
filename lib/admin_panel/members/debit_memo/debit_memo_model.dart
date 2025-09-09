import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'debit_memo_widget.dart' show DebitMemoWidget;
import 'package:flutter/material.dart';

class DebitMemoModel extends FlutterFlowModel<DebitMemoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Custom Action - calculateNewDebitMemoBalance] action in Button widget.
  double? resultAmount;
  // Stores action output result for [Cloud Function - sendMemoPushNotificationToUser] action in Button widget.
  SendMemoPushNotificationToUserCloudFunctionCallResponse? send;
  // Stores action output result for [Custom Action - calculateNewDebitMemoBalance] action in Button widget.
  double? resultAmount2;
  // Stores action output result for [Cloud Function - sendMemoPushNotificationToUser] action in Button widget.
  SendMemoPushNotificationToUserCloudFunctionCallResponse? sendd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
