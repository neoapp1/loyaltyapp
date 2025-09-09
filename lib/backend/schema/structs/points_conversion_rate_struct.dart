// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PointsConversionRateStruct extends FFFirebaseStruct {
  PointsConversionRateStruct({
    int? points,
    double? amount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _points = points,
        _amount = amount,
        super(firestoreUtilData);

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;

  void incrementPoints(int amount) => points = points + amount;

  bool hasPoints() => _points != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  static PointsConversionRateStruct fromMap(Map<String, dynamic> data) =>
      PointsConversionRateStruct(
        points: castToType<int>(data['points']),
        amount: castToType<double>(data['amount']),
      );

  static PointsConversionRateStruct? maybeFromMap(dynamic data) => data is Map
      ? PointsConversionRateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'points': _points,
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
      }.withoutNulls;

  static PointsConversionRateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PointsConversionRateStruct(
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PointsConversionRateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PointsConversionRateStruct &&
        points == other.points &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash([points, amount]);
}

PointsConversionRateStruct createPointsConversionRateStruct({
  int? points,
  double? amount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PointsConversionRateStruct(
      points: points,
      amount: amount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PointsConversionRateStruct? updatePointsConversionRateStruct(
  PointsConversionRateStruct? pointsConversionRate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pointsConversionRate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPointsConversionRateStructData(
  Map<String, dynamic> firestoreData,
  PointsConversionRateStruct? pointsConversionRate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pointsConversionRate == null) {
    return;
  }
  if (pointsConversionRate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pointsConversionRate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pointsConversionRateData =
      getPointsConversionRateFirestoreData(pointsConversionRate, forFieldValue);
  final nestedData =
      pointsConversionRateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      pointsConversionRate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPointsConversionRateFirestoreData(
  PointsConversionRateStruct? pointsConversionRate, [
  bool forFieldValue = false,
]) {
  if (pointsConversionRate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pointsConversionRate.toMap());

  // Add any Firestore field values
  pointsConversionRate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPointsConversionRateListFirestoreData(
  List<PointsConversionRateStruct>? pointsConversionRates,
) =>
    pointsConversionRates
        ?.map((e) => getPointsConversionRateFirestoreData(e, true))
        .toList() ??
    [];
