// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserGroupsAddedStruct extends FFFirebaseStruct {
  UserGroupsAddedStruct({
    String? userId,
    DateTime? addedAt,
    String? name,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userId = userId,
        _addedAt = addedAt,
        _name = name,
        _email = email,
        super(firestoreUtilData);

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "addedAt" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  set addedAt(DateTime? val) => _addedAt = val;

  bool hasAddedAt() => _addedAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static UserGroupsAddedStruct fromMap(Map<String, dynamic> data) =>
      UserGroupsAddedStruct(
        userId: data['userId'] as String?,
        addedAt: data['addedAt'] as DateTime?,
        name: data['name'] as String?,
        email: data['email'] as String?,
      );

  static UserGroupsAddedStruct? maybeFromMap(dynamic data) => data is Map
      ? UserGroupsAddedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'addedAt': _addedAt,
        'name': _name,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'addedAt': serializeParam(
          _addedAt,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserGroupsAddedStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserGroupsAddedStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        addedAt: deserializeParam(
          data['addedAt'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserGroupsAddedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserGroupsAddedStruct &&
        userId == other.userId &&
        addedAt == other.addedAt &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([userId, addedAt, name, email]);
}

UserGroupsAddedStruct createUserGroupsAddedStruct({
  String? userId,
  DateTime? addedAt,
  String? name,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserGroupsAddedStruct(
      userId: userId,
      addedAt: addedAt,
      name: name,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserGroupsAddedStruct? updateUserGroupsAddedStruct(
  UserGroupsAddedStruct? userGroupsAdded, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userGroupsAdded
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserGroupsAddedStructData(
  Map<String, dynamic> firestoreData,
  UserGroupsAddedStruct? userGroupsAdded,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userGroupsAdded == null) {
    return;
  }
  if (userGroupsAdded.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userGroupsAdded.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userGroupsAddedData =
      getUserGroupsAddedFirestoreData(userGroupsAdded, forFieldValue);
  final nestedData =
      userGroupsAddedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userGroupsAdded.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserGroupsAddedFirestoreData(
  UserGroupsAddedStruct? userGroupsAdded, [
  bool forFieldValue = false,
]) {
  if (userGroupsAdded == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userGroupsAdded.toMap());

  // Add any Firestore field values
  userGroupsAdded.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserGroupsAddedListFirestoreData(
  List<UserGroupsAddedStruct>? userGroupsAddeds,
) =>
    userGroupsAddeds
        ?.map((e) => getUserGroupsAddedFirestoreData(e, true))
        .toList() ??
    [];
