// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MonthlyRevenueStruct extends FFFirebaseStruct {
  MonthlyRevenueStruct({
    String? month,
    double? revenue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _month = month,
        _revenue = revenue,
        super(firestoreUtilData);

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "revenue" field.
  double? _revenue;
  double get revenue => _revenue ?? 0.0;
  set revenue(double? val) => _revenue = val;

  void incrementRevenue(double amount) => revenue = revenue + amount;

  bool hasRevenue() => _revenue != null;

  static MonthlyRevenueStruct fromMap(Map<String, dynamic> data) =>
      MonthlyRevenueStruct(
        month: data['month'] as String?,
        revenue: castToType<double>(data['revenue']),
      );

  static MonthlyRevenueStruct? maybeFromMap(dynamic data) => data is Map
      ? MonthlyRevenueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'month': _month,
        'revenue': _revenue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'revenue': serializeParam(
          _revenue,
          ParamType.double,
        ),
      }.withoutNulls;

  static MonthlyRevenueStruct fromSerializableMap(Map<String, dynamic> data) =>
      MonthlyRevenueStruct(
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        revenue: deserializeParam(
          data['revenue'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MonthlyRevenueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MonthlyRevenueStruct &&
        month == other.month &&
        revenue == other.revenue;
  }

  @override
  int get hashCode => const ListEquality().hash([month, revenue]);
}

MonthlyRevenueStruct createMonthlyRevenueStruct({
  String? month,
  double? revenue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MonthlyRevenueStruct(
      month: month,
      revenue: revenue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MonthlyRevenueStruct? updateMonthlyRevenueStruct(
  MonthlyRevenueStruct? monthlyRevenue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    monthlyRevenue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMonthlyRevenueStructData(
  Map<String, dynamic> firestoreData,
  MonthlyRevenueStruct? monthlyRevenue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (monthlyRevenue == null) {
    return;
  }
  if (monthlyRevenue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && monthlyRevenue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final monthlyRevenueData =
      getMonthlyRevenueFirestoreData(monthlyRevenue, forFieldValue);
  final nestedData =
      monthlyRevenueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = monthlyRevenue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMonthlyRevenueFirestoreData(
  MonthlyRevenueStruct? monthlyRevenue, [
  bool forFieldValue = false,
]) {
  if (monthlyRevenue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(monthlyRevenue.toMap());

  // Add any Firestore field values
  monthlyRevenue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMonthlyRevenueListFirestoreData(
  List<MonthlyRevenueStruct>? monthlyRevenues,
) =>
    monthlyRevenues
        ?.map((e) => getMonthlyRevenueFirestoreData(e, true))
        .toList() ??
    [];
