import '/flutter_flow/flutter_flow_util.dart';
import 'link_new_reader_widget.dart' show LinkNewReaderWidget;
import 'package:flutter/material.dart';

class LinkNewReaderModel extends FlutterFlowModel<LinkNewReaderWidget> {
  ///  Local state fields for this component.

  bool showCode = false;

  String? token;

  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
