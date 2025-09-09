import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'settings_user_widget.dart' show SettingsUserWidget;
import 'package:flutter/material.dart';

class SettingsUserModel extends FlutterFlowModel<SettingsUserWidget> {
  ///  Local state fields for this page.

  String? tempImage;

  bool changePhoto = false;

  bool isPushNotificationActive = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataToLocalStorage = false;
  FFUploadedFile uploadedLocalFile_uploadDataToLocalStorage =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for contactCountryCode widget.
  String? contactCountryCodeValue;
  FormFieldController<String>? contactCountryCodeValueController;
  // State field(s) for contactTelephoneNumber widget.
  FocusNode? contactTelephoneNumberFocusNode;
  TextEditingController? contactTelephoneNumberTextController;
  String? Function(BuildContext, String?)?
      contactTelephoneNumberTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  bool isDataUploading_uploadDataFirestoreImage = false;
  FFUploadedFile uploadedLocalFile_uploadDataFirestoreImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFirestoreImage = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    contactTelephoneNumberFocusNode?.dispose();
    contactTelephoneNumberTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
