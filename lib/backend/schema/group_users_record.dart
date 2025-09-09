import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupUsersRecord extends FirestoreRecord {
  GroupUsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "addedAt" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  bool hasAddedAt() => _addedAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "groupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _addedAt = snapshotData['addedAt'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _groupId = snapshotData['groupId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('groupUsers')
          : FirebaseFirestore.instance.collectionGroup('groupUsers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('groupUsers').doc(id);

  static Stream<GroupUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupUsersRecord.fromSnapshot(s));

  static Future<GroupUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupUsersRecord.fromSnapshot(s));

  static GroupUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupUsersRecordData({
  String? userId,
  DateTime? addedAt,
  String? name,
  String? email,
  String? groupId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'addedAt': addedAt,
      'name': name,
      'email': email,
      'groupId': groupId,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupUsersRecordDocumentEquality implements Equality<GroupUsersRecord> {
  const GroupUsersRecordDocumentEquality();

  @override
  bool equals(GroupUsersRecord? e1, GroupUsersRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.addedAt == e2?.addedAt &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.groupId == e2?.groupId;
  }

  @override
  int hash(GroupUsersRecord? e) => const ListEquality()
      .hash([e?.userId, e?.addedAt, e?.name, e?.email, e?.groupId]);

  @override
  bool isValidKey(Object? o) => o is GroupUsersRecord;
}
