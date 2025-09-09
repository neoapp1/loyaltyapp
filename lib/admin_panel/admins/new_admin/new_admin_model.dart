import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_admin_widget.dart' show NewAdminWidget;
import 'package:flutter/material.dart';

class NewAdminModel extends FlutterFlowModel<NewAdminWidget> {
  ///  Local state fields for this page.

  bool newUserOption = true;

  bool registeredUser = false;

  String? searchTerm1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ApprovedEmailsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
