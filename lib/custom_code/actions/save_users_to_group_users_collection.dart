// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String> saveUsersToGroupUsersCollection(
  List<UserGroupsAddedStruct> selectedUsers,
) async {
  final usersJsonList = selectedUsers
      .map((user) => {
            'userId': user.userId,
            'name': user.name,
            'email': user.email,
          })
      .toList();

  return jsonEncode(usersJsonList);
}
