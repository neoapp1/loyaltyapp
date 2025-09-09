import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cashback_users_widget.dart' show CashbackUsersWidget;
import 'package:flutter/material.dart';

class CashbackUsersModel extends FlutterFlowModel<CashbackUsersWidget> {
  ///  Local state fields for this page.

  String? companyName;

  int? currentPageIndex = 0;

  bool startLoop = true;

  String? cashbackBalance = '0';

  int? promoCount = 0;

  List<GroupUsersRecord> userGroupPromos = [];
  void addToUserGroupPromos(GroupUsersRecord item) => userGroupPromos.add(item);
  void removeFromUserGroupPromos(GroupUsersRecord item) =>
      userGroupPromos.remove(item);
  void removeAtIndexFromUserGroupPromos(int index) =>
      userGroupPromos.removeAt(index);
  void insertAtIndexInUserGroupPromos(int index, GroupUsersRecord item) =>
      userGroupPromos.insert(index, item);
  void updateUserGroupPromosAtIndex(
          int index, Function(GroupUsersRecord) updateFn) =>
      userGroupPromos[index] = updateFn(userGroupPromos[index]);

  List<PromosRecord> visiblePromos = [];
  void addToVisiblePromos(PromosRecord item) => visiblePromos.add(item);
  void removeFromVisiblePromos(PromosRecord item) => visiblePromos.remove(item);
  void removeAtIndexFromVisiblePromos(int index) =>
      visiblePromos.removeAt(index);
  void insertAtIndexInVisiblePromos(int index, PromosRecord item) =>
      visiblePromos.insert(index, item);
  void updateVisiblePromosAtIndex(int index, Function(PromosRecord) updateFn) =>
      visiblePromos[index] = updateFn(visiblePromos[index]);

  UserCompaniesRecord? companyUserData;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in cashbackUsers widget.
  CompaniesRecord? companyData;
  // Stores action output result for [Firestore Query - Query a collection] action in cashbackUsers widget.
  UserCompaniesRecord? userData;
  // Stores action output result for [Custom Action - formatDoubleToPositiveString] action in cashbackUsers widget.
  String? stringAmount;
  // Stores action output result for [Firestore Query - Query a collection] action in cashbackUsers widget.
  int? promoAvailables;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
