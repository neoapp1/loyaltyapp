import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "companyImage" field.
  String? _companyImage;
  String get companyImage => _companyImage ?? '';
  bool hasCompanyImage() => _companyImage != null;

  // "locationAddress" field.
  String? _locationAddress;
  String get locationAddress => _locationAddress ?? '';
  bool hasLocationAddress() => _locationAddress != null;

  // "locationCity" field.
  String? _locationCity;
  String get locationCity => _locationCity ?? '';
  bool hasLocationCity() => _locationCity != null;

  // "companyEmail" field.
  String? _companyEmail;
  String get companyEmail => _companyEmail ?? '';
  bool hasCompanyEmail() => _companyEmail != null;

  // "companyTelephoneNumber" field.
  String? _companyTelephoneNumber;
  String get companyTelephoneNumber => _companyTelephoneNumber ?? '';
  bool hasCompanyTelephoneNumber() => _companyTelephoneNumber != null;

  // "companyQrCode" field.
  String? _companyQrCode;
  String get companyQrCode => _companyQrCode ?? '';
  bool hasCompanyQrCode() => _companyQrCode != null;

  // "companyMembershipPlan" field.
  String? _companyMembershipPlan;
  String get companyMembershipPlan => _companyMembershipPlan ?? '';
  bool hasCompanyMembershipPlan() => _companyMembershipPlan != null;

  // "companyStartDate" field.
  String? _companyStartDate;
  String get companyStartDate => _companyStartDate ?? '';
  bool hasCompanyStartDate() => _companyStartDate != null;

  // "companyExpirationDate" field.
  String? _companyExpirationDate;
  String get companyExpirationDate => _companyExpirationDate ?? '';
  bool hasCompanyExpirationDate() => _companyExpirationDate != null;

  // "loyaltySystem" field.
  String? _loyaltySystem;
  String get loyaltySystem => _loyaltySystem ?? '';
  bool hasLoyaltySystem() => _loyaltySystem != null;

  // "vatIncluded" field.
  bool? _vatIncluded;
  bool get vatIncluded => _vatIncluded ?? false;
  bool hasVatIncluded() => _vatIncluded != null;

  // "cashBackLimits" field.
  bool? _cashBackLimits;
  bool get cashBackLimits => _cashBackLimits ?? false;
  bool hasCashBackLimits() => _cashBackLimits != null;

  // "minimunPurchaseAmount" field.
  double? _minimunPurchaseAmount;
  double get minimunPurchaseAmount => _minimunPurchaseAmount ?? 0.0;
  bool hasMinimunPurchaseAmount() => _minimunPurchaseAmount != null;

  // "cashBackPercentage" field.
  double? _cashBackPercentage;
  double get cashBackPercentage => _cashBackPercentage ?? 0.0;
  bool hasCashBackPercentage() => _cashBackPercentage != null;

  // "maximumCashBackPerTransaction" field.
  double? _maximumCashBackPerTransaction;
  double get maximumCashBackPerTransaction =>
      _maximumCashBackPerTransaction ?? 0.0;
  bool hasMaximumCashBackPerTransaction() =>
      _maximumCashBackPerTransaction != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _companyImage = snapshotData['companyImage'] as String?;
    _locationAddress = snapshotData['locationAddress'] as String?;
    _locationCity = snapshotData['locationCity'] as String?;
    _companyEmail = snapshotData['companyEmail'] as String?;
    _companyTelephoneNumber = snapshotData['companyTelephoneNumber'] as String?;
    _companyQrCode = snapshotData['companyQrCode'] as String?;
    _companyMembershipPlan = snapshotData['companyMembershipPlan'] as String?;
    _companyStartDate = snapshotData['companyStartDate'] as String?;
    _companyExpirationDate = snapshotData['companyExpirationDate'] as String?;
    _loyaltySystem = snapshotData['loyaltySystem'] as String?;
    _vatIncluded = snapshotData['vatIncluded'] as bool?;
    _cashBackLimits = snapshotData['cashBackLimits'] as bool?;
    _minimunPurchaseAmount =
        castToType<double>(snapshotData['minimunPurchaseAmount']);
    _cashBackPercentage =
        castToType<double>(snapshotData['cashBackPercentage']);
    _maximumCashBackPerTransaction =
        castToType<double>(snapshotData['maximumCashBackPerTransaction']);
    _companyId = snapshotData['companyId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaniesRecord.fromSnapshot(s));

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaniesRecord.fromSnapshot(s));

  static CompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaniesRecordData({
  String? companyName,
  String? companyImage,
  String? locationAddress,
  String? locationCity,
  String? companyEmail,
  String? companyTelephoneNumber,
  String? companyQrCode,
  String? companyMembershipPlan,
  String? companyStartDate,
  String? companyExpirationDate,
  String? loyaltySystem,
  bool? vatIncluded,
  bool? cashBackLimits,
  double? minimunPurchaseAmount,
  double? cashBackPercentage,
  double? maximumCashBackPerTransaction,
  String? companyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'companyImage': companyImage,
      'locationAddress': locationAddress,
      'locationCity': locationCity,
      'companyEmail': companyEmail,
      'companyTelephoneNumber': companyTelephoneNumber,
      'companyQrCode': companyQrCode,
      'companyMembershipPlan': companyMembershipPlan,
      'companyStartDate': companyStartDate,
      'companyExpirationDate': companyExpirationDate,
      'loyaltySystem': loyaltySystem,
      'vatIncluded': vatIncluded,
      'cashBackLimits': cashBackLimits,
      'minimunPurchaseAmount': minimunPurchaseAmount,
      'cashBackPercentage': cashBackPercentage,
      'maximumCashBackPerTransaction': maximumCashBackPerTransaction,
      'companyId': companyId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.companyImage == e2?.companyImage &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.locationCity == e2?.locationCity &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.companyTelephoneNumber == e2?.companyTelephoneNumber &&
        e1?.companyQrCode == e2?.companyQrCode &&
        e1?.companyMembershipPlan == e2?.companyMembershipPlan &&
        e1?.companyStartDate == e2?.companyStartDate &&
        e1?.companyExpirationDate == e2?.companyExpirationDate &&
        e1?.loyaltySystem == e2?.loyaltySystem &&
        e1?.vatIncluded == e2?.vatIncluded &&
        e1?.cashBackLimits == e2?.cashBackLimits &&
        e1?.minimunPurchaseAmount == e2?.minimunPurchaseAmount &&
        e1?.cashBackPercentage == e2?.cashBackPercentage &&
        e1?.maximumCashBackPerTransaction ==
            e2?.maximumCashBackPerTransaction &&
        e1?.companyId == e2?.companyId;
  }

  @override
  int hash(CompaniesRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.companyImage,
        e?.locationAddress,
        e?.locationCity,
        e?.companyEmail,
        e?.companyTelephoneNumber,
        e?.companyQrCode,
        e?.companyMembershipPlan,
        e?.companyStartDate,
        e?.companyExpirationDate,
        e?.loyaltySystem,
        e?.vatIncluded,
        e?.cashBackLimits,
        e?.minimunPurchaseAmount,
        e?.cashBackPercentage,
        e?.maximumCashBackPerTransaction,
        e?.companyId
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}
