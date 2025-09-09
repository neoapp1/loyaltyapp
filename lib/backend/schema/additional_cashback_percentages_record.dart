import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdditionalCashbackPercentagesRecord extends FirestoreRecord {
  AdditionalCashbackPercentagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "isSpecificDay" field.
  bool? _isSpecificDay;
  bool get isSpecificDay => _isSpecificDay ?? false;
  bool hasIsSpecificDay() => _isSpecificDay != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "isEndDate" field.
  bool? _isEndDate;
  bool get isEndDate => _isEndDate ?? false;
  bool hasIsEndDate() => _isEndDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "isIncludeTimeRange" field.
  bool? _isIncludeTimeRange;
  bool get isIncludeTimeRange => _isIncludeTimeRange ?? false;
  bool hasIsIncludeTimeRange() => _isIncludeTimeRange != null;

  // "isEndTime" field.
  bool? _isEndTime;
  bool get isEndTime => _isEndTime ?? false;
  bool hasIsEndTime() => _isEndTime != null;

  // "percentageValue" field.
  int? _percentageValue;
  int get percentageValue => _percentageValue ?? 0;
  bool hasPercentageValue() => _percentageValue != null;

  // "areDays" field.
  bool? _areDays;
  bool get areDays => _areDays ?? false;
  bool hasAreDays() => _areDays != null;

  // "days" field.
  List<String>? _days;
  List<String> get days => _days ?? const [];
  bool hasDays() => _days != null;

  // "rangeSelected" field.
  int? _rangeSelected;
  int get rangeSelected => _rangeSelected ?? 0;
  bool hasRangeSelected() => _rangeSelected != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "hasSpecificDate" field.
  bool? _hasSpecificDate;
  bool get hasSpecificDate => _hasSpecificDate ?? false;
  bool hasHasSpecificDate() => _hasSpecificDate != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "applyToGroup" field.
  bool? _applyToGroup;
  bool get applyToGroup => _applyToGroup ?? false;
  bool hasApplyToGroup() => _applyToGroup != null;

  // "groupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "conditionType" field.
  String? _conditionType;
  String get conditionType => _conditionType ?? '';
  bool hasConditionType() => _conditionType != null;

  // "minOrderAmount" field.
  double? _minOrderAmount;
  double get minOrderAmount => _minOrderAmount ?? 0.0;
  bool hasMinOrderAmount() => _minOrderAmount != null;

  // "maxOrderAmount" field.
  double? _maxOrderAmount;
  double get maxOrderAmount => _maxOrderAmount ?? 0.0;
  bool hasMaxOrderAmount() => _maxOrderAmount != null;

  // "additionalCashbackType" field.
  String? _additionalCashbackType;
  String get additionalCashbackType => _additionalCashbackType ?? '';
  bool hasAdditionalCashbackType() => _additionalCashbackType != null;

  // "groupsSelected" field.
  List<String>? _groupsSelected;
  List<String> get groupsSelected => _groupsSelected ?? const [];
  bool hasGroupsSelected() => _groupsSelected != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _isActive = snapshotData['isActive'] as bool?;
    _id = snapshotData['Id'] as String?;
    _isSpecificDay = snapshotData['isSpecificDay'] as bool?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _isEndDate = snapshotData['isEndDate'] as bool?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _isIncludeTimeRange = snapshotData['isIncludeTimeRange'] as bool?;
    _isEndTime = snapshotData['isEndTime'] as bool?;
    _percentageValue = castToType<int>(snapshotData['percentageValue']);
    _areDays = snapshotData['areDays'] as bool?;
    _days = getDataList(snapshotData['days']);
    _rangeSelected = castToType<int>(snapshotData['rangeSelected']);
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _hasSpecificDate = snapshotData['hasSpecificDate'] as bool?;
    _name = snapshotData['name'] as String?;
    _applyToGroup = snapshotData['applyToGroup'] as bool?;
    _groupId = snapshotData['groupId'] as String?;
    _groupName = snapshotData['groupName'] as String?;
    _conditionType = snapshotData['conditionType'] as String?;
    _minOrderAmount = castToType<double>(snapshotData['minOrderAmount']);
    _maxOrderAmount = castToType<double>(snapshotData['maxOrderAmount']);
    _additionalCashbackType = snapshotData['additionalCashbackType'] as String?;
    _groupsSelected = getDataList(snapshotData['groupsSelected']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('additionalCashbackPercentages')
          : FirebaseFirestore.instance
              .collectionGroup('additionalCashbackPercentages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('additionalCashbackPercentages').doc(id);

  static Stream<AdditionalCashbackPercentagesRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => AdditionalCashbackPercentagesRecord.fromSnapshot(s));

  static Future<AdditionalCashbackPercentagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => AdditionalCashbackPercentagesRecord.fromSnapshot(s));

  static AdditionalCashbackPercentagesRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      AdditionalCashbackPercentagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdditionalCashbackPercentagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdditionalCashbackPercentagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdditionalCashbackPercentagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdditionalCashbackPercentagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdditionalCashbackPercentagesRecordData({
  bool? isActive,
  String? id,
  bool? isSpecificDay,
  DateTime? startDate,
  bool? isEndDate,
  DateTime? endDate,
  bool? isIncludeTimeRange,
  bool? isEndTime,
  int? percentageValue,
  bool? areDays,
  int? rangeSelected,
  DateTime? startTime,
  DateTime? endTime,
  bool? hasSpecificDate,
  String? name,
  bool? applyToGroup,
  String? groupId,
  String? groupName,
  String? conditionType,
  double? minOrderAmount,
  double? maxOrderAmount,
  String? additionalCashbackType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isActive': isActive,
      'Id': id,
      'isSpecificDay': isSpecificDay,
      'startDate': startDate,
      'isEndDate': isEndDate,
      'endDate': endDate,
      'isIncludeTimeRange': isIncludeTimeRange,
      'isEndTime': isEndTime,
      'percentageValue': percentageValue,
      'areDays': areDays,
      'rangeSelected': rangeSelected,
      'startTime': startTime,
      'endTime': endTime,
      'hasSpecificDate': hasSpecificDate,
      'name': name,
      'applyToGroup': applyToGroup,
      'groupId': groupId,
      'groupName': groupName,
      'conditionType': conditionType,
      'minOrderAmount': minOrderAmount,
      'maxOrderAmount': maxOrderAmount,
      'additionalCashbackType': additionalCashbackType,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdditionalCashbackPercentagesRecordDocumentEquality
    implements Equality<AdditionalCashbackPercentagesRecord> {
  const AdditionalCashbackPercentagesRecordDocumentEquality();

  @override
  bool equals(AdditionalCashbackPercentagesRecord? e1,
      AdditionalCashbackPercentagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.isActive == e2?.isActive &&
        e1?.id == e2?.id &&
        e1?.isSpecificDay == e2?.isSpecificDay &&
        e1?.startDate == e2?.startDate &&
        e1?.isEndDate == e2?.isEndDate &&
        e1?.endDate == e2?.endDate &&
        e1?.isIncludeTimeRange == e2?.isIncludeTimeRange &&
        e1?.isEndTime == e2?.isEndTime &&
        e1?.percentageValue == e2?.percentageValue &&
        e1?.areDays == e2?.areDays &&
        listEquality.equals(e1?.days, e2?.days) &&
        e1?.rangeSelected == e2?.rangeSelected &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.hasSpecificDate == e2?.hasSpecificDate &&
        e1?.name == e2?.name &&
        e1?.applyToGroup == e2?.applyToGroup &&
        e1?.groupId == e2?.groupId &&
        e1?.groupName == e2?.groupName &&
        e1?.conditionType == e2?.conditionType &&
        e1?.minOrderAmount == e2?.minOrderAmount &&
        e1?.maxOrderAmount == e2?.maxOrderAmount &&
        e1?.additionalCashbackType == e2?.additionalCashbackType &&
        listEquality.equals(e1?.groupsSelected, e2?.groupsSelected);
  }

  @override
  int hash(AdditionalCashbackPercentagesRecord? e) =>
      const ListEquality().hash([
        e?.isActive,
        e?.id,
        e?.isSpecificDay,
        e?.startDate,
        e?.isEndDate,
        e?.endDate,
        e?.isIncludeTimeRange,
        e?.isEndTime,
        e?.percentageValue,
        e?.areDays,
        e?.days,
        e?.rangeSelected,
        e?.startTime,
        e?.endTime,
        e?.hasSpecificDate,
        e?.name,
        e?.applyToGroup,
        e?.groupId,
        e?.groupName,
        e?.conditionType,
        e?.minOrderAmount,
        e?.maxOrderAmount,
        e?.additionalCashbackType,
        e?.groupsSelected
      ]);

  @override
  bool isValidKey(Object? o) => o is AdditionalCashbackPercentagesRecord;
}
