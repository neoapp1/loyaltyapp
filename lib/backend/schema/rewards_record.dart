import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RewardsRecord extends FirestoreRecord {
  RewardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "requiredPointsOrVisits" field.
  int? _requiredPointsOrVisits;
  int get requiredPointsOrVisits => _requiredPointsOrVisits ?? 0;
  bool hasRequiredPointsOrVisits() => _requiredPointsOrVisits != null;

  // "limitPerContact" field.
  bool? _limitPerContact;
  bool get limitPerContact => _limitPerContact ?? false;
  bool hasLimitPerContact() => _limitPerContact != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "sendPushNotification" field.
  bool? _sendPushNotification;
  bool get sendPushNotification => _sendPushNotification ?? false;
  bool hasSendPushNotification() => _sendPushNotification != null;

  // "maxRedemptionsPerUser" field.
  int? _maxRedemptionsPerUser;
  int get maxRedemptionsPerUser => _maxRedemptionsPerUser ?? 0;
  bool hasMaxRedemptionsPerUser() => _maxRedemptionsPerUser != null;

  // "iconName" field.
  String? _iconName;
  String get iconName => _iconName ?? '';
  bool hasIconName() => _iconName != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "expirationDate" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDateField() => _expirationDate != null;

  // "hasExpirationDate" field.
  bool? _hasExpirationDate;
  bool get hasExpirationDate => _hasExpirationDate ?? false;
  bool hasHasExpirationDate() => _hasExpirationDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _companyId = snapshotData['companyId'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _requiredPointsOrVisits =
        castToType<int>(snapshotData['requiredPointsOrVisits']);
    _limitPerContact = snapshotData['limitPerContact'] as bool?;
    _isActive = snapshotData['isActive'] as bool?;
    _sendPushNotification = snapshotData['sendPushNotification'] as bool?;
    _maxRedemptionsPerUser =
        castToType<int>(snapshotData['maxRedemptionsPerUser']);
    _iconName = snapshotData['iconName'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _expirationDate = snapshotData['expirationDate'] as DateTime?;
    _hasExpirationDate = snapshotData['hasExpirationDate'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rewards')
          : FirebaseFirestore.instance.collectionGroup('rewards');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rewards').doc(id);

  static Stream<RewardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RewardsRecord.fromSnapshot(s));

  static Future<RewardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RewardsRecord.fromSnapshot(s));

  static RewardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RewardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RewardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RewardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RewardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RewardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRewardsRecordData({
  String? id,
  String? companyId,
  String? name,
  String? description,
  int? requiredPointsOrVisits,
  bool? limitPerContact,
  bool? isActive,
  bool? sendPushNotification,
  int? maxRedemptionsPerUser,
  String? iconName,
  DateTime? createdAt,
  DateTime? expirationDate,
  bool? hasExpirationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'companyId': companyId,
      'name': name,
      'description': description,
      'requiredPointsOrVisits': requiredPointsOrVisits,
      'limitPerContact': limitPerContact,
      'isActive': isActive,
      'sendPushNotification': sendPushNotification,
      'maxRedemptionsPerUser': maxRedemptionsPerUser,
      'iconName': iconName,
      'createdAt': createdAt,
      'expirationDate': expirationDate,
      'hasExpirationDate': hasExpirationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class RewardsRecordDocumentEquality implements Equality<RewardsRecord> {
  const RewardsRecordDocumentEquality();

  @override
  bool equals(RewardsRecord? e1, RewardsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.companyId == e2?.companyId &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.requiredPointsOrVisits == e2?.requiredPointsOrVisits &&
        e1?.limitPerContact == e2?.limitPerContact &&
        e1?.isActive == e2?.isActive &&
        e1?.sendPushNotification == e2?.sendPushNotification &&
        e1?.maxRedemptionsPerUser == e2?.maxRedemptionsPerUser &&
        e1?.iconName == e2?.iconName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.hasExpirationDate == e2?.hasExpirationDate;
  }

  @override
  int hash(RewardsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.companyId,
        e?.name,
        e?.description,
        e?.requiredPointsOrVisits,
        e?.limitPerContact,
        e?.isActive,
        e?.sendPushNotification,
        e?.maxRedemptionsPerUser,
        e?.iconName,
        e?.createdAt,
        e?.expirationDate,
        e?.hasExpirationDate
      ]);

  @override
  bool isValidKey(Object? o) => o is RewardsRecord;
}
