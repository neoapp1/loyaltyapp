// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdditionalPointsConversionConfigurationsStruct extends FFFirebaseStruct {
  AdditionalPointsConversionConfigurationsStruct({
    bool? isActive,
    bool? isSpecificDay,
    DateTime? startDate,
    bool? isEndDate,
    DateTime? endDate,
    bool? isIncludeTimeRange,
    bool? isEndTime,
    bool? areDays,
    List<String>? days,
    int? rangeSelected,
    String? id,
    DateTime? startTime,
    DateTime? endTime,
    double? defaultPointsConvertion,
    double? defaultAmountConvertion,
    double? additionalPointsConvertion,
    double? additionalAmountConvertion,
    bool? hasSpecificDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isActive = isActive,
        _isSpecificDay = isSpecificDay,
        _startDate = startDate,
        _isEndDate = isEndDate,
        _endDate = endDate,
        _isIncludeTimeRange = isIncludeTimeRange,
        _isEndTime = isEndTime,
        _areDays = areDays,
        _days = days,
        _rangeSelected = rangeSelected,
        _id = id,
        _startTime = startTime,
        _endTime = endTime,
        _defaultPointsConvertion = defaultPointsConvertion,
        _defaultAmountConvertion = defaultAmountConvertion,
        _additionalPointsConvertion = additionalPointsConvertion,
        _additionalAmountConvertion = additionalAmountConvertion,
        _hasSpecificDate = hasSpecificDate,
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

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "defaultPointsConvertion" field.
  double? _defaultPointsConvertion;
  double get defaultPointsConvertion => _defaultPointsConvertion ?? 0.0;
  set defaultPointsConvertion(double? val) => _defaultPointsConvertion = val;

  void incrementDefaultPointsConvertion(double amount) =>
      defaultPointsConvertion = defaultPointsConvertion + amount;

  bool hasDefaultPointsConvertion() => _defaultPointsConvertion != null;

  // "defaultAmountConvertion" field.
  double? _defaultAmountConvertion;
  double get defaultAmountConvertion => _defaultAmountConvertion ?? 0.0;
  set defaultAmountConvertion(double? val) => _defaultAmountConvertion = val;

  void incrementDefaultAmountConvertion(double amount) =>
      defaultAmountConvertion = defaultAmountConvertion + amount;

  bool hasDefaultAmountConvertion() => _defaultAmountConvertion != null;

  // "additionalPointsConvertion" field.
  double? _additionalPointsConvertion;
  double get additionalPointsConvertion => _additionalPointsConvertion ?? 0.0;
  set additionalPointsConvertion(double? val) =>
      _additionalPointsConvertion = val;

  void incrementAdditionalPointsConvertion(double amount) =>
      additionalPointsConvertion = additionalPointsConvertion + amount;

  bool hasAdditionalPointsConvertion() => _additionalPointsConvertion != null;

  // "additionalAmountConvertion" field.
  double? _additionalAmountConvertion;
  double get additionalAmountConvertion => _additionalAmountConvertion ?? 0.0;
  set additionalAmountConvertion(double? val) =>
      _additionalAmountConvertion = val;

  void incrementAdditionalAmountConvertion(double amount) =>
      additionalAmountConvertion = additionalAmountConvertion + amount;

  bool hasAdditionalAmountConvertion() => _additionalAmountConvertion != null;

  // "hasSpecificDate" field.
  bool? _hasSpecificDate;
  bool get hasSpecificDate => _hasSpecificDate ?? false;
  set hasSpecificDate(bool? val) => _hasSpecificDate = val;

  bool hasHasSpecificDate() => _hasSpecificDate != null;

  static AdditionalPointsConversionConfigurationsStruct fromMap(
          Map<String, dynamic> data) =>
      AdditionalPointsConversionConfigurationsStruct(
        isActive: data['isActive'] as bool?,
        isSpecificDay: data['isSpecificDay'] as bool?,
        startDate: data['startDate'] as DateTime?,
        isEndDate: data['isEndDate'] as bool?,
        endDate: data['endDate'] as DateTime?,
        isIncludeTimeRange: data['isIncludeTimeRange'] as bool?,
        isEndTime: data['isEndTime'] as bool?,
        areDays: data['areDays'] as bool?,
        days: getDataList(data['days']),
        rangeSelected: castToType<int>(data['rangeSelected']),
        id: data['Id'] as String?,
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        defaultPointsConvertion:
            castToType<double>(data['defaultPointsConvertion']),
        defaultAmountConvertion:
            castToType<double>(data['defaultAmountConvertion']),
        additionalPointsConvertion:
            castToType<double>(data['additionalPointsConvertion']),
        additionalAmountConvertion:
            castToType<double>(data['additionalAmountConvertion']),
        hasSpecificDate: data['hasSpecificDate'] as bool?,
      );

  static AdditionalPointsConversionConfigurationsStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? AdditionalPointsConversionConfigurationsStruct.fromMap(
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
        'areDays': _areDays,
        'days': _days,
        'rangeSelected': _rangeSelected,
        'Id': _id,
        'startTime': _startTime,
        'endTime': _endTime,
        'defaultPointsConvertion': _defaultPointsConvertion,
        'defaultAmountConvertion': _defaultAmountConvertion,
        'additionalPointsConvertion': _additionalPointsConvertion,
        'additionalAmountConvertion': _additionalAmountConvertion,
        'hasSpecificDate': _hasSpecificDate,
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
        'Id': serializeParam(
          _id,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'defaultPointsConvertion': serializeParam(
          _defaultPointsConvertion,
          ParamType.double,
        ),
        'defaultAmountConvertion': serializeParam(
          _defaultAmountConvertion,
          ParamType.double,
        ),
        'additionalPointsConvertion': serializeParam(
          _additionalPointsConvertion,
          ParamType.double,
        ),
        'additionalAmountConvertion': serializeParam(
          _additionalAmountConvertion,
          ParamType.double,
        ),
        'hasSpecificDate': serializeParam(
          _hasSpecificDate,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AdditionalPointsConversionConfigurationsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdditionalPointsConversionConfigurationsStruct(
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
        id: deserializeParam(
          data['Id'],
          ParamType.String,
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
        defaultPointsConvertion: deserializeParam(
          data['defaultPointsConvertion'],
          ParamType.double,
          false,
        ),
        defaultAmountConvertion: deserializeParam(
          data['defaultAmountConvertion'],
          ParamType.double,
          false,
        ),
        additionalPointsConvertion: deserializeParam(
          data['additionalPointsConvertion'],
          ParamType.double,
          false,
        ),
        additionalAmountConvertion: deserializeParam(
          data['additionalAmountConvertion'],
          ParamType.double,
          false,
        ),
        hasSpecificDate: deserializeParam(
          data['hasSpecificDate'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() =>
      'AdditionalPointsConversionConfigurationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdditionalPointsConversionConfigurationsStruct &&
        isActive == other.isActive &&
        isSpecificDay == other.isSpecificDay &&
        startDate == other.startDate &&
        isEndDate == other.isEndDate &&
        endDate == other.endDate &&
        isIncludeTimeRange == other.isIncludeTimeRange &&
        isEndTime == other.isEndTime &&
        areDays == other.areDays &&
        listEquality.equals(days, other.days) &&
        rangeSelected == other.rangeSelected &&
        id == other.id &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        defaultPointsConvertion == other.defaultPointsConvertion &&
        defaultAmountConvertion == other.defaultAmountConvertion &&
        additionalPointsConvertion == other.additionalPointsConvertion &&
        additionalAmountConvertion == other.additionalAmountConvertion &&
        hasSpecificDate == other.hasSpecificDate;
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
        areDays,
        days,
        rangeSelected,
        id,
        startTime,
        endTime,
        defaultPointsConvertion,
        defaultAmountConvertion,
        additionalPointsConvertion,
        additionalAmountConvertion,
        hasSpecificDate
      ]);
}

AdditionalPointsConversionConfigurationsStruct
    createAdditionalPointsConversionConfigurationsStruct({
  bool? isActive,
  bool? isSpecificDay,
  DateTime? startDate,
  bool? isEndDate,
  DateTime? endDate,
  bool? isIncludeTimeRange,
  bool? isEndTime,
  bool? areDays,
  int? rangeSelected,
  String? id,
  DateTime? startTime,
  DateTime? endTime,
  double? defaultPointsConvertion,
  double? defaultAmountConvertion,
  double? additionalPointsConvertion,
  double? additionalAmountConvertion,
  bool? hasSpecificDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        AdditionalPointsConversionConfigurationsStruct(
          isActive: isActive,
          isSpecificDay: isSpecificDay,
          startDate: startDate,
          isEndDate: isEndDate,
          endDate: endDate,
          isIncludeTimeRange: isIncludeTimeRange,
          isEndTime: isEndTime,
          areDays: areDays,
          rangeSelected: rangeSelected,
          id: id,
          startTime: startTime,
          endTime: endTime,
          defaultPointsConvertion: defaultPointsConvertion,
          defaultAmountConvertion: defaultAmountConvertion,
          additionalPointsConvertion: additionalPointsConvertion,
          additionalAmountConvertion: additionalAmountConvertion,
          hasSpecificDate: hasSpecificDate,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

AdditionalPointsConversionConfigurationsStruct?
    updateAdditionalPointsConversionConfigurationsStruct(
  AdditionalPointsConversionConfigurationsStruct?
      additionalPointsConversionConfigurations, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        additionalPointsConversionConfigurations
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addAdditionalPointsConversionConfigurationsStructData(
  Map<String, dynamic> firestoreData,
  AdditionalPointsConversionConfigurationsStruct?
      additionalPointsConversionConfigurations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (additionalPointsConversionConfigurations == null) {
    return;
  }
  if (additionalPointsConversionConfigurations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      additionalPointsConversionConfigurations
          .firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final additionalPointsConversionConfigurationsData =
      getAdditionalPointsConversionConfigurationsFirestoreData(
          additionalPointsConversionConfigurations, forFieldValue);
  final nestedData = additionalPointsConversionConfigurationsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      additionalPointsConversionConfigurations.firestoreUtilData.create ||
          clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdditionalPointsConversionConfigurationsFirestoreData(
  AdditionalPointsConversionConfigurationsStruct?
      additionalPointsConversionConfigurations, [
  bool forFieldValue = false,
]) {
  if (additionalPointsConversionConfigurations == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(additionalPointsConversionConfigurations.toMap());

  // Add any Firestore field values
  additionalPointsConversionConfigurations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>>
    getAdditionalPointsConversionConfigurationsListFirestoreData(
  List<AdditionalPointsConversionConfigurationsStruct>?
      additionalPointsConversionConfigurationss,
) =>
        additionalPointsConversionConfigurationss
            ?.map((e) =>
                getAdditionalPointsConversionConfigurationsFirestoreData(
                    e, true))
            .toList() ??
        [];
