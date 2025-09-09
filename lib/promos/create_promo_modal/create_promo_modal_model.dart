import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_promo_modal_widget.dart' show CreatePromoModalWidget;
import 'package:flutter/material.dart';

class CreatePromoModalModel extends FlutterFlowModel<CreatePromoModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for SwitchGroup widget.
  bool? switchGroupValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for SwitchExpirationDate widget.
  bool? switchExpirationDateValue;
  DateTime? datePicked;
  // State field(s) for SwitchisActive widget.
  bool? switchisActiveValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  GroupsRecord? groupName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
