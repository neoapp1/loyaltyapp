// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> adjustBalanceOnTransactionDelete(
  double currentBalance,
  String previousBalanceStr,
  String newBalanceStr,
) async {
  double adjustedBalance = currentBalance;
  double prevBalance = double.tryParse(previousBalanceStr) ?? 0.0;
  double newBal = double.tryParse(newBalanceStr) ?? 0.0;

  double diff = newBal - prevBalance;

  if (diff > 0) {
    adjustedBalance = currentBalance - diff;
  } else if (diff < 0) {
    adjustedBalance = currentBalance - diff;
  }

  return adjustedBalance;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
