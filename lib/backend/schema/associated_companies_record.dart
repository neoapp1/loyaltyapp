import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssociatedCompaniesRecord extends FirestoreRecord {
  AssociatedCompaniesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  void _initializeFields() {
    _users = getDataList(snapshotData['users']);
    _company = snapshotData['company'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('associatedCompanies');

  static Stream<AssociatedCompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssociatedCompaniesRecord.fromSnapshot(s));

  static Future<AssociatedCompaniesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AssociatedCompaniesRecord.fromSnapshot(s));

  static AssociatedCompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssociatedCompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssociatedCompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssociatedCompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssociatedCompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssociatedCompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssociatedCompaniesRecordData({
  DocumentReference? company,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company': company,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssociatedCompaniesRecordDocumentEquality
    implements Equality<AssociatedCompaniesRecord> {
  const AssociatedCompaniesRecordDocumentEquality();

  @override
  bool equals(AssociatedCompaniesRecord? e1, AssociatedCompaniesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.users, e2?.users) &&
        e1?.company == e2?.company;
  }

  @override
  int hash(AssociatedCompaniesRecord? e) =>
      const ListEquality().hash([e?.users, e?.company]);

  @override
  bool isValidKey(Object? o) => o is AssociatedCompaniesRecord;
}
