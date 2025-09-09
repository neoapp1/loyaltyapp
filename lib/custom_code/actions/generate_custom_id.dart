// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; // Necesario para random

Future<String> generateCustomId() async {
  const length = 16; // Puedes ajustar la longitud aquí (más de 10)
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final rand = Random.secure(); // Usa un generador seguro

  final id = List.generate(length, (index) => chars[rand.nextInt(chars.length)])
      .join();
  return id;
}
