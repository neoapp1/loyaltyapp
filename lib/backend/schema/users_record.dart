import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "hasScannerAccess" field.
  bool? _hasScannerAccess;
  bool get hasScannerAccess => _hasScannerAccess ?? false;
  bool hasHasScannerAccess() => _hasScannerAccess != null;

  // "hasWebAdminAccess" field.
  bool? _hasWebAdminAccess;
  bool get hasWebAdminAccess => _hasWebAdminAccess ?? false;
  bool hasHasWebAdminAccess() => _hasWebAdminAccess != null;

  // "userCountryCode" field.
  String? _userCountryCode;
  String get userCountryCode => _userCountryCode ?? '';
  bool hasUserCountryCode() => _userCountryCode != null;

  // "dayOfBirth" field.
  String? _dayOfBirth;
  String get dayOfBirth => _dayOfBirth ?? '';
  bool hasDayOfBirth() => _dayOfBirth != null;

  // "monthOfBirth" field.
  String? _monthOfBirth;
  String get monthOfBirth => _monthOfBirth ?? '';
  bool hasMonthOfBirth() => _monthOfBirth != null;

  // "genderType" field.
  String? _genderType;
  String get genderType => _genderType ?? '';
  bool hasGenderType() => _genderType != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "pushNotification" field.
  bool? _pushNotification;
  bool get pushNotification => _pushNotification ?? false;
  bool hasPushNotification() => _pushNotification != null;

  void _initializeFields() {
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
    _hasScannerAccess = snapshotData['hasScannerAccess'] as bool?;
    _hasWebAdminAccess = snapshotData['hasWebAdminAccess'] as bool?;
    _userCountryCode = snapshotData['userCountryCode'] as String?;
    _dayOfBirth = snapshotData['dayOfBirth'] as String?;
    _monthOfBirth = snapshotData['monthOfBirth'] as String?;
    _genderType = snapshotData['genderType'] as String?;
    _city = snapshotData['city'] as String?;
    _postalCode = snapshotData['postalCode'] as String?;
    _pushNotification = snapshotData['pushNotification'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
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
  bool? hasScannerAccess,
  bool? hasWebAdminAccess,
  String? userCountryCode,
  String? dayOfBirth,
  String? monthOfBirth,
  String? genderType,
  String? city,
  String? postalCode,
  bool? pushNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
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
      'hasScannerAccess': hasScannerAccess,
      'hasWebAdminAccess': hasWebAdminAccess,
      'userCountryCode': userCountryCode,
      'dayOfBirth': dayOfBirth,
      'monthOfBirth': monthOfBirth,
      'genderType': genderType,
      'city': city,
      'postalCode': postalCode,
      'pushNotification': pushNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
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
        e1?.hasScannerAccess == e2?.hasScannerAccess &&
        e1?.hasWebAdminAccess == e2?.hasWebAdminAccess &&
        e1?.userCountryCode == e2?.userCountryCode &&
        e1?.dayOfBirth == e2?.dayOfBirth &&
        e1?.monthOfBirth == e2?.monthOfBirth &&
        e1?.genderType == e2?.genderType &&
        e1?.city == e2?.city &&
        e1?.postalCode == e2?.postalCode &&
        e1?.pushNotification == e2?.pushNotification;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
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
        e?.hasScannerAccess,
        e?.hasWebAdminAccess,
        e?.userCountryCode,
        e?.dayOfBirth,
        e?.monthOfBirth,
        e?.genderType,
        e?.city,
        e?.postalCode,
        e?.pushNotification
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
