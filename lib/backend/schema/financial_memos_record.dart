import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinancialMemosRecord extends FirestoreRecord {
  FinancialMemosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "employeeId" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "employeeName" field.
  String? _employeeName;
  String get employeeName => _employeeName ?? '';
  bool hasEmployeeName() => _employeeName != null;

  // "createdByUserId" field.
  String? _createdByUserId;
  String get createdByUserId => _createdByUserId ?? '';
  bool hasCreatedByUserId() => _createdByUserId != null;

  // "createdByUserName" field.
  String? _createdByUserName;
  String get createdByUserName => _createdByUserName ?? '';
  bool hasCreatedByUserName() => _createdByUserName != null;

  // "memoType" field.
  String? _memoType;
  String get memoType => _memoType ?? '';
  bool hasMemoType() => _memoType != null;

  // "memoDate" field.
  DateTime? _memoDate;
  DateTime? get memoDate => _memoDate;
  bool hasMemoDate() => _memoDate != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  bool hasReferenceNumberField() => _referenceNumber != null;

  // "hasReferenceNumber" field.
  bool? _hasReferenceNumber;
  bool get hasReferenceNumber => _hasReferenceNumber ?? false;
  bool hasHasReferenceNumber() => _hasReferenceNumber != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "previousBalance" field.
  double? _previousBalance;
  double get previousBalance => _previousBalance ?? 0.0;
  bool hasPreviousBalance() => _previousBalance != null;

  // "newBalance" field.
  double? _newBalance;
  double get newBalance => _newBalance ?? 0.0;
  bool hasNewBalance() => _newBalance != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyId = snapshotData['companyId'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _employeeId = snapshotData['employeeId'] as String?;
    _employeeName = snapshotData['employeeName'] as String?;
    _createdByUserId = snapshotData['createdByUserId'] as String?;
    _createdByUserName = snapshotData['createdByUserName'] as String?;
    _memoType = snapshotData['memoType'] as String?;
    _memoDate = snapshotData['memoDate'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
    _referenceNumber = snapshotData['referenceNumber'] as String?;
    _hasReferenceNumber = snapshotData['hasReferenceNumber'] as bool?;
    _note = snapshotData['note'] as String?;
    _previousBalance = castToType<double>(snapshotData['previousBalance']);
    _newBalance = castToType<double>(snapshotData['newBalance']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('financialMemos')
          : FirebaseFirestore.instance.collectionGroup('financialMemos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('financialMemos').doc(id);

  static Stream<FinancialMemosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinancialMemosRecord.fromSnapshot(s));

  static Future<FinancialMemosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinancialMemosRecord.fromSnapshot(s));

  static FinancialMemosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinancialMemosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinancialMemosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinancialMemosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinancialMemosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinancialMemosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinancialMemosRecordData({
  String? companyId,
  String? companyName,
  String? employeeId,
  String? employeeName,
  String? createdByUserId,
  String? createdByUserName,
  String? memoType,
  DateTime? memoDate,
  double? amount,
  String? referenceNumber,
  bool? hasReferenceNumber,
  String? note,
  double? previousBalance,
  double? newBalance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyId': companyId,
      'companyName': companyName,
      'employeeId': employeeId,
      'employeeName': employeeName,
      'createdByUserId': createdByUserId,
      'createdByUserName': createdByUserName,
      'memoType': memoType,
      'memoDate': memoDate,
      'amount': amount,
      'referenceNumber': referenceNumber,
      'hasReferenceNumber': hasReferenceNumber,
      'note': note,
      'previousBalance': previousBalance,
      'newBalance': newBalance,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinancialMemosRecordDocumentEquality
    implements Equality<FinancialMemosRecord> {
  const FinancialMemosRecordDocumentEquality();

  @override
  bool equals(FinancialMemosRecord? e1, FinancialMemosRecord? e2) {
    return e1?.companyId == e2?.companyId &&
        e1?.companyName == e2?.companyName &&
        e1?.employeeId == e2?.employeeId &&
        e1?.employeeName == e2?.employeeName &&
        e1?.createdByUserId == e2?.createdByUserId &&
        e1?.createdByUserName == e2?.createdByUserName &&
        e1?.memoType == e2?.memoType &&
        e1?.memoDate == e2?.memoDate &&
        e1?.amount == e2?.amount &&
        e1?.referenceNumber == e2?.referenceNumber &&
        e1?.hasReferenceNumber == e2?.hasReferenceNumber &&
        e1?.note == e2?.note &&
        e1?.previousBalance == e2?.previousBalance &&
        e1?.newBalance == e2?.newBalance;
  }

  @override
  int hash(FinancialMemosRecord? e) => const ListEquality().hash([
        e?.companyId,
        e?.companyName,
        e?.employeeId,
        e?.employeeName,
        e?.createdByUserId,
        e?.createdByUserName,
        e?.memoType,
        e?.memoDate,
        e?.amount,
        e?.referenceNumber,
        e?.hasReferenceNumber,
        e?.note,
        e?.previousBalance,
        e?.newBalance
      ]);

  @override
  bool isValidKey(Object? o) => o is FinancialMemosRecord;
}
