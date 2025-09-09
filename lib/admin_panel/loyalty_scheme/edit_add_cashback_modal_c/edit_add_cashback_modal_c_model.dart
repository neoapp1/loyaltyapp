import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_add_cashback_modal_c_widget.dart' show EditAddCashbackModalCWidget;
import 'package:flutter/material.dart';

class EditAddCashbackModalCModel
    extends FlutterFlowModel<EditAddCashbackModalCWidget> {
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

  DateTime? startDateSpecificDay;

  DateTime? startTimeSpecificDay;

  DateTime? endTimeSpecificDay;

  bool isSpecificDay = false;

  DateTime? startDateMultipleDays;

  DateTime? startTimeMultipleDays;

  DateTime? endTimeMultipleDays;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for editCashbackSettingNameSpecificDay widget.
  FocusNode? editCashbackSettingNameSpecificDayFocusNode;
  TextEditingController? editCashbackSettingNameSpecificDayTextController;
  String? Function(BuildContext, String?)?
      editCashbackSettingNameSpecificDayTextControllerValidator;
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
  // State field(s) for cashbackSettingNameOrderAmount widget.
  FocusNode? cashbackSettingNameOrderAmountFocusNode;
  TextEditingController? cashbackSettingNameOrderAmountTextController;
  String? Function(BuildContext, String?)?
      cashbackSettingNameOrderAmountTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for thirdCashBackPercentage widget.
  FocusNode? thirdCashBackPercentageFocusNode;
  TextEditingController? thirdCashBackPercentageTextController;
  String? Function(BuildContext, String?)?
      thirdCashBackPercentageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editCashbackSettingNameSpecificDayFocusNode?.dispose();
    editCashbackSettingNameSpecificDayTextController?.dispose();

    firstCashBackPercentageFocusNode?.dispose();
    firstCashBackPercentageTextController?.dispose();

    cashbackSettingNameMultipleDaysFocusNode?.dispose();
    cashbackSettingNameMultipleDaysTextController?.dispose();

    secondCashBackPercentageFocusNode?.dispose();
    secondCashBackPercentageTextController?.dispose();

    cashbackSettingNameOrderAmountFocusNode?.dispose();
    cashbackSettingNameOrderAmountTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    thirdCashBackPercentageFocusNode?.dispose();
    thirdCashBackPercentageTextController?.dispose();
  }
}
