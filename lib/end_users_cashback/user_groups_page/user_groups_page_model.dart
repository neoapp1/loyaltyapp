import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_groups_page_widget.dart' show UserGroupsPageWidget;
import 'package:flutter/material.dart';

class UserGroupsPageModel extends FlutterFlowModel<UserGroupsPageWidget> {
  ///  Local state fields for this page.

  List<GroupsRecord> groupList = [];
  void addToGroupList(GroupsRecord item) => groupList.add(item);
  void removeFromGroupList(GroupsRecord item) => groupList.remove(item);
  void removeAtIndexFromGroupList(int index) => groupList.removeAt(index);
  void insertAtIndexInGroupList(int index, GroupsRecord item) =>
      groupList.insert(index, item);
  void updateGroupListAtIndex(int index, Function(GroupsRecord) updateFn) =>
      groupList[index] = updateFn(groupList[index]);

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in userGroupsPage widget.
  List<GroupUsersRecord>? userGroupMemberships;
  // Stores action output result for [Firestore Query - Query a collection] action in userGroupsPage widget.
  List<GroupsRecord>? currentGroups;
  // Stores action output result for [Custom Action - filterGroupsByUserMemberships] action in userGroupsPage widget.
  List<GroupsRecord>? groupsList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
