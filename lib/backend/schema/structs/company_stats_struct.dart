// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStatsStruct extends FFFirebaseStruct {
  CompanyStatsStruct({
    DateTime? lastUpdated,
    int? currentUsers,
    int? transactionsYtd,
    int? newUsersThisMonth,
    int? newTransactionsThisMonth,
    double? creditsThisMonth,
    double? debitsThisMonth,
    List<MonthlyRevenueStruct>? monthlyRevenue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lastUpdated = lastUpdated,
        _currentUsers = currentUsers,
        _transactionsYtd = transactionsYtd,
        _newUsersThisMonth = newUsersThisMonth,
        _newTransactionsThisMonth = newTransactionsThisMonth,
        _creditsThisMonth = creditsThisMonth,
        _debitsThisMonth = debitsThisMonth,
        _monthlyRevenue = monthlyRevenue,
        super(firestoreUtilData);

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  set lastUpdated(DateTime? val) => _lastUpdated = val;

  bool hasLastUpdated() => _lastUpdated != null;

  // "current_users" field.
  int? _currentUsers;
  int get currentUsers => _currentUsers ?? 0;
  set currentUsers(int? val) => _currentUsers = val;

  void incrementCurrentUsers(int amount) =>
      currentUsers = currentUsers + amount;

  bool hasCurrentUsers() => _currentUsers != null;

  // "transactions_ytd" field.
  int? _transactionsYtd;
  int get transactionsYtd => _transactionsYtd ?? 0;
  set transactionsYtd(int? val) => _transactionsYtd = val;

  void incrementTransactionsYtd(int amount) =>
      transactionsYtd = transactionsYtd + amount;

  bool hasTransactionsYtd() => _transactionsYtd != null;

  // "new_users_this_month" field.
  int? _newUsersThisMonth;
  int get newUsersThisMonth => _newUsersThisMonth ?? 0;
  set newUsersThisMonth(int? val) => _newUsersThisMonth = val;

  void incrementNewUsersThisMonth(int amount) =>
      newUsersThisMonth = newUsersThisMonth + amount;

  bool hasNewUsersThisMonth() => _newUsersThisMonth != null;

  // "new_transactions_this_month" field.
  int? _newTransactionsThisMonth;
  int get newTransactionsThisMonth => _newTransactionsThisMonth ?? 0;
  set newTransactionsThisMonth(int? val) => _newTransactionsThisMonth = val;

  void incrementNewTransactionsThisMonth(int amount) =>
      newTransactionsThisMonth = newTransactionsThisMonth + amount;

  bool hasNewTransactionsThisMonth() => _newTransactionsThisMonth != null;

  // "credits_this_month" field.
  double? _creditsThisMonth;
  double get creditsThisMonth => _creditsThisMonth ?? 0.0;
  set creditsThisMonth(double? val) => _creditsThisMonth = val;

  void incrementCreditsThisMonth(double amount) =>
      creditsThisMonth = creditsThisMonth + amount;

  bool hasCreditsThisMonth() => _creditsThisMonth != null;

  // "debits_this_month" field.
  double? _debitsThisMonth;
  double get debitsThisMonth => _debitsThisMonth ?? 0.0;
  set debitsThisMonth(double? val) => _debitsThisMonth = val;

  void incrementDebitsThisMonth(double amount) =>
      debitsThisMonth = debitsThisMonth + amount;

  bool hasDebitsThisMonth() => _debitsThisMonth != null;

  // "monthlyRevenue" field.
  List<MonthlyRevenueStruct>? _monthlyRevenue;
  List<MonthlyRevenueStruct> get monthlyRevenue => _monthlyRevenue ?? const [];
  set monthlyRevenue(List<MonthlyRevenueStruct>? val) => _monthlyRevenue = val;

  void updateMonthlyRevenue(Function(List<MonthlyRevenueStruct>) updateFn) {
    updateFn(_monthlyRevenue ??= []);
  }

  bool hasMonthlyRevenue() => _monthlyRevenue != null;

  static CompanyStatsStruct fromMap(Map<String, dynamic> data) =>
      CompanyStatsStruct(
        lastUpdated: data['last_updated'] as DateTime?,
        currentUsers: castToType<int>(data['current_users']),
        transactionsYtd: castToType<int>(data['transactions_ytd']),
        newUsersThisMonth: castToType<int>(data['new_users_this_month']),
        newTransactionsThisMonth:
            castToType<int>(data['new_transactions_this_month']),
        creditsThisMonth: castToType<double>(data['credits_this_month']),
        debitsThisMonth: castToType<double>(data['debits_this_month']),
        monthlyRevenue: getStructList(
          data['monthlyRevenue'],
          MonthlyRevenueStruct.fromMap,
        ),
      );

  static CompanyStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'last_updated': _lastUpdated,
        'current_users': _currentUsers,
        'transactions_ytd': _transactionsYtd,
        'new_users_this_month': _newUsersThisMonth,
        'new_transactions_this_month': _newTransactionsThisMonth,
        'credits_this_month': _creditsThisMonth,
        'debits_this_month': _debitsThisMonth,
        'monthlyRevenue': _monthlyRevenue?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'last_updated': serializeParam(
          _lastUpdated,
          ParamType.DateTime,
        ),
        'current_users': serializeParam(
          _currentUsers,
          ParamType.int,
        ),
        'transactions_ytd': serializeParam(
          _transactionsYtd,
          ParamType.int,
        ),
        'new_users_this_month': serializeParam(
          _newUsersThisMonth,
          ParamType.int,
        ),
        'new_transactions_this_month': serializeParam(
          _newTransactionsThisMonth,
          ParamType.int,
        ),
        'credits_this_month': serializeParam(
          _creditsThisMonth,
          ParamType.double,
        ),
        'debits_this_month': serializeParam(
          _debitsThisMonth,
          ParamType.double,
        ),
        'monthlyRevenue': serializeParam(
          _monthlyRevenue,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CompanyStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStatsStruct(
        lastUpdated: deserializeParam(
          data['last_updated'],
          ParamType.DateTime,
          false,
        ),
        currentUsers: deserializeParam(
          data['current_users'],
          ParamType.int,
          false,
        ),
        transactionsYtd: deserializeParam(
          data['transactions_ytd'],
          ParamType.int,
          false,
        ),
        newUsersThisMonth: deserializeParam(
          data['new_users_this_month'],
          ParamType.int,
          false,
        ),
        newTransactionsThisMonth: deserializeParam(
          data['new_transactions_this_month'],
          ParamType.int,
          false,
        ),
        creditsThisMonth: deserializeParam(
          data['credits_this_month'],
          ParamType.double,
          false,
        ),
        debitsThisMonth: deserializeParam(
          data['debits_this_month'],
          ParamType.double,
          false,
        ),
        monthlyRevenue: deserializeStructParam<MonthlyRevenueStruct>(
          data['monthlyRevenue'],
          ParamType.DataStruct,
          true,
          structBuilder: MonthlyRevenueStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompanyStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStatsStruct &&
        lastUpdated == other.lastUpdated &&
        currentUsers == other.currentUsers &&
        transactionsYtd == other.transactionsYtd &&
        newUsersThisMonth == other.newUsersThisMonth &&
        newTransactionsThisMonth == other.newTransactionsThisMonth &&
        creditsThisMonth == other.creditsThisMonth &&
        debitsThisMonth == other.debitsThisMonth &&
        listEquality.equals(monthlyRevenue, other.monthlyRevenue);
  }

  @override
  int get hashCode => const ListEquality().hash([
        lastUpdated,
        currentUsers,
        transactionsYtd,
        newUsersThisMonth,
        newTransactionsThisMonth,
        creditsThisMonth,
        debitsThisMonth,
        monthlyRevenue
      ]);
}

CompanyStatsStruct createCompanyStatsStruct({
  DateTime? lastUpdated,
  int? currentUsers,
  int? transactionsYtd,
  int? newUsersThisMonth,
  int? newTransactionsThisMonth,
  double? creditsThisMonth,
  double? debitsThisMonth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyStatsStruct(
      lastUpdated: lastUpdated,
      currentUsers: currentUsers,
      transactionsYtd: transactionsYtd,
      newUsersThisMonth: newUsersThisMonth,
      newTransactionsThisMonth: newTransactionsThisMonth,
      creditsThisMonth: creditsThisMonth,
      debitsThisMonth: debitsThisMonth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyStatsStruct? updateCompanyStatsStruct(
  CompanyStatsStruct? companyStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyStatsStructData(
  Map<String, dynamic> firestoreData,
  CompanyStatsStruct? companyStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyStats == null) {
    return;
  }
  if (companyStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyStatsData =
      getCompanyStatsFirestoreData(companyStats, forFieldValue);
  final nestedData =
      companyStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companyStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyStatsFirestoreData(
  CompanyStatsStruct? companyStats, [
  bool forFieldValue = false,
]) {
  if (companyStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyStats.toMap());

  // Add any Firestore field values
  companyStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyStatsListFirestoreData(
  List<CompanyStatsStruct>? companyStatss,
) =>
    companyStatss?.map((e) => getCompanyStatsFirestoreData(e, true)).toList() ??
    [];
