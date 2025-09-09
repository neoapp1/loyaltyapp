import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadersRecord extends FirestoreRecord {
  ReadersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "verificationCode" field.
  String? _verificationCode;
  String get verificationCode => _verificationCode ?? '';
  bool hasVerificationCode() => _verificationCode != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "verifiedAt" field.
  DateTime? _verifiedAt;
  DateTime? get verifiedAt => _verifiedAt;
  bool hasVerifiedAt() => _verifiedAt != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _companyId = snapshotData['companyId'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _verificationCode = snapshotData['verificationCode'] as String?;
    _name = snapshotData['name'] as String?;
    _verifiedAt = snapshotData['verifiedAt'] as DateTime?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('readers');

  static Stream<ReadersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReadersRecord.fromSnapshot(s));

  static Future<ReadersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReadersRecord.fromSnapshot(s));

  static ReadersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReadersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReadersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReadersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReadersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReadersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReadersRecordData({
  String? id,
  String? companyId,
  DateTime? createdAt,
  String? verificationCode,
  String? name,
  DateTime? verifiedAt,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'companyId': companyId,
      'createdAt': createdAt,
      'verificationCode': verificationCode,
      'name': name,
      'verifiedAt': verifiedAt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReadersRecordDocumentEquality implements Equality<ReadersRecord> {
  const ReadersRecordDocumentEquality();

  @override
  bool equals(ReadersRecord? e1, ReadersRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.companyId == e2?.companyId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.verificationCode == e2?.verificationCode &&
        e1?.name == e2?.name &&
        e1?.verifiedAt == e2?.verifiedAt &&
        e1?.status == e2?.status;
  }

  @override
  int hash(ReadersRecord? e) => const ListEquality().hash([
        e?.id,
        e?.companyId,
        e?.createdAt,
        e?.verificationCode,
        e?.name,
        e?.verifiedAt,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is ReadersRecord;
}
