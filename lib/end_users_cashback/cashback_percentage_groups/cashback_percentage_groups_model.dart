import '/flutter_flow/flutter_flow_util.dart';
import 'cashback_percentage_groups_widget.dart'
    show CashbackPercentageGroupsWidget;
import 'package:flutter/material.dart';

class CashbackPercentageGroupsModel
    extends FlutterFlowModel<CashbackPercentageGroupsWidget> {
  ///  Local state fields for this component.

  List<String> eligibleGroupNames = [];
  void addToEligibleGroupNames(String item) => eligibleGroupNames.add(item);
  void removeFromEligibleGroupNames(String item) =>
      eligibleGroupNames.remove(item);
  void removeAtIndexFromEligibleGroupNames(int index) =>
      eligibleGroupNames.removeAt(index);
  void insertAtIndexInEligibleGroupNames(int index, String item) =>
      eligibleGroupNames.insert(index, item);
  void updateEligibleGroupNamesAtIndex(int index, Function(String) updateFn) =>
      eligibleGroupNames[index] = updateFn(eligibleGroupNames[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getGroupNamesByIds] action in cashbackPercentageGroups widget.
  List<String>? groupsName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
