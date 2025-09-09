import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromosRecord extends FirestoreRecord {
  PromosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "expirationDate" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDateField() => _expirationDate != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "hasExpirationDate" field.
  bool? _hasExpirationDate;
  bool get hasExpirationDate => _hasExpirationDate ?? false;
  bool hasHasExpirationDate() => _hasExpirationDate != null;

  // "applyToGroup" field.
  bool? _applyToGroup;
  bool get applyToGroup => _applyToGroup ?? false;
  bool hasApplyToGroup() => _applyToGroup != null;

  // "groupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _expirationDate = snapshotData['expirationDate'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
    _hasExpirationDate = snapshotData['hasExpirationDate'] as bool?;
    _applyToGroup = snapshotData['applyToGroup'] as bool?;
    _groupId = snapshotData['groupId'] as String?;
    _groupName = snapshotData['groupName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('promos')
          : FirebaseFirestore.instance.collectionGroup('promos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('promos').doc(id);

  static Stream<PromosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromosRecord.fromSnapshot(s));

  static Future<PromosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromosRecord.fromSnapshot(s));

  static PromosRecord fromSnapshot(DocumentSnapshot snapshot) => PromosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromosRecordData({
  String? id,
  String? name,
  String? description,
  DateTime? expirationDate,
  bool? isActive,
  bool? hasExpirationDate,
  bool? applyToGroup,
  String? groupId,
  String? groupName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'expirationDate': expirationDate,
      'isActive': isActive,
      'hasExpirationDate': hasExpirationDate,
      'applyToGroup': applyToGroup,
      'groupId': groupId,
      'groupName': groupName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromosRecordDocumentEquality implements Equality<PromosRecord> {
  const PromosRecordDocumentEquality();

  @override
  bool equals(PromosRecord? e1, PromosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.isActive == e2?.isActive &&
        e1?.hasExpirationDate == e2?.hasExpirationDate &&
        e1?.applyToGroup == e2?.applyToGroup &&
        e1?.groupId == e2?.groupId &&
        e1?.groupName == e2?.groupName;
  }

  @override
  int hash(PromosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.description,
        e?.expirationDate,
        e?.isActive,
        e?.hasExpirationDate,
        e?.applyToGroup,
        e?.groupId,
        e?.groupName
      ]);

  @override
  bool isValidKey(Object? o) => o is PromosRecord;
}
