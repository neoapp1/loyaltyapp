import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'loyalty_scheme_settings_reward_one_widget.dart'
    show LoyaltySchemeSettingsRewardOneWidget;
import 'package:flutter/material.dart';

class LoyaltySchemeSettingsRewardOneModel
    extends FlutterFlowModel<LoyaltySchemeSettingsRewardOneWidget> {
  ///  Local state fields for this page.

  bool isSpecificDay = true;

  bool isAdditionalPointsConversion = false;

  double? defaultPointsConvertion;

  double? defaultAmountConvertion;

  bool switchisReference = false;

  bool switchisMinimumPaymentRequired = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchisReference widget.
  bool? switchisReferenceValue;
  // State field(s) for SwitchisMinimumPaymentRequired widget.
  bool? switchisMinimumPaymentRequiredValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for pointsAmountBalance widget.
  FocusNode? pointsAmountBalanceFocusNode;
  TextEditingController? pointsAmountBalanceTextController;
  String? Function(BuildContext, String?)?
      pointsAmountBalanceTextControllerValidator;
  // State field(s) for pointsBalance widget.
  FocusNode? pointsBalanceFocusNode;
  TextEditingController? pointsBalanceTextController;
  String? Function(BuildContext, String?)? pointsBalanceTextControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    pointsAmountBalanceFocusNode?.dispose();
    pointsAmountBalanceTextController?.dispose();

    pointsBalanceFocusNode?.dispose();
    pointsBalanceTextController?.dispose();
  }
}
