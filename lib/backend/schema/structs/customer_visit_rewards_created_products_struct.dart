// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CustomerVisitRewardsCreatedProductsStruct extends FFFirebaseStruct {
  CustomerVisitRewardsCreatedProductsStruct({
    bool? isActive,
    String? productId,
    String? productName,
    int? visitsRequired,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isActive = isActive,
        _productId = productId,
        _productName = productName,
        _visitsRequired = visitsRequired,
        super(firestoreUtilData);

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "visitsRequired" field.
  int? _visitsRequired;
  int get visitsRequired => _visitsRequired ?? 0;
  set visitsRequired(int? val) => _visitsRequired = val;

  void incrementVisitsRequired(int amount) =>
      visitsRequired = visitsRequired + amount;

  bool hasVisitsRequired() => _visitsRequired != null;

  static CustomerVisitRewardsCreatedProductsStruct fromMap(
          Map<String, dynamic> data) =>
      CustomerVisitRewardsCreatedProductsStruct(
        isActive: data['isActive'] as bool?,
        productId: data['productId'] as String?,
        productName: data['productName'] as String?,
        visitsRequired: castToType<int>(data['visitsRequired']),
      );

  static CustomerVisitRewardsCreatedProductsStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? CustomerVisitRewardsCreatedProductsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'isActive': _isActive,
        'productId': _productId,
        'productName': _productName,
        'visitsRequired': _visitsRequired,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'productId': serializeParam(
          _productId,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'visitsRequired': serializeParam(
          _visitsRequired,
          ParamType.int,
        ),
      }.withoutNulls;

  static CustomerVisitRewardsCreatedProductsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerVisitRewardsCreatedProductsStruct(
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        productId: deserializeParam(
          data['productId'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        visitsRequired: deserializeParam(
          data['visitsRequired'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CustomerVisitRewardsCreatedProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerVisitRewardsCreatedProductsStruct &&
        isActive == other.isActive &&
        productId == other.productId &&
        productName == other.productName &&
        visitsRequired == other.visitsRequired;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([isActive, productId, productName, visitsRequired]);
}

CustomerVisitRewardsCreatedProductsStruct
    createCustomerVisitRewardsCreatedProductsStruct({
  bool? isActive,
  String? productId,
  String? productName,
  int? visitsRequired,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        CustomerVisitRewardsCreatedProductsStruct(
          isActive: isActive,
          productId: productId,
          productName: productName,
          visitsRequired: visitsRequired,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

CustomerVisitRewardsCreatedProductsStruct?
    updateCustomerVisitRewardsCreatedProductsStruct(
  CustomerVisitRewardsCreatedProductsStruct?
      customerVisitRewardsCreatedProducts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        customerVisitRewardsCreatedProducts
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addCustomerVisitRewardsCreatedProductsStructData(
  Map<String, dynamic> firestoreData,
  CustomerVisitRewardsCreatedProductsStruct?
      customerVisitRewardsCreatedProducts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customerVisitRewardsCreatedProducts == null) {
    return;
  }
  if (customerVisitRewardsCreatedProducts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      customerVisitRewardsCreatedProducts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customerVisitRewardsCreatedProductsData =
      getCustomerVisitRewardsCreatedProductsFirestoreData(
          customerVisitRewardsCreatedProducts, forFieldValue);
  final nestedData = customerVisitRewardsCreatedProductsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      customerVisitRewardsCreatedProducts.firestoreUtilData.create ||
          clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomerVisitRewardsCreatedProductsFirestoreData(
  CustomerVisitRewardsCreatedProductsStruct?
      customerVisitRewardsCreatedProducts, [
  bool forFieldValue = false,
]) {
  if (customerVisitRewardsCreatedProducts == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(customerVisitRewardsCreatedProducts.toMap());

  // Add any Firestore field values
  customerVisitRewardsCreatedProducts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>>
    getCustomerVisitRewardsCreatedProductsListFirestoreData(
  List<CustomerVisitRewardsCreatedProductsStruct>?
      customerVisitRewardsCreatedProductss,
) =>
        customerVisitRewardsCreatedProductss
            ?.map((e) =>
                getCustomerVisitRewardsCreatedProductsFirestoreData(e, true))
            .toList() ??
        [];
