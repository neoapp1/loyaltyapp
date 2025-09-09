import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GlobalTransactionsRecord extends FirestoreRecord {
  GlobalTransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "loyaltySystem" field.
  String? _loyaltySystem;
  String get loyaltySystem => _loyaltySystem ?? '';
  bool hasLoyaltySystem() => _loyaltySystem != null;

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

  // "adminEmail" field.
  String? _adminEmail;
  String get adminEmail => _adminEmail ?? '';
  bool hasAdminEmail() => _adminEmail != null;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _orderId = snapshotData['orderId'] as String?;
    _loyaltySystem = snapshotData['loyaltySystem'] as String?;
    _isMultiLocation = snapshotData['isMultiLocation'] as bool?;
    _isAnnual = snapshotData['isAnnual'] as bool?;
    _totalAmount = castToType<double>(snapshotData['totalAmount']);
    _adminEmail = snapshotData['adminEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('globalTransactions');

  static Stream<GlobalTransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GlobalTransactionsRecord.fromSnapshot(s));

  static Future<GlobalTransactionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GlobalTransactionsRecord.fromSnapshot(s));

  static GlobalTransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GlobalTransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GlobalTransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GlobalTransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GlobalTransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GlobalTransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGlobalTransactionsRecordData({
  String? companyName,
  DateTime? timestamp,
  String? orderId,
  String? loyaltySystem,
  bool? isMultiLocation,
  bool? isAnnual,
  double? totalAmount,
  String? adminEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'timestamp': timestamp,
      'orderId': orderId,
      'loyaltySystem': loyaltySystem,
      'isMultiLocation': isMultiLocation,
      'isAnnual': isAnnual,
      'totalAmount': totalAmount,
      'adminEmail': adminEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class GlobalTransactionsRecordDocumentEquality
    implements Equality<GlobalTransactionsRecord> {
  const GlobalTransactionsRecordDocumentEquality();

  @override
  bool equals(GlobalTransactionsRecord? e1, GlobalTransactionsRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.timestamp == e2?.timestamp &&
        e1?.orderId == e2?.orderId &&
        e1?.loyaltySystem == e2?.loyaltySystem &&
        e1?.isMultiLocation == e2?.isMultiLocation &&
        e1?.isAnnual == e2?.isAnnual &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.adminEmail == e2?.adminEmail;
  }

  @override
  int hash(GlobalTransactionsRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.timestamp,
        e?.orderId,
        e?.loyaltySystem,
        e?.isMultiLocation,
        e?.isAnnual,
        e?.totalAmount,
        e?.adminEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is GlobalTransactionsRecord;
}
