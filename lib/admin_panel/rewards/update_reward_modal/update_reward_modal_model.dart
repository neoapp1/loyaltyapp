import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_reward_modal_widget.dart' show UpdateRewardModalWidget;
import 'package:flutter/material.dart';

class UpdateRewardModalModel extends FlutterFlowModel<UpdateRewardModalWidget> {
  ///  Local state fields for this component.

  bool hasExpirationDate = false;

  bool limitPerContact = false;

  bool isActive = false;

  bool pushNotification = false;

  DateTime? datePicket;

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
  // State field(s) for SwitchlimitPerContact widget.
  bool? switchlimitPerContactValue;
  // State field(s) for maxRedemptionsPerUser widget.
  FocusNode? maxRedemptionsPerUserFocusNode;
  TextEditingController? maxRedemptionsPerUserTextController;
  String? Function(BuildContext, String?)?
      maxRedemptionsPerUserTextControllerValidator;
  // State field(s) for SwitchExpirationDate widget.
  bool? switchExpirationDateValue;
  DateTime? datePicked;
  // State field(s) for SwitchisActive widget.
  bool? switchisActiveValue;
  // State field(s) for SwitchsendPushNotification widget.
  bool? switchsendPushNotificationValue;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

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

    maxRedemptionsPerUserFocusNode?.dispose();
    maxRedemptionsPerUserTextController?.dispose();
  }
}
