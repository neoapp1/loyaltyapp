import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_group_modal_widget.dart' show CreateGroupModalWidget;
import 'package:flutter/material.dart';

class CreateGroupModalModel extends FlutterFlowModel<CreateGroupModalWidget> {
  ///  Local state fields for this component.

  String? groupId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GroupsRecord? groupData;

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
