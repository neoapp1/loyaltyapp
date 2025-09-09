// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdditionalCashbackConfigurationsStruct extends FFFirebaseStruct {
  AdditionalCashbackConfigurationsStruct({
    bool? isActive,
    bool? isSpecificDay,
    DateTime? startDate,
    bool? isEndDate,
    DateTime? endDate,
    bool? isIncludeTimeRange,
    bool? isEndTime,
    int? percentageValue,
    bool? areDays,
    List<String>? days,
    int? rangeSelected,
    DateTime? startTime,
    DateTime? endTime,
    String? id,
    bool? hasSpecificDate,
    String? name,
    bool? applyToGroup,
    String? groupId,
    String? groupName,
    String? conditionType,
    double? minOrderAmount,
    double? maxOrderAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isActive = isActive,
        _isSpecificDay = isSpecificDay,
        _startDate = startDate,
        _isEndDate = isEndDate,
        _endDate = endDate,
        _isIncludeTimeRange = isIncludeTimeRange,
        _isEndTime = isEndTime,
        _percentageValue = percentageValue,
        _areDays = areDays,
        _days = days,
        _rangeSelected = rangeSelected,
        _startTime = startTime,
        _endTime = endTime,
        _id = id,
        _hasSpecificDate = hasSpecificDate,
        _name = name,
        _applyToGroup = applyToGroup,
        _groupId = groupId,
        _groupName = groupName,
        _conditionType = conditionType,
        _minOrderAmount = minOrderAmount,
        _maxOrderAmount = maxOrderAmount,
        super(firestoreUtilData);

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "isSpecificDay" field.
  bool? _isSpecificDay;
  bool get isSpecificDay => _isSpecificDay ?? false;
  set isSpecificDay(bool? val) => _isSpecificDay = val;

  bool hasIsSpecificDay() => _isSpecificDay != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "isEndDate" field.
  bool? _isEndDate;
  bool get isEndDate => _isEndDate ?? false;
  set isEndDate(bool? val) => _isEndDate = val;

  bool hasIsEndDate() => _isEndDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "isIncludeTimeRange" field.
  bool? _isIncludeTimeRange;
  bool get isIncludeTimeRange => _isIncludeTimeRange ?? false;
  set isIncludeTimeRange(bool? val) => _isIncludeTimeRange = val;

  bool hasIsIncludeTimeRange() => _isIncludeTimeRange != null;

  // "isEndTime" field.
  bool? _isEndTime;
  bool get isEndTime => _isEndTime ?? false;
  set isEndTime(bool? val) => _isEndTime = val;

  bool hasIsEndTime() => _isEndTime != null;

  // "percentageValue" field.
  int? _percentageValue;
  int get percentageValue => _percentageValue ?? 0;
  set percentageValue(int? val) => _percentageValue = val;

  void incrementPercentageValue(int amount) =>
      percentageValue = percentageValue + amount;

  bool hasPercentageValue() => _percentageValue != null;

  // "areDays" field.
  bool? _areDays;
  bool get areDays => _areDays ?? false;
  set areDays(bool? val) => _areDays = val;

  bool hasAreDays() => _areDays != null;

  // "days" field.
  List<String>? _days;
  List<String> get days => _days ?? const [];
  set days(List<String>? val) => _days = val;

  void updateDays(Function(List<String>) updateFn) {
    updateFn(_days ??= []);
  }

  bool hasDays() => _days != null;

  // "rangeSelected" field.
  int? _rangeSelected;
  int get rangeSelected => _rangeSelected ?? 0;
  set rangeSelected(int? val) => _rangeSelected = val;

  void incrementRangeSelected(int amount) =>
      rangeSelected = rangeSelected + amount;

  bool hasRangeSelected() => _rangeSelected != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "hasSpecificDate" field.
  bool? _hasSpecificDate;
  bool get hasSpecificDate => _hasSpecificDate ?? false;
  set hasSpecificDate(bool? val) => _hasSpecificDate = val;

  bool hasHasSpecificDate() => _hasSpecificDate != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "applyToGroup" field.
  bool? _applyToGroup;
  bool get applyToGroup => _applyToGroup ?? false;
  set applyToGroup(bool? val) => _applyToGroup = val;

  bool hasApplyToGroup() => _applyToGroup != null;

  // "groupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  set groupId(String? val) => _groupId = val;

  bool hasGroupId() => _groupId != null;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  set groupName(String? val) => _groupName = val;

  bool hasGroupName() => _groupName != null;

  // "conditionType" field.
  String? _conditionType;
  String get conditionType => _conditionType ?? '';
  set conditionType(String? val) => _conditionType = val;

  bool hasConditionType() => _conditionType != null;

  // "minOrderAmount" field.
  double? _minOrderAmount;
  double get minOrderAmount => _minOrderAmount ?? 0.0;
  set minOrderAmount(double? val) => _minOrderAmount = val;

  void incrementMinOrderAmount(double amount) =>
      minOrderAmount = minOrderAmount + amount;

  bool hasMinOrderAmount() => _minOrderAmount != null;

  // "maxOrderAmount" field.
  double? _maxOrderAmount;
  double get maxOrderAmount => _maxOrderAmount ?? 0.0;
  set maxOrderAmount(double? val) => _maxOrderAmount = val;

  void incrementMaxOrderAmount(double amount) =>
      maxOrderAmount = maxOrderAmount + amount;

  bool hasMaxOrderAmount() => _maxOrderAmount != null;

  static AdditionalCashbackConfigurationsStruct fromMap(
          Map<String, dynamic> data) =>
      AdditionalCashbackConfigurationsStruct(
        isActive: data['isActive'] as bool?,
        isSpecificDay: data['isSpecificDay'] as bool?,
        startDate: data['startDate'] as DateTime?,
        isEndDate: data['isEndDate'] as bool?,
        endDate: data['endDate'] as DateTime?,
        isIncludeTimeRange: data['isIncludeTimeRange'] as bool?,
        isEndTime: data['isEndTime'] as bool?,
        percentageValue: castToType<int>(data['percentageValue']),
        areDays: data['areDays'] as bool?,
        days: getDataList(data['days']),
        rangeSelected: castToType<int>(data['rangeSelected']),
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        id: data['ID'] as String?,
        hasSpecificDate: data['hasSpecificDate'] as bool?,
        name: data['name'] as String?,
        applyToGroup: data['applyToGroup'] as bool?,
        groupId: data['groupId'] as String?,
        groupName: data['groupName'] as String?,
        conditionType: data['conditionType'] as String?,
        minOrderAmount: castToType<double>(data['minOrderAmount']),
        maxOrderAmount: castToType<double>(data['maxOrderAmount']),
      );

  static AdditionalCashbackConfigurationsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdditionalCashbackConfigurationsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'isActive': _isActive,
        'isSpecificDay': _isSpecificDay,
        'startDate': _startDate,
        'isEndDate': _isEndDate,
        'endDate': _endDate,
        'isIncludeTimeRange': _isIncludeTimeRange,
        'isEndTime': _isEndTime,
        'percentageValue': _percentageValue,
        'areDays': _areDays,
        'days': _days,
        'rangeSelected': _rangeSelected,
        'startTime': _startTime,
        'endTime': _endTime,
        'ID': _id,
        'hasSpecificDate': _hasSpecificDate,
        'name': _name,
        'applyToGroup': _applyToGroup,
        'groupId': _groupId,
        'groupName': _groupName,
        'conditionType': _conditionType,
        'minOrderAmount': _minOrderAmount,
        'maxOrderAmount': _maxOrderAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'isSpecificDay': serializeParam(
          _isSpecificDay,
          ParamType.bool,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'isEndDate': serializeParam(
          _isEndDate,
          ParamType.bool,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'isIncludeTimeRange': serializeParam(
          _isIncludeTimeRange,
          ParamType.bool,
        ),
        'isEndTime': serializeParam(
          _isEndTime,
          ParamType.bool,
        ),
        'percentageValue': serializeParam(
          _percentageValue,
          ParamType.int,
        ),
        'areDays': serializeParam(
          _areDays,
          ParamType.bool,
        ),
        'days': serializeParam(
          _days,
          ParamType.String,
          isList: true,
        ),
        'rangeSelected': serializeParam(
          _rangeSelected,
          ParamType.int,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'hasSpecificDate': serializeParam(
          _hasSpecificDate,
          ParamType.bool,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'applyToGroup': serializeParam(
          _applyToGroup,
          ParamType.bool,
        ),
        'groupId': serializeParam(
          _groupId,
          ParamType.String,
        ),
        'groupName': serializeParam(
          _groupName,
          ParamType.String,
        ),
        'conditionType': serializeParam(
          _conditionType,
          ParamType.String,
        ),
        'minOrderAmount': serializeParam(
          _minOrderAmount,
          ParamType.double,
        ),
        'maxOrderAmount': serializeParam(
          _maxOrderAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static AdditionalCashbackConfigurationsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdditionalCashbackConfigurationsStruct(
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        isSpecificDay: deserializeParam(
          data['isSpecificDay'],
          ParamType.bool,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        isEndDate: deserializeParam(
          data['isEndDate'],
          ParamType.bool,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
        isIncludeTimeRange: deserializeParam(
          data['isIncludeTimeRange'],
          ParamType.bool,
          false,
        ),
        isEndTime: deserializeParam(
          data['isEndTime'],
          ParamType.bool,
          false,
        ),
        percentageValue: deserializeParam(
          data['percentageValue'],
          ParamType.int,
          false,
        ),
        areDays: deserializeParam(
          data['areDays'],
          ParamType.bool,
          false,
        ),
        days: deserializeParam<String>(
          data['days'],
          ParamType.String,
          true,
        ),
        rangeSelected: deserializeParam(
          data['rangeSelected'],
          ParamType.int,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        hasSpecificDate: deserializeParam(
          data['hasSpecificDate'],
          ParamType.bool,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        applyToGroup: deserializeParam(
          data['applyToGroup'],
          ParamType.bool,
          false,
        ),
        groupId: deserializeParam(
          data['groupId'],
          ParamType.String,
          false,
        ),
        groupName: deserializeParam(
          data['groupName'],
          ParamType.String,
          false,
        ),
        conditionType: deserializeParam(
          data['conditionType'],
          ParamType.String,
          false,
        ),
        minOrderAmount: deserializeParam(
          data['minOrderAmount'],
          ParamType.double,
          false,
        ),
        maxOrderAmount: deserializeParam(
          data['maxOrderAmount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AdditionalCashbackConfigurationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdditionalCashbackConfigurationsStruct &&
        isActive == other.isActive &&
        isSpecificDay == other.isSpecificDay &&
        startDate == other.startDate &&
        isEndDate == other.isEndDate &&
        endDate == other.endDate &&
        isIncludeTimeRange == other.isIncludeTimeRange &&
        isEndTime == other.isEndTime &&
        percentageValue == other.percentageValue &&
        areDays == other.areDays &&
        listEquality.equals(days, other.days) &&
        rangeSelected == other.rangeSelected &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        id == other.id &&
        hasSpecificDate == other.hasSpecificDate &&
        name == other.name &&
        applyToGroup == other.applyToGroup &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        conditionType == other.conditionType &&
        minOrderAmount == other.minOrderAmount &&
        maxOrderAmount == other.maxOrderAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isActive,
        isSpecificDay,
        startDate,
        isEndDate,
        endDate,
        isIncludeTimeRange,
        isEndTime,
        percentageValue,
        areDays,
        days,
        rangeSelected,
        startTime,
        endTime,
        id,
        hasSpecificDate,
        name,
        applyToGroup,
        groupId,
        groupName,
        conditionType,
        minOrderAmount,
        maxOrderAmount
      ]);
}

AdditionalCashbackConfigurationsStruct
    createAdditionalCashbackConfigurationsStruct({
  bool? isActive,
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
  String? id,
  bool? hasSpecificDate,
  String? name,
  bool? applyToGroup,
  String? groupId,
  String? groupName,
  String? conditionType,
  double? minOrderAmount,
  double? maxOrderAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        AdditionalCashbackConfigurationsStruct(
          isActive: isActive,
          isSpecificDay: isSpecificDay,
          startDate: startDate,
          isEndDate: isEndDate,
          endDate: endDate,
          isIncludeTimeRange: isIncludeTimeRange,
          isEndTime: isEndTime,
          percentageValue: percentageValue,
          areDays: areDays,
          rangeSelected: rangeSelected,
          startTime: startTime,
          endTime: endTime,
          id: id,
          hasSpecificDate: hasSpecificDate,
          name: name,
          applyToGroup: applyToGroup,
          groupId: groupId,
          groupName: groupName,
          conditionType: conditionType,
          minOrderAmount: minOrderAmount,
          maxOrderAmount: maxOrderAmount,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

AdditionalCashbackConfigurationsStruct?
    updateAdditionalCashbackConfigurationsStruct(
  AdditionalCashbackConfigurationsStruct? additionalCashbackConfigurations, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        additionalCashbackConfigurations
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addAdditionalCashbackConfigurationsStructData(
  Map<String, dynamic> firestoreData,
  AdditionalCashbackConfigurationsStruct? additionalCashbackConfigurations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (additionalCashbackConfigurations == null) {
    return;
  }
  if (additionalCashbackConfigurations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      additionalCashbackConfigurations.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final additionalCashbackConfigurationsData =
      getAdditionalCashbackConfigurationsFirestoreData(
          additionalCashbackConfigurations, forFieldValue);
  final nestedData = additionalCashbackConfigurationsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      additionalCashbackConfigurations.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdditionalCashbackConfigurationsFirestoreData(
  AdditionalCashbackConfigurationsStruct? additionalCashbackConfigurations, [
  bool forFieldValue = false,
]) {
  if (additionalCashbackConfigurations == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(additionalCashbackConfigurations.toMap());

  // Add any Firestore field values
  additionalCashbackConfigurations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdditionalCashbackConfigurationsListFirestoreData(
  List<AdditionalCashbackConfigurationsStruct>?
      additionalCashbackConfigurationss,
) =>
    additionalCashbackConfigurationss
        ?.map((e) => getAdditionalCashbackConfigurationsFirestoreData(e, true))
        .toList() ??
    [];
