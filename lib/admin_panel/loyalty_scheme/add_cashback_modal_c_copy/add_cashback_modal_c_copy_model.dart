import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_cashback_modal_c_copy_widget.dart' show AddCashbackModalCCopyWidget;
import 'package:flutter/material.dart';

class AddCashbackModalCCopyModel
    extends FlutterFlowModel<AddCashbackModalCCopyWidget> {
  ///  Local state fields for this component.

  bool switchIsMaximumCashbackLimit = false;

  bool switchIsMinimumPurchaseAmountPerTransaction = false;

  bool switchIsMaximumCashBackPerTransaction = false;

  bool switchIsIncludeVatOnCashback = false;

  bool switchIsApplyCashbackBalanceIfRedeeming = false;

  bool switchIsTimeRange = false;

  bool switchIsDateRange = false;

  DateTime? selectedEndDate;

  bool switchSpecificGroup = false;

  String? selectedGroupId;

  String? selectedGroupName;

  bool switchIsTimeRangeSpecificDay = false;

  bool switchSpecificGroupSpecificDay = false;

  bool fieldsErrorMessage = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for cashbackSettingNameSpecificDay widget.
  FocusNode? cashbackSettingNameSpecificDayFocusNode;
  TextEditingController? cashbackSettingNameSpecificDayTextController;
  String? Function(BuildContext, String?)?
      cashbackSettingNameSpecificDayTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - setToEndOfDay] action in Button widget.
  DateTime? selectedNewDatee;
  // State field(s) for Switch widget.
  bool? switchValue1;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue1;
  FormFieldController<List<String>>? dropDownValueController1;
  // State field(s) for firstCashBackPercentage widget.
  FocusNode? firstCashBackPercentageFocusNode;
  TextEditingController? firstCashBackPercentageTextController;
  String? Function(BuildContext, String?)?
      firstCashBackPercentageTextControllerValidator;
  // State field(s) for cashbackSettingNameMultipleDays widget.
  FocusNode? cashbackSettingNameMultipleDaysFocusNode;
  TextEditingController? cashbackSettingNameMultipleDaysTextController;
  String? Function(BuildContext, String?)?
      cashbackSettingNameMultipleDaysTextControllerValidator;
  // State field(s) for SelectDaysOrRangeDropDown widget.
  String? selectDaysOrRangeDropDownValue;
  FormFieldController<String>? selectDaysOrRangeDropDownValueController;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for SelectRangeDaysDropDown widget.
  String? selectRangeDaysDropDownValue;
  FormFieldController<String>? selectRangeDaysDropDownValueController;
  // State field(s) for Switch widget.
  bool? switchValue3;
  DateTime? datePicked5;
  DateTime? datePicked6;
  // Stores action output result for [Custom Action - setToEndOfDay] action in Button widget.
  DateTime? selectedNewDate;
  // State field(s) for Switch widget.
  bool? switchValue4;
  DateTime? datePicked7;
  DateTime? datePicked8;
  // State field(s) for Switch widget.
  bool? switchValue5;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;
  // State field(s) for SecondCashBackPercentage widget.
  FocusNode? secondCashBackPercentageFocusNode;
  TextEditingController? secondCashBackPercentageTextController;
  String? Function(BuildContext, String?)?
      secondCashBackPercentageTextControllerValidator;
  // Stores action output result for [Custom Action - generateCustomId] action in Button widget.
  String? customId;
  // Stores action output result for [Custom Action - generateCustomId] action in Button widget.
  String? customId2;
  // Stores action output result for [Custom Action - generateCustomId] action in Button widget.
  String? customId3;
  // Stores action output result for [Custom Action - generateCustomId] action in Button widget.
  String? customId4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cashbackSettingNameSpecificDayFocusNode?.dispose();
    cashbackSettingNameSpecificDayTextController?.dispose();

    firstCashBackPercentageFocusNode?.dispose();
    firstCashBackPercentageTextController?.dispose();

    cashbackSettingNameMultipleDaysFocusNode?.dispose();
    cashbackSettingNameMultipleDaysTextController?.dispose();

    secondCashBackPercentageFocusNode?.dispose();
    secondCashBackPercentageTextController?.dispose();
  }
}
