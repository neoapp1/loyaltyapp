// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> getGroupNamesByIds(List<String>? groupsSelected) async {
  // Si la lista es nula o vacía, retornamos lista vacía
  if (groupsSelected == null || groupsSelected.isEmpty) {
    return [];
  }

  try {
    // Hacemos el query a la colección cgroups
    final querySnapshot = await queryGroupsRecordOnce(
      queryBuilder: (cgroups) => cgroups.where(
        'groupId',
        whereIn: groupsSelected,
      ),
    );

    // Extraemos solo los nombres
    final groupNames = querySnapshot.map((group) => group.name).toList();

    return groupNames;
  } catch (e) {
    print('Error fetching group names: $e');
    return [];
  }
}
