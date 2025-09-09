// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LinkUserToVendorResponseStruct extends FFFirebaseStruct {
  LinkUserToVendorResponseStruct({
    bool? success,
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _message = message,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static LinkUserToVendorResponseStruct fromMap(Map<String, dynamic> data) =>
      LinkUserToVendorResponseStruct(
        success: data['success'] as bool?,
        message: data['message'] as String?,
      );

  static LinkUserToVendorResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LinkUserToVendorResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static LinkUserToVendorResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LinkUserToVendorResponseStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LinkUserToVendorResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LinkUserToVendorResponseStruct &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([success, message]);
}

LinkUserToVendorResponseStruct createLinkUserToVendorResponseStruct({
  bool? success,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LinkUserToVendorResponseStruct(
      success: success,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LinkUserToVendorResponseStruct? updateLinkUserToVendorResponseStruct(
  LinkUserToVendorResponseStruct? linkUserToVendorResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    linkUserToVendorResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLinkUserToVendorResponseStructData(
  Map<String, dynamic> firestoreData,
  LinkUserToVendorResponseStruct? linkUserToVendorResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (linkUserToVendorResponse == null) {
    return;
  }
  if (linkUserToVendorResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      linkUserToVendorResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final linkUserToVendorResponseData = getLinkUserToVendorResponseFirestoreData(
      linkUserToVendorResponse, forFieldValue);
  final nestedData =
      linkUserToVendorResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      linkUserToVendorResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLinkUserToVendorResponseFirestoreData(
  LinkUserToVendorResponseStruct? linkUserToVendorResponse, [
  bool forFieldValue = false,
]) {
  if (linkUserToVendorResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(linkUserToVendorResponse.toMap());

  // Add any Firestore field values
  linkUserToVendorResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLinkUserToVendorResponseListFirestoreData(
  List<LinkUserToVendorResponseStruct>? linkUserToVendorResponses,
) =>
    linkUserToVendorResponses
        ?.map((e) => getLinkUserToVendorResponseFirestoreData(e, true))
        .toList() ??
    [];
