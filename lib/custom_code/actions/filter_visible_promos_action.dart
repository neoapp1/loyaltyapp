// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<PromosRecord>> filterVisiblePromosAction(
  List<PromosRecord>? allPromos,
  List<GroupUsersRecord>? userGroupDocs,
) async {
  if (allPromos == null || userGroupDocs == null) {
    return [];
  }

  // ✅ Tomamos los groupIds directamente de los documentos de GroupUsers
  final userGroupIds =
      userGroupDocs.map((g) => g.groupId).whereType<String>().toSet();

  final visiblePromos = allPromos.where((promo) {
    if (!(promo.isActive ?? false)) return false;

    if (!(promo.applyToGroup ?? false)) {
      return true;
    } else {
      return userGroupIds.contains(promo.groupId);
    }
  }).toList();

  return visiblePromos;
}
