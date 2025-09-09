// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsEndUserStruct extends FFFirebaseStruct {
  GroupsEndUserStruct({
    List<String>? groupsId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _groupsId = groupsId,
        super(firestoreUtilData);

  // "groupsId" field.
  List<String>? _groupsId;
  List<String> get groupsId => _groupsId ?? const [];
  set groupsId(List<String>? val) => _groupsId = val;

  void updateGroupsId(Function(List<String>) updateFn) {
    updateFn(_groupsId ??= []);
  }

  bool hasGroupsId() => _groupsId != null;

  static GroupsEndUserStruct fromMap(Map<String, dynamic> data) =>
      GroupsEndUserStruct(
        groupsId: getDataList(data['groupsId']),
      );

  static GroupsEndUserStruct? maybeFromMap(dynamic data) => data is Map
      ? GroupsEndUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'groupsId': _groupsId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'groupsId': serializeParam(
          _groupsId,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static GroupsEndUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      GroupsEndUserStruct(
        groupsId: deserializeParam<String>(
          data['groupsId'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'GroupsEndUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GroupsEndUserStruct &&
        listEquality.equals(groupsId, other.groupsId);
  }

  @override
  int get hashCode => const ListEquality().hash([groupsId]);
}

GroupsEndUserStruct createGroupsEndUserStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GroupsEndUserStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GroupsEndUserStruct? updateGroupsEndUserStruct(
  GroupsEndUserStruct? groupsEndUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    groupsEndUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGroupsEndUserStructData(
  Map<String, dynamic> firestoreData,
  GroupsEndUserStruct? groupsEndUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (groupsEndUser == null) {
    return;
  }
  if (groupsEndUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && groupsEndUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final groupsEndUserData =
      getGroupsEndUserFirestoreData(groupsEndUser, forFieldValue);
  final nestedData =
      groupsEndUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = groupsEndUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGroupsEndUserFirestoreData(
  GroupsEndUserStruct? groupsEndUser, [
  bool forFieldValue = false,
]) {
  if (groupsEndUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(groupsEndUser.toMap());

  // Add any Firestore field values
  groupsEndUser.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGroupsEndUserListFirestoreData(
  List<GroupsEndUserStruct>? groupsEndUsers,
) =>
    groupsEndUsers
        ?.map((e) => getGroupsEndUserFirestoreData(e, true))
        .toList() ??
    [];
