import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'verification_code_widget.dart' show VerificationCodeWidget;
import 'package:flutter/material.dart';

class VerificationCodeModel extends FlutterFlowModel<VerificationCodeWidget> {
  ///  Local state fields for this page.

  String? verificationCode;

  bool showVerifyButton = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Verification code Email)] action in verificationCode widget.
  ApiCallResponse? apiResultejk;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 600000;
  int timerMilliseconds = 600000;
  String timerValue = StopWatchTimer.getDisplayTime(
    600000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (Verification code Email)] action in Text widget.
  ApiCallResponse? apiResultejkk;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
  }
}
