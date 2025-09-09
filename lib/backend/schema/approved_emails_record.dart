import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovedEmailsRecord extends FirestoreRecord {
  ApprovedEmailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isEmployee" field.
  bool? _isEmployee;
  bool get isEmployee => _isEmployee ?? false;
  bool hasIsEmployee() => _isEmployee != null;

  // "isUser" field.
  bool? _isUser;
  bool get isUser => _isUser ?? false;
  bool hasIsUser() => _isUser != null;

  // "isMasterAdmin" field.
  bool? _isMasterAdmin;
  bool get isMasterAdmin => _isMasterAdmin ?? false;
  bool hasIsMasterAdmin() => _isMasterAdmin != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "hasWebAdminAccess" field.
  bool? _hasWebAdminAccess;
  bool get hasWebAdminAccess => _hasWebAdminAccess ?? false;
  bool hasHasWebAdminAccess() => _hasWebAdminAccess != null;

  // "hasScannerAccess" field.
  bool? _hasScannerAccess;
  bool get hasScannerAccess => _hasScannerAccess ?? false;
  bool hasHasScannerAccess() => _hasScannerAccess != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isEmployee = snapshotData['isEmployee'] as bool?;
    _isUser = snapshotData['isUser'] as bool?;
    _isMasterAdmin = snapshotData['isMasterAdmin'] as bool?;
    _companyId = snapshotData['companyId'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _hasWebAdminAccess = snapshotData['hasWebAdminAccess'] as bool?;
    _hasScannerAccess = snapshotData['hasScannerAccess'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('approvedEmails');

  static Stream<ApprovedEmailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApprovedEmailsRecord.fromSnapshot(s));

  static Future<ApprovedEmailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApprovedEmailsRecord.fromSnapshot(s));

  static ApprovedEmailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApprovedEmailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApprovedEmailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApprovedEmailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApprovedEmailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApprovedEmailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApprovedEmailsRecordData({
  String? email,
  bool? isAdmin,
  bool? isEmployee,
  bool? isUser,
  bool? isMasterAdmin,
  String? companyId,
  DateTime? date,
  bool? hasWebAdminAccess,
  bool? hasScannerAccess,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'isAdmin': isAdmin,
      'isEmployee': isEmployee,
      'isUser': isUser,
      'isMasterAdmin': isMasterAdmin,
      'companyId': companyId,
      'date': date,
      'hasWebAdminAccess': hasWebAdminAccess,
      'hasScannerAccess': hasScannerAccess,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApprovedEmailsRecordDocumentEquality
    implements Equality<ApprovedEmailsRecord> {
  const ApprovedEmailsRecordDocumentEquality();

  @override
  bool equals(ApprovedEmailsRecord? e1, ApprovedEmailsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isEmployee == e2?.isEmployee &&
        e1?.isUser == e2?.isUser &&
        e1?.isMasterAdmin == e2?.isMasterAdmin &&
        e1?.companyId == e2?.companyId &&
        e1?.date == e2?.date &&
        e1?.hasWebAdminAccess == e2?.hasWebAdminAccess &&
        e1?.hasScannerAccess == e2?.hasScannerAccess;
  }

  @override
  int hash(ApprovedEmailsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.isAdmin,
        e?.isEmployee,
        e?.isUser,
        e?.isMasterAdmin,
        e?.companyId,
        e?.date,
        e?.hasWebAdminAccess,
        e?.hasScannerAccess
      ]);

  @override
  bool isValidKey(Object? o) => o is ApprovedEmailsRecord;
}
