import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCompaniesRecord extends FirestoreRecord {
  UserCompaniesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isMasterAdmin" field.
  bool? _isMasterAdmin;
  bool get isMasterAdmin => _isMasterAdmin ?? false;
  bool hasIsMasterAdmin() => _isMasterAdmin != null;

  // "isEmployee" field.
  bool? _isEmployee;
  bool get isEmployee => _isEmployee ?? false;
  bool hasIsEmployee() => _isEmployee != null;

  // "isUser" field.
  bool? _isUser;
  bool get isUser => _isUser ?? false;
  bool hasIsUser() => _isUser != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "cashbackBalance" field.
  double? _cashbackBalance;
  double get cashbackBalance => _cashbackBalance ?? 0.0;
  bool hasCashbackBalance() => _cashbackBalance != null;

  // "cashbackUsed" field.
  double? _cashbackUsed;
  double get cashbackUsed => _cashbackUsed ?? 0.0;
  bool hasCashbackUsed() => _cashbackUsed != null;

  // "lastTransactionAt" field.
  DateTime? _lastTransactionAt;
  DateTime? get lastTransactionAt => _lastTransactionAt;
  bool hasLastTransactionAt() => _lastTransactionAt != null;

  // "totalSpent" field.
  double? _totalSpent;
  double get totalSpent => _totalSpent ?? 0.0;
  bool hasTotalSpent() => _totalSpent != null;

  // "userCountryCode" field.
  String? _userCountryCode;
  String get userCountryCode => _userCountryCode ?? '';
  bool hasUserCountryCode() => _userCountryCode != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyId = snapshotData['companyId'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isMasterAdmin = snapshotData['isMasterAdmin'] as bool?;
    _isEmployee = snapshotData['isEmployee'] as bool?;
    _isUser = snapshotData['isUser'] as bool?;
    _companyName = snapshotData['companyName'] as String?;
    _cashbackBalance = castToType<double>(snapshotData['cashbackBalance']);
    _cashbackUsed = castToType<double>(snapshotData['cashbackUsed']);
    _lastTransactionAt = snapshotData['lastTransactionAt'] as DateTime?;
    _totalSpent = castToType<double>(snapshotData['totalSpent']);
    _userCountryCode = snapshotData['userCountryCode'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userCompanies')
          : FirebaseFirestore.instance.collectionGroup('userCompanies');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userCompanies').doc(id);

  static Stream<UserCompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCompaniesRecord.fromSnapshot(s));

  static Future<UserCompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCompaniesRecord.fromSnapshot(s));

  static UserCompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCompaniesRecordData({
  String? companyId,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  bool? isAdmin,
  bool? isMasterAdmin,
  bool? isEmployee,
  bool? isUser,
  String? companyName,
  double? cashbackBalance,
  double? cashbackUsed,
  DateTime? lastTransactionAt,
  double? totalSpent,
  String? userCountryCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyId': companyId,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'isAdmin': isAdmin,
      'isMasterAdmin': isMasterAdmin,
      'isEmployee': isEmployee,
      'isUser': isUser,
      'companyName': companyName,
      'cashbackBalance': cashbackBalance,
      'cashbackUsed': cashbackUsed,
      'lastTransactionAt': lastTransactionAt,
      'totalSpent': totalSpent,
      'userCountryCode': userCountryCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCompaniesRecordDocumentEquality
    implements Equality<UserCompaniesRecord> {
  const UserCompaniesRecordDocumentEquality();

  @override
  bool equals(UserCompaniesRecord? e1, UserCompaniesRecord? e2) {
    return e1?.companyId == e2?.companyId &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isMasterAdmin == e2?.isMasterAdmin &&
        e1?.isEmployee == e2?.isEmployee &&
        e1?.isUser == e2?.isUser &&
        e1?.companyName == e2?.companyName &&
        e1?.cashbackBalance == e2?.cashbackBalance &&
        e1?.cashbackUsed == e2?.cashbackUsed &&
        e1?.lastTransactionAt == e2?.lastTransactionAt &&
        e1?.totalSpent == e2?.totalSpent &&
        e1?.userCountryCode == e2?.userCountryCode;
  }

  @override
  int hash(UserCompaniesRecord? e) => const ListEquality().hash([
        e?.companyId,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.isAdmin,
        e?.isMasterAdmin,
        e?.isEmployee,
        e?.isUser,
        e?.companyName,
        e?.cashbackBalance,
        e?.cashbackUsed,
        e?.lastTransactionAt,
        e?.totalSpent,
        e?.userCountryCode
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCompaniesRecord;
}
