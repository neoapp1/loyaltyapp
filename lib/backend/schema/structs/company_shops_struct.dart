// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CompanyShopsStruct extends FFFirebaseStruct {
  CompanyShopsStruct({
    String? shopName,
    String? shopImage,
    LatLng? shopLocation,
    String? shopTelephoneNumber,
    String? shopUrlWebsite,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _shopName = shopName,
        _shopImage = shopImage,
        _shopLocation = shopLocation,
        _shopTelephoneNumber = shopTelephoneNumber,
        _shopUrlWebsite = shopUrlWebsite,
        super(firestoreUtilData);

  // "shopName" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  set shopName(String? val) => _shopName = val;

  bool hasShopName() => _shopName != null;

  // "shopImage" field.
  String? _shopImage;
  String get shopImage => _shopImage ?? '';
  set shopImage(String? val) => _shopImage = val;

  bool hasShopImage() => _shopImage != null;

  // "shopLocation" field.
  LatLng? _shopLocation;
  LatLng? get shopLocation => _shopLocation;
  set shopLocation(LatLng? val) => _shopLocation = val;

  bool hasShopLocation() => _shopLocation != null;

  // "shopTelephoneNumber" field.
  String? _shopTelephoneNumber;
  String get shopTelephoneNumber => _shopTelephoneNumber ?? '';
  set shopTelephoneNumber(String? val) => _shopTelephoneNumber = val;

  bool hasShopTelephoneNumber() => _shopTelephoneNumber != null;

  // "shopUrlWebsite" field.
  String? _shopUrlWebsite;
  String get shopUrlWebsite => _shopUrlWebsite ?? '';
  set shopUrlWebsite(String? val) => _shopUrlWebsite = val;

  bool hasShopUrlWebsite() => _shopUrlWebsite != null;

  static CompanyShopsStruct fromMap(Map<String, dynamic> data) =>
      CompanyShopsStruct(
        shopName: data['shopName'] as String?,
        shopImage: data['shopImage'] as String?,
        shopLocation: data['shopLocation'] as LatLng?,
        shopTelephoneNumber: data['shopTelephoneNumber'] as String?,
        shopUrlWebsite: data['shopUrlWebsite'] as String?,
      );

  static CompanyShopsStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyShopsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shopName': _shopName,
        'shopImage': _shopImage,
        'shopLocation': _shopLocation,
        'shopTelephoneNumber': _shopTelephoneNumber,
        'shopUrlWebsite': _shopUrlWebsite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shopName': serializeParam(
          _shopName,
          ParamType.String,
        ),
        'shopImage': serializeParam(
          _shopImage,
          ParamType.String,
        ),
        'shopLocation': serializeParam(
          _shopLocation,
          ParamType.LatLng,
        ),
        'shopTelephoneNumber': serializeParam(
          _shopTelephoneNumber,
          ParamType.String,
        ),
        'shopUrlWebsite': serializeParam(
          _shopUrlWebsite,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompanyShopsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyShopsStruct(
        shopName: deserializeParam(
          data['shopName'],
          ParamType.String,
          false,
        ),
        shopImage: deserializeParam(
          data['shopImage'],
          ParamType.String,
          false,
        ),
        shopLocation: deserializeParam(
          data['shopLocation'],
          ParamType.LatLng,
          false,
        ),
        shopTelephoneNumber: deserializeParam(
          data['shopTelephoneNumber'],
          ParamType.String,
          false,
        ),
        shopUrlWebsite: deserializeParam(
          data['shopUrlWebsite'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompanyShopsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyShopsStruct &&
        shopName == other.shopName &&
        shopImage == other.shopImage &&
        shopLocation == other.shopLocation &&
        shopTelephoneNumber == other.shopTelephoneNumber &&
        shopUrlWebsite == other.shopUrlWebsite;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [shopName, shopImage, shopLocation, shopTelephoneNumber, shopUrlWebsite]);
}

CompanyShopsStruct createCompanyShopsStruct({
  String? shopName,
  String? shopImage,
  LatLng? shopLocation,
  String? shopTelephoneNumber,
  String? shopUrlWebsite,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyShopsStruct(
      shopName: shopName,
      shopImage: shopImage,
      shopLocation: shopLocation,
      shopTelephoneNumber: shopTelephoneNumber,
      shopUrlWebsite: shopUrlWebsite,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyShopsStruct? updateCompanyShopsStruct(
  CompanyShopsStruct? companyShops, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyShops
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyShopsStructData(
  Map<String, dynamic> firestoreData,
  CompanyShopsStruct? companyShops,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyShops == null) {
    return;
  }
  if (companyShops.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyShops.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyShopsData =
      getCompanyShopsFirestoreData(companyShops, forFieldValue);
  final nestedData =
      companyShopsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companyShops.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyShopsFirestoreData(
  CompanyShopsStruct? companyShops, [
  bool forFieldValue = false,
]) {
  if (companyShops == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyShops.toMap());

  // Add any Firestore field values
  companyShops.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyShopsListFirestoreData(
  List<CompanyShopsStruct>? companyShopss,
) =>
    companyShopss?.map((e) => getCompanyShopsFirestoreData(e, true)).toList() ??
    [];
