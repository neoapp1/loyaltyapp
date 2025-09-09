// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> adjustBalanceOnMemoDelete(
  double currentBalance,
  String memoType,
  double amount,
) async {
  double newBalance = currentBalance;

  if (memoType == 'credit') {
    // Si el memo era un crédito, lo eliminamos restando lo que se había sumado antes
    newBalance = currentBalance - amount;
  } else if (memoType == 'debit') {
    // Si el memo era un débito, lo eliminamos sumando lo que se había restado antes
    newBalance = currentBalance + amount;
  }

  return newBalance;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
