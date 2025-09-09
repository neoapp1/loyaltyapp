// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<GroupsRecord>> filterGroupsByUserMemberships(
  List<GroupUsersRecord>? userGroupMemberships,
  List<GroupsRecord>? companyGroupList,
) async {
  if (userGroupMemberships == null || companyGroupList == null) {
    return [];
  }

  // Obtener los groupIds del usuario
  final userGroupIds = userGroupMemberships
      .map((membership) => membership.groupId)
      .whereType<String>()
      .toSet();

  // Filtrar solo los grupos que están en userGroupIds
  final filteredGroups = companyGroupList.where((group) {
    return userGroupIds.contains(group.groupId);
  }).toList();

  return filteredGroups;
}
