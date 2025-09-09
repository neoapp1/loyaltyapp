import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_points_modal_c_widget.dart' show AddPointsModalCWidget;
import 'package:flutter/material.dart';

class AddPointsModalCModel extends FlutterFlowModel<AddPointsModalCWidget> {
  ///  Local state fields for this component.

  bool switchIsMaximumCashbackLimit = false;

  bool switchIsMinimumPurchaseAmountPerTransaction = false;

  bool switchIsMaximumCashBackPerTransaction = false;

  bool switchIsIncludeVatOnCashback = false;

  bool switchIsApplyCashbackBalanceIfRedeeming = false;

  bool oneAdditionalCashbackPercentage = false;

  bool secondAdditionalCashbackPercentage = false;

  bool switchIsTimeRange = false;

  bool switchIsDateRange = false;

  DateTime? selectedEndDate;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - setToEndOfDay] action in Button widget.
  DateTime? selectedNewDate;
  // State field(s) for Switch widget.
  bool? switchValue1;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for firsPointAmountBalance widget.
  FocusNode? firsPointAmountBalanceFocusNode;
  TextEditingController? firsPointAmountBalanceTextController;
  String? Function(BuildContext, String?)?
      firsPointAmountBalanceTextControllerValidator;
  // State field(s) for firstPointsBalance widget.
  FocusNode? firstPointsBalanceFocusNode;
  TextEditingController? firstPointsBalanceTextController;
  String? Function(BuildContext, String?)?
      firstPointsBalanceTextControllerValidator;
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
  bool? switchValue2;
  DateTime? datePicked5;
  DateTime? datePicked6;
  // Stores action output result for [Custom Action - setToEndOfDay] action in ButtonDate widget.
  DateTime? selectedNewDatee;
  // State field(s) for Switch widget.
  bool? switchValue3;
  DateTime? datePicked7;
  DateTime? datePicked8;
  // State field(s) for secondPointAmountBalance widget.
  FocusNode? secondPointAmountBalanceFocusNode;
  TextEditingController? secondPointAmountBalanceTextController;
  String? Function(BuildContext, String?)?
      secondPointAmountBalanceTextControllerValidator;
  // State field(s) for secondPointsBalance widget.
  FocusNode? secondPointsBalanceFocusNode;
  TextEditingController? secondPointsBalanceTextController;
  String? Function(BuildContext, String?)?
      secondPointsBalanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firsPointAmountBalanceFocusNode?.dispose();
    firsPointAmountBalanceTextController?.dispose();

    firstPointsBalanceFocusNode?.dispose();
    firstPointsBalanceTextController?.dispose();

    secondPointAmountBalanceFocusNode?.dispose();
    secondPointAmountBalanceTextController?.dispose();

    secondPointsBalanceFocusNode?.dispose();
    secondPointsBalanceTextController?.dispose();
  }
}
