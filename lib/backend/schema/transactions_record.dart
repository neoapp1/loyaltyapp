import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  bool hasTransactionType() => _transactionType != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "ticketAmount" field.
  double? _ticketAmount;
  double get ticketAmount => _ticketAmount ?? 0.0;
  bool hasTicketAmount() => _ticketAmount != null;

  // "cashbackGranted" field.
  double? _cashbackGranted;
  double get cashbackGranted => _cashbackGranted ?? 0.0;
  bool hasCashbackGranted() => _cashbackGranted != null;

  // "cashbackRedeemed" field.
  double? _cashbackRedeemed;
  double get cashbackRedeemed => _cashbackRedeemed ?? 0.0;
  bool hasCashbackRedeemed() => _cashbackRedeemed != null;

  // "netCashbackChange" field.
  double? _netCashbackChange;
  double get netCashbackChange => _netCashbackChange ?? 0.0;
  bool hasNetCashbackChange() => _netCashbackChange != null;

  // "didLoseCashback" field.
  bool? _didLoseCashback;
  bool get didLoseCashback => _didLoseCashback ?? false;
  bool hasDidLoseCashback() => _didLoseCashback != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "adminName" field.
  String? _adminName;
  String get adminName => _adminName ?? '';
  bool hasAdminName() => _adminName != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  bool hasReferenceNumber() => _referenceNumber != null;

  // "creditAppliedPercentage" field.
  double? _creditAppliedPercentage;
  double get creditAppliedPercentage => _creditAppliedPercentage ?? 0.0;
  bool hasCreditAppliedPercentage() => _creditAppliedPercentage != null;

  // "newBalance" field.
  String? _newBalance;
  String get newBalance => _newBalance ?? '';
  bool hasNewBalance() => _newBalance != null;

  // "previousBalance" field.
  String? _previousBalance;
  String get previousBalance => _previousBalance ?? '';
  bool hasPreviousBalance() => _previousBalance != null;

  // "totalReceived" field.
  double? _totalReceived;
  double get totalReceived => _totalReceived ?? 0.0;
  bool hasTotalReceived() => _totalReceived != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _transactionType = snapshotData['transactionType'] as String?;
    _companyId = snapshotData['companyId'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _ticketAmount = castToType<double>(snapshotData['ticketAmount']);
    _cashbackGranted = castToType<double>(snapshotData['cashbackGranted']);
    _cashbackRedeemed = castToType<double>(snapshotData['cashbackRedeemed']);
    _netCashbackChange = castToType<double>(snapshotData['netCashbackChange']);
    _didLoseCashback = snapshotData['didLoseCashback'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _adminName = snapshotData['adminName'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _userName = snapshotData['userName'] as String?;
    _referenceNumber = snapshotData['referenceNumber'] as String?;
    _creditAppliedPercentage =
        castToType<double>(snapshotData['creditAppliedPercentage']);
    _newBalance = snapshotData['newBalance'] as String?;
    _previousBalance = snapshotData['previousBalance'] as String?;
    _totalReceived = castToType<double>(snapshotData['totalReceived']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? userId,
  String? transactionType,
  String? companyId,
  String? companyName,
  double? ticketAmount,
  double? cashbackGranted,
  double? cashbackRedeemed,
  double? netCashbackChange,
  bool? didLoseCashback,
  DateTime? createdAt,
  String? adminName,
  String? userEmail,
  String? userName,
  String? referenceNumber,
  double? creditAppliedPercentage,
  String? newBalance,
  String? previousBalance,
  double? totalReceived,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'transactionType': transactionType,
      'companyId': companyId,
      'companyName': companyName,
      'ticketAmount': ticketAmount,
      'cashbackGranted': cashbackGranted,
      'cashbackRedeemed': cashbackRedeemed,
      'netCashbackChange': netCashbackChange,
      'didLoseCashback': didLoseCashback,
      'createdAt': createdAt,
      'adminName': adminName,
      'userEmail': userEmail,
      'userName': userName,
      'referenceNumber': referenceNumber,
      'creditAppliedPercentage': creditAppliedPercentage,
      'newBalance': newBalance,
      'previousBalance': previousBalance,
      'totalReceived': totalReceived,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.transactionType == e2?.transactionType &&
        e1?.companyId == e2?.companyId &&
        e1?.companyName == e2?.companyName &&
        e1?.ticketAmount == e2?.ticketAmount &&
        e1?.cashbackGranted == e2?.cashbackGranted &&
        e1?.cashbackRedeemed == e2?.cashbackRedeemed &&
        e1?.netCashbackChange == e2?.netCashbackChange &&
        e1?.didLoseCashback == e2?.didLoseCashback &&
        e1?.createdAt == e2?.createdAt &&
        e1?.adminName == e2?.adminName &&
        e1?.userEmail == e2?.userEmail &&
        e1?.userName == e2?.userName &&
        e1?.referenceNumber == e2?.referenceNumber &&
        e1?.creditAppliedPercentage == e2?.creditAppliedPercentage &&
        e1?.newBalance == e2?.newBalance &&
        e1?.previousBalance == e2?.previousBalance &&
        e1?.totalReceived == e2?.totalReceived;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.transactionType,
        e?.companyId,
        e?.companyName,
        e?.ticketAmount,
        e?.cashbackGranted,
        e?.cashbackRedeemed,
        e?.netCashbackChange,
        e?.didLoseCashback,
        e?.createdAt,
        e?.adminName,
        e?.userEmail,
        e?.userName,
        e?.referenceNumber,
        e?.creditAppliedPercentage,
        e?.newBalance,
        e?.previousBalance,
        e?.totalReceived
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
