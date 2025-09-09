// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_functions/cloud_functions.dart';

Future sendGenericWelcomeEmail(
  String? name,
  String? emailto,
  String? companyName,
  String? role,
) async {
  try {
    final callable =
        FirebaseFunctions.instance.httpsCallable('sendGenericWelcomeEmail');
    final result = await callable.call({
      'name': name,
      'emailto': emailto,
      'companyName': companyName,
      'role': role,
    });
    print('✅ Email sent successfully: ${result.data}');
  } catch (e) {
    print('❌ Error sending email: $e');
    throw Exception('Failed to send email: $e');
  }
}
