// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

DateTime setToEndOfDay(DateTime date) {
  // Retorna la misma fecha con hora ajustada a 23:59:59
  return DateTime(date.year, date.month, date.day, 23, 59, 59);
}
