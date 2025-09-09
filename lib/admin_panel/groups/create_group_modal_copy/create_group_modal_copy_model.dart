import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_group_modal_copy_widget.dart' show CreateGroupModalCopyWidget;
import 'package:flutter/material.dart';

class CreateGroupModalCopyModel
    extends FlutterFlowModel<CreateGroupModalCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in createGroupModalCopy widget.
  List<UserCompaniesRecord>? usersData;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController3Validator;
  List<UserCompaniesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
  }
}
