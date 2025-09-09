import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PendingTransactionsRecord extends FirestoreRecord {
  PendingTransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "orderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "paymentConfirmedAt" field.
  DateTime? _paymentConfirmedAt;
  DateTime? get paymentConfirmedAt => _paymentConfirmedAt;
  bool hasPaymentConfirmedAt() => _paymentConfirmedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "adminCountryCode" field.
  String? _adminCountryCode;
  String get adminCountryCode => _adminCountryCode ?? '';
  bool hasAdminCountryCode() => _adminCountryCode != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "companyImage" field.
  String? _companyImage;
  String get companyImage => _companyImage ?? '';
  bool hasCompanyImage() => _companyImage != null;

  // "locationAddress" field.
  String? _locationAddress;
  String get locationAddress => _locationAddress ?? '';
  bool hasLocationAddress() => _locationAddress != null;

  // "locationCity" field.
  String? _locationCity;
  String get locationCity => _locationCity ?? '';
  bool hasLocationCity() => _locationCity != null;

  // "companyEmail" field.
  String? _companyEmail;
  String get companyEmail => _companyEmail ?? '';
  bool hasCompanyEmail() => _companyEmail != null;

  // "companyTelephoneNumber" field.
  String? _companyTelephoneNumber;
  String get companyTelephoneNumber => _companyTelephoneNumber ?? '';
  bool hasCompanyTelephoneNumber() => _companyTelephoneNumber != null;

  // "companyQrCode" field.
  String? _companyQrCode;
  String get companyQrCode => _companyQrCode ?? '';
  bool hasCompanyQrCode() => _companyQrCode != null;

  // "companyMembershipPlan" field.
  String? _companyMembershipPlan;
  String get companyMembershipPlan => _companyMembershipPlan ?? '';
  bool hasCompanyMembershipPlan() => _companyMembershipPlan != null;

  // "loyaltySystem" field.
  String? _loyaltySystem;
  String get loyaltySystem => _loyaltySystem ?? '';
  bool hasLoyaltySystem() => _loyaltySystem != null;

  // "companyCountryCode" field.
  String? _companyCountryCode;
  String get companyCountryCode => _companyCountryCode ?? '';
  bool hasCompanyCountryCode() => _companyCountryCode != null;

  // "companyVatNumber" field.
  String? _companyVatNumber;
  String get companyVatNumber => _companyVatNumber ?? '';
  bool hasCompanyVatNumber() => _companyVatNumber != null;

  // "isMultiLocation" field.
  bool? _isMultiLocation;
  bool get isMultiLocation => _isMultiLocation ?? false;
  bool hasIsMultiLocation() => _isMultiLocation != null;

  // "isAnnual" field.
  bool? _isAnnual;
  bool get isAnnual => _isAnnual ?? false;
  bool hasIsAnnual() => _isAnnual != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "numOfUsers" field.
  int? _numOfUsers;
  int get numOfUsers => _numOfUsers ?? 0;
  bool hasNumOfUsers() => _numOfUsers != null;

  // "adminEmail" field.
  String? _adminEmail;
  String get adminEmail => _adminEmail ?? '';
  bool hasAdminEmail() => _adminEmail != null;

  void _initializeFields() {
    _orderId = snapshotData['orderId'] as String?;
    _orderStatus = snapshotData['orderStatus'] as String?;
    _paymentConfirmedAt = snapshotData['paymentConfirmedAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _companyId = snapshotData['companyId'] as String?;
    _adminCountryCode = snapshotData['adminCountryCode'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _companyImage = snapshotData['companyImage'] as String?;
    _locationAddress = snapshotData['locationAddress'] as String?;
    _locationCity = snapshotData['locationCity'] as String?;
    _companyEmail = snapshotData['companyEmail'] as String?;
    _companyTelephoneNumber = snapshotData['companyTelephoneNumber'] as String?;
    _companyQrCode = snapshotData['companyQrCode'] as String?;
    _companyMembershipPlan = snapshotData['companyMembershipPlan'] as String?;
    _loyaltySystem = snapshotData['loyaltySystem'] as String?;
    _companyCountryCode = snapshotData['companyCountryCode'] as String?;
    _companyVatNumber = snapshotData['companyVatNumber'] as String?;
    _isMultiLocation = snapshotData['isMultiLocation'] as bool?;
    _isAnnual = snapshotData['isAnnual'] as bool?;
    _totalAmount = castToType<double>(snapshotData['totalAmount']);
    _numOfUsers = castToType<int>(snapshotData['numOfUsers']);
    _adminEmail = snapshotData['adminEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pendingTransactions');

  static Stream<PendingTransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PendingTransactionsRecord.fromSnapshot(s));

  static Future<PendingTransactionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PendingTransactionsRecord.fromSnapshot(s));

  static PendingTransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PendingTransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PendingTransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PendingTransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PendingTransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PendingTransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPendingTransactionsRecordData({
  String? orderId,
  String? orderStatus,
  DateTime? paymentConfirmedAt,
  String? status,
  String? companyId,
  String? adminCountryCode,
  String? companyName,
  String? companyImage,
  String? locationAddress,
  String? locationCity,
  String? companyEmail,
  String? companyTelephoneNumber,
  String? companyQrCode,
  String? companyMembershipPlan,
  String? loyaltySystem,
  String? companyCountryCode,
  String? companyVatNumber,
  bool? isMultiLocation,
  bool? isAnnual,
  double? totalAmount,
  int? numOfUsers,
  String? adminEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderId': orderId,
      'orderStatus': orderStatus,
      'paymentConfirmedAt': paymentConfirmedAt,
      'status': status,
      'companyId': companyId,
      'adminCountryCode': adminCountryCode,
      'companyName': companyName,
      'companyImage': companyImage,
      'locationAddress': locationAddress,
      'locationCity': locationCity,
      'companyEmail': companyEmail,
      'companyTelephoneNumber': companyTelephoneNumber,
      'companyQrCode': companyQrCode,
      'companyMembershipPlan': companyMembershipPlan,
      'loyaltySystem': loyaltySystem,
      'companyCountryCode': companyCountryCode,
      'companyVatNumber': companyVatNumber,
      'isMultiLocation': isMultiLocation,
      'isAnnual': isAnnual,
      'totalAmount': totalAmount,
      'numOfUsers': numOfUsers,
      'adminEmail': adminEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class PendingTransactionsRecordDocumentEquality
    implements Equality<PendingTransactionsRecord> {
  const PendingTransactionsRecordDocumentEquality();

  @override
  bool equals(PendingTransactionsRecord? e1, PendingTransactionsRecord? e2) {
    return e1?.orderId == e2?.orderId &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.paymentConfirmedAt == e2?.paymentConfirmedAt &&
        e1?.status == e2?.status &&
        e1?.companyId == e2?.companyId &&
        e1?.adminCountryCode == e2?.adminCountryCode &&
        e1?.companyName == e2?.companyName &&
        e1?.companyImage == e2?.companyImage &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.locationCity == e2?.locationCity &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.companyTelephoneNumber == e2?.companyTelephoneNumber &&
        e1?.companyQrCode == e2?.companyQrCode &&
        e1?.companyMembershipPlan == e2?.companyMembershipPlan &&
        e1?.loyaltySystem == e2?.loyaltySystem &&
        e1?.companyCountryCode == e2?.companyCountryCode &&
        e1?.companyVatNumber == e2?.companyVatNumber &&
        e1?.isMultiLocation == e2?.isMultiLocation &&
        e1?.isAnnual == e2?.isAnnual &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.numOfUsers == e2?.numOfUsers &&
        e1?.adminEmail == e2?.adminEmail;
  }

  @override
  int hash(PendingTransactionsRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.orderStatus,
        e?.paymentConfirmedAt,
        e?.status,
        e?.companyId,
        e?.adminCountryCode,
        e?.companyName,
        e?.companyImage,
        e?.locationAddress,
        e?.locationCity,
        e?.companyEmail,
        e?.companyTelephoneNumber,
        e?.companyQrCode,
        e?.companyMembershipPlan,
        e?.loyaltySystem,
        e?.companyCountryCode,
        e?.companyVatNumber,
        e?.isMultiLocation,
        e?.isAnnual,
        e?.totalAmount,
        e?.numOfUsers,
        e?.adminEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is PendingTransactionsRecord;
}
