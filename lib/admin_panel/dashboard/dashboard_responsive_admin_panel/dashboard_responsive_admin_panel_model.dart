import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_responsive_admin_panel_widget.dart'
    show DashboardResponsiveAdminPanelWidget;
import 'package:flutter/material.dart';

class DashboardResponsiveAdminPanelModel
    extends FlutterFlowModel<DashboardResponsiveAdminPanelWidget> {
  ///  Local state fields for this page.

  List<MonthlyRevenueRecord> monthlyRevenueDocument = [];
  void addToMonthlyRevenueDocument(MonthlyRevenueRecord item) =>
      monthlyRevenueDocument.add(item);
  void removeFromMonthlyRevenueDocument(MonthlyRevenueRecord item) =>
      monthlyRevenueDocument.remove(item);
  void removeAtIndexFromMonthlyRevenueDocument(int index) =>
      monthlyRevenueDocument.removeAt(index);
  void insertAtIndexInMonthlyRevenueDocument(
          int index, MonthlyRevenueRecord item) =>
      monthlyRevenueDocument.insert(index, item);
  void updateMonthlyRevenueDocumentAtIndex(
          int index, Function(MonthlyRevenueRecord) updateFn) =>
      monthlyRevenueDocument[index] = updateFn(monthlyRevenueDocument[index]);

  double? currentUsers;

  double? newUsersThisMonth;

  double? ytdTransactionsSnapshot;

  double? monthTransactionsSnapshot;

  double? creditCount;

  double? debitCount;

  DateTime? lastUpdateDate;

  DateTime? lastUpdateTime;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in DashboardResponsiveAdminPanel widget.
  CompaniesRecord? companyData;
  // Stores action output result for [Firestore Query - Query a collection] action in DashboardResponsiveAdminPanel widget.
  List<MonthlyRevenueRecord>? monthlyRevenueDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
