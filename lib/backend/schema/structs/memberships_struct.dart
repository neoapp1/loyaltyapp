// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipsStruct extends FFFirebaseStruct {
  MembershipsStruct({
    List<String>? memberships,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _memberships = memberships,
        super(firestoreUtilData);

  // "memberships" field.
  List<String>? _memberships;
  List<String> get memberships => _memberships ?? const [];
  set memberships(List<String>? val) => _memberships = val;

  void updateMemberships(Function(List<String>) updateFn) {
    updateFn(_memberships ??= []);
  }

  bool hasMemberships() => _memberships != null;

  static MembershipsStruct fromMap(Map<String, dynamic> data) =>
      MembershipsStruct(
        memberships: getDataList(data['memberships']),
      );

  static MembershipsStruct? maybeFromMap(dynamic data) => data is Map
      ? MembershipsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'memberships': _memberships,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'memberships': serializeParam(
          _memberships,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static MembershipsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MembershipsStruct(
        memberships: deserializeParam<String>(
          data['memberships'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MembershipsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MembershipsStruct &&
        listEquality.equals(memberships, other.memberships);
  }

  @override
  int get hashCode => const ListEquality().hash([memberships]);
}

MembershipsStruct createMembershipsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MembershipsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MembershipsStruct? updateMembershipsStruct(
  MembershipsStruct? membershipsStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    membershipsStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMembershipsStructData(
  Map<String, dynamic> firestoreData,
  MembershipsStruct? membershipsStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (membershipsStruct == null) {
    return;
  }
  if (membershipsStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && membershipsStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final membershipsStructData =
      getMembershipsFirestoreData(membershipsStruct, forFieldValue);
  final nestedData =
      membershipsStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = membershipsStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMembershipsFirestoreData(
  MembershipsStruct? membershipsStruct, [
  bool forFieldValue = false,
]) {
  if (membershipsStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(membershipsStruct.toMap());

  // Add any Firestore field values
  membershipsStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMembershipsListFirestoreData(
  List<MembershipsStruct>? membershipsStructs,
) =>
    membershipsStructs
        ?.map((e) => getMembershipsFirestoreData(e, true))
        .toList() ??
    [];
