import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "adminName" field.
  String? _adminName;
  String get adminName => _adminName ?? '';
  bool hasAdminName() => _adminName != null;

  // "companyStartDate" field.
  DateTime? _companyStartDate;
  DateTime? get companyStartDate => _companyStartDate;
  bool hasCompanyStartDate() => _companyStartDate != null;

  // "companyExpirationDate" field.
  DateTime? _companyExpirationDate;
  DateTime? get companyExpirationDate => _companyExpirationDate;
  bool hasCompanyExpirationDate() => _companyExpirationDate != null;

  // "adminCountryCode" field.
  String? _adminCountryCode;
  String get adminCountryCode => _adminCountryCode ?? '';
  bool hasAdminCountryCode() => _adminCountryCode != null;

  // "companyCountryCode" field.
  String? _companyCountryCode;
  String get companyCountryCode => _companyCountryCode ?? '';
  bool hasCompanyCountryCode() => _companyCountryCode != null;

  // "visitsRequiredForReward" field.
  int? _visitsRequiredForReward;
  int get visitsRequiredForReward => _visitsRequiredForReward ?? 0;
  bool hasVisitsRequiredForReward() => _visitsRequiredForReward != null;

  // "minimumSpendPerVisit" field.
  double? _minimumSpendPerVisit;
  double get minimumSpendPerVisit => _minimumSpendPerVisit ?? 0.0;
  bool hasMinimumSpendPerVisit() => _minimumSpendPerVisit != null;

  // "maxVisitsPerDay" field.
  int? _maxVisitsPerDay;
  int get maxVisitsPerDay => _maxVisitsPerDay ?? 0;
  bool hasMaxVisitsPerDay() => _maxVisitsPerDay != null;

  // "maxVisitsPerWeek" field.
  int? _maxVisitsPerWeek;
  int get maxVisitsPerWeek => _maxVisitsPerWeek ?? 0;
  bool hasMaxVisitsPerWeek() => _maxVisitsPerWeek != null;

  // "maxVisitsPerMonth" field.
  int? _maxVisitsPerMonth;
  int get maxVisitsPerMonth => _maxVisitsPerMonth ?? 0;
  bool hasMaxVisitsPerMonth() => _maxVisitsPerMonth != null;

  // "minimumPaymentRequired" field.
  double? _minimumPaymentRequired;
  double get minimumPaymentRequired => _minimumPaymentRequired ?? 0.0;
  bool hasMinimumPaymentRequired() => _minimumPaymentRequired != null;

  // "amountBalance" field.
  double? _amountBalance;
  double get amountBalance => _amountBalance ?? 0.0;
  bool hasAmountBalance() => _amountBalance != null;

  // "pointBalance" field.
  int? _pointBalance;
  int get pointBalance => _pointBalance ?? 0;
  bool hasPointBalance() => _pointBalance != null;

  // "companyVatNumber" field.
  String? _companyVatNumber;
  String get companyVatNumber => _companyVatNumber ?? '';
  bool hasCompanyVatNumber() => _companyVatNumber != null;

  // "adminTelephoneNumber" field.
  String? _adminTelephoneNumber;
  String get adminTelephoneNumber => _adminTelephoneNumber ?? '';
  bool hasAdminTelephoneNumber() => _adminTelephoneNumber != null;

  // "isMultiLocation" field.
  bool? _isMultiLocation;
  bool get isMultiLocation => _isMultiLocation ?? false;
  bool hasIsMultiLocation() => _isMultiLocation != null;

  // "isAnnual" field.
  bool? _isAnnual;
  bool get isAnnual => _isAnnual ?? false;
  bool hasIsAnnual() => _isAnnual != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "numOfUsers" field.
  int? _numOfUsers;
  int get numOfUsers => _numOfUsers ?? 0;
  bool hasNumOfUsers() => _numOfUsers != null;

  // "adminEmail" field.
  String? _adminEmail;
  String get adminEmail => _adminEmail ?? '';
  bool hasAdminEmail() => _adminEmail != null;

  // "urlWebsite" field.
  String? _urlWebsite;
  String get urlWebsite => _urlWebsite ?? '';
  bool hasUrlWebsite() => _urlWebsite != null;

  // "shops" field.
  List<CompanyShopsStruct>? _shops;
  List<CompanyShopsStruct> get shops => _shops ?? const [];
  bool hasShops() => _shops != null;

  // "companyStatus" field.
  bool? _companyStatus;
  bool get companyStatus => _companyStatus ?? false;
  bool hasCompanyStatus() => _companyStatus != null;

  // "isMaximumCashbackLimit" field.
  bool? _isMaximumCashbackLimit;
  bool get isMaximumCashbackLimit => _isMaximumCashbackLimit ?? false;
  bool hasIsMaximumCashbackLimit() => _isMaximumCashbackLimit != null;

  // "maximumCashbackLimit" field.
  double? _maximumCashbackLimit;
  double get maximumCashbackLimit => _maximumCashbackLimit ?? 0.0;
  bool hasMaximumCashbackLimit() => _maximumCashbackLimit != null;

  // "isMinimumPurchaseAmountPerTransaction" field.
  bool? _isMinimumPurchaseAmountPerTransaction;
  bool get isMinimumPurchaseAmountPerTransaction =>
      _isMinimumPurchaseAmountPerTransaction ?? false;
  bool hasIsMinimumPurchaseAmountPerTransaction() =>
      _isMinimumPurchaseAmountPerTransaction != null;

  // "minimumPurchaseAmountPerTransaction" field.
  double? _minimumPurchaseAmountPerTransaction;
  double get minimumPurchaseAmountPerTransaction =>
      _minimumPurchaseAmountPerTransaction ?? 0.0;
  bool hasMinimumPurchaseAmountPerTransaction() =>
      _minimumPurchaseAmountPerTransaction != null;

  // "isMaximumCashBackPerTransaction" field.
  bool? _isMaximumCashBackPerTransaction;
  bool get isMaximumCashBackPerTransaction =>
      _isMaximumCashBackPerTransaction ?? false;
  bool hasIsMaximumCashBackPerTransaction() =>
      _isMaximumCashBackPerTransaction != null;

  // "isIncludeVatOnCashback" field.
  bool? _isIncludeVatOnCashback;
  bool get isIncludeVatOnCashback => _isIncludeVatOnCashback ?? false;
  bool hasIsIncludeVatOnCashback() => _isIncludeVatOnCashback != null;

  // "vatPercentage" field.
  double? _vatPercentage;
  double get vatPercentage => _vatPercentage ?? 0.0;
  bool hasVatPercentage() => _vatPercentage != null;

  // "isApplyCashbackBalanceIfRedeeming" field.
  bool? _isApplyCashbackBalanceIfRedeeming;
  bool get isApplyCashbackBalanceIfRedeeming =>
      _isApplyCashbackBalanceIfRedeeming ?? false;
  bool hasIsApplyCashbackBalanceIfRedeeming() =>
      _isApplyCashbackBalanceIfRedeeming != null;

  // "defaultCashbackPercentage" field.
  double? _defaultCashbackPercentage;
  double get defaultCashbackPercentage => _defaultCashbackPercentage ?? 0.0;
  bool hasDefaultCashbackPercentage() => _defaultCashbackPercentage != null;

  // "oneAdditionalCashbackPercentage" field.
  bool? _oneAdditionalCashbackPercentage;
  bool get oneAdditionalCashbackPercentage =>
      _oneAdditionalCashbackPercentage ?? false;
  bool hasOneAdditionalCashbackPercentage() =>
      _oneAdditionalCashbackPercentage != null;

  // "secondAdditionalCashbackPercentage" field.
  bool? _secondAdditionalCashbackPercentage;
  bool get secondAdditionalCashbackPercentage =>
      _secondAdditionalCashbackPercentage ?? false;
  bool hasSecondAdditionalCashbackPercentage() =>
      _secondAdditionalCashbackPercentage != null;

  // "customerVisitRewardsCreatedProducts" field.
  List<CustomerVisitRewardsCreatedProductsStruct>?
      _customerVisitRewardsCreatedProducts;
  List<CustomerVisitRewardsCreatedProductsStruct>
      get customerVisitRewardsCreatedProducts =>
          _customerVisitRewardsCreatedProducts ?? const [];
  bool hasCustomerVisitRewardsCreatedProducts() =>
      _customerVisitRewardsCreatedProducts != null;

  // "additionalCashbackConfigurations" field.
  List<AdditionalCashbackConfigurationsStruct>?
      _additionalCashbackConfigurations;
  List<AdditionalCashbackConfigurationsStruct>
      get additionalCashbackConfigurations =>
          _additionalCashbackConfigurations ?? const [];
  bool hasAdditionalCashbackConfigurations() =>
      _additionalCashbackConfigurations != null;

  // "isMinimumSpendingPerVisit" field.
  bool? _isMinimumSpendingPerVisit;
  bool get isMinimumSpendingPerVisit => _isMinimumSpendingPerVisit ?? false;
  bool hasIsMinimumSpendingPerVisit() => _isMinimumSpendingPerVisit != null;

  // "minimumSpendingPerVisit" field.
  double? _minimumSpendingPerVisit;
  double get minimumSpendingPerVisit => _minimumSpendingPerVisit ?? 0.0;
  bool hasMinimumSpendingPerVisit() => _minimumSpendingPerVisit != null;

  // "isMaximumSpendingPerVisit" field.
  bool? _isMaximumSpendingPerVisit;
  bool get isMaximumSpendingPerVisit => _isMaximumSpendingPerVisit ?? false;
  bool hasIsMaximumSpendingPerVisit() => _isMaximumSpendingPerVisit != null;

  // "maximumSpendingPerVisit" field.
  double? _maximumSpendingPerVisit;
  double get maximumSpendingPerVisit => _maximumSpendingPerVisit ?? 0.0;
  bool hasMaximumSpendingPerVisit() => _maximumSpendingPerVisit != null;

  // "isMaximumVisitsPerDay" field.
  bool? _isMaximumVisitsPerDay;
  bool get isMaximumVisitsPerDay => _isMaximumVisitsPerDay ?? false;
  bool hasIsMaximumVisitsPerDay() => _isMaximumVisitsPerDay != null;

  // "maximumVisitsPerDay" field.
  int? _maximumVisitsPerDay;
  int get maximumVisitsPerDay => _maximumVisitsPerDay ?? 0;
  bool hasMaximumVisitsPerDay() => _maximumVisitsPerDay != null;

  // "isMaximumVisitsPerWeek" field.
  bool? _isMaximumVisitsPerWeek;
  bool get isMaximumVisitsPerWeek => _isMaximumVisitsPerWeek ?? false;
  bool hasIsMaximumVisitsPerWeek() => _isMaximumVisitsPerWeek != null;

  // "maximumVisitsPerWeek" field.
  double? _maximumVisitsPerWeek;
  double get maximumVisitsPerWeek => _maximumVisitsPerWeek ?? 0.0;
  bool hasMaximumVisitsPerWeek() => _maximumVisitsPerWeek != null;

  // "isMaximumVisitsPerMonth" field.
  bool? _isMaximumVisitsPerMonth;
  bool get isMaximumVisitsPerMonth => _isMaximumVisitsPerMonth ?? false;
  bool hasIsMaximumVisitsPerMonth() => _isMaximumVisitsPerMonth != null;

  // "maximumVisitsPerMonth" field.
  int? _maximumVisitsPerMonth;
  int get maximumVisitsPerMonth => _maximumVisitsPerMonth ?? 0;
  bool hasMaximumVisitsPerMonth() => _maximumVisitsPerMonth != null;

  // "defaultPointsConversionRate" field.
  DefaultPointsConversionRateStruct? _defaultPointsConversionRate;
  DefaultPointsConversionRateStruct get defaultPointsConversionRate =>
      _defaultPointsConversionRate ?? DefaultPointsConversionRateStruct();
  bool hasDefaultPointsConversionRate() => _defaultPointsConversionRate != null;

  // "isAdditionalPointsConversion" field.
  bool? _isAdditionalPointsConversion;
  bool get isAdditionalPointsConversion =>
      _isAdditionalPointsConversion ?? false;
  bool hasIsAdditionalPointsConversion() =>
      _isAdditionalPointsConversion != null;

  // "additionalPointsConversionConfigurations" field.
  List<AdditionalPointsConversionConfigurationsStruct>?
      _additionalPointsConversionConfigurations;
  List<AdditionalPointsConversionConfigurationsStruct>
      get additionalPointsConversionConfigurations =>
          _additionalPointsConversionConfigurations ?? const [];
  bool hasAdditionalPointsConversionConfigurations() =>
      _additionalPointsConversionConfigurations != null;

  // "isMinimumPurchaseForCreditBalance" field.
  bool? _isMinimumPurchaseForCreditBalance;
  bool get isMinimumPurchaseForCreditBalance =>
      _isMinimumPurchaseForCreditBalance ?? false;
  bool hasIsMinimumPurchaseForCreditBalance() =>
      _isMinimumPurchaseForCreditBalance != null;

  // "creditRedemptionLimitType" field.
  String? _creditRedemptionLimitType;
  String get creditRedemptionLimitType => _creditRedemptionLimitType ?? '';
  bool hasCreditRedemptionLimitType() => _creditRedemptionLimitType != null;

  // "nominalCashbackDailyLimit" field.
  double? _nominalCashbackDailyLimit;
  double get nominalCashbackDailyLimit => _nominalCashbackDailyLimit ?? 0.0;
  bool hasNominalCashbackDailyLimit() => _nominalCashbackDailyLimit != null;

  // "maxCashbackPercentagePerTransaction" field.
  double? _maxCashbackPercentagePerTransaction;
  double get maxCashbackPercentagePerTransaction =>
      _maxCashbackPercentagePerTransaction ?? 0.0;
  bool hasMaxCashbackPercentagePerTransaction() =>
      _maxCashbackPercentagePerTransaction != null;

  // "isRoundingCashback" field.
  bool? _isRoundingCashback;
  bool get isRoundingCashback => _isRoundingCashback ?? false;
  bool hasIsRoundingCashback() => _isRoundingCashback != null;

  // "isMinimumPointsRewardPaymentRequired" field.
  bool? _isMinimumPointsRewardPaymentRequired;
  bool get isMinimumPointsRewardPaymentRequired =>
      _isMinimumPointsRewardPaymentRequired ?? false;
  bool hasIsMinimumPointsRewardPaymentRequired() =>
      _isMinimumPointsRewardPaymentRequired != null;

  // "minimumPointsRewardPaymentRequired" field.
  double? _minimumPointsRewardPaymentRequired;
  double get minimumPointsRewardPaymentRequired =>
      _minimumPointsRewardPaymentRequired ?? 0.0;
  bool hasMinimumPointsRewardPaymentRequired() =>
      _minimumPointsRewardPaymentRequired != null;

  // "isReferenceActive" field.
  bool? _isReferenceActive;
  bool get isReferenceActive => _isReferenceActive ?? false;
  bool hasIsReferenceActive() => _isReferenceActive != null;

  // "companyCountry" field.
  String? _companyCountry;
  String get companyCountry => _companyCountry ?? '';
  bool hasCompanyCountry() => _companyCountry != null;

  // "promoLimitNumber" field.
  int? _promoLimitNumber;
  int get promoLimitNumber => _promoLimitNumber ?? 0;
  bool hasPromoLimitNumber() => _promoLimitNumber != null;

  // "licenseNumber" field.
  String? _licenseNumber;
  String get licenseNumber => _licenseNumber ?? '';
  bool hasLicenseNumber() => _licenseNumber != null;

  // "openingHours" field.
  String? _openingHours;
  String get openingHours => _openingHours ?? '';
  bool hasOpeningHours() => _openingHours != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  bool hasCustomerEmail() => _customerEmail != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "customerCode" field.
  String? _customerCode;
  String get customerCode => _customerCode ?? '';
  bool hasCustomerCode() => _customerCode != null;

  // "companyStats" field.
  CompanyStatsStruct? _companyStats;
  CompanyStatsStruct get companyStats => _companyStats ?? CompanyStatsStruct();
  bool hasCompanyStats() => _companyStats != null;

  // "additionalCashbackPercentageLimitNumber" field.
  int? _additionalCashbackPercentageLimitNumber;
  int get additionalCashbackPercentageLimitNumber =>
      _additionalCashbackPercentageLimitNumber ?? 0;
  bool hasAdditionalCashbackPercentageLimitNumber() =>
      _additionalCashbackPercentageLimitNumber != null;

  // "isBranded" field.
  bool? _isBranded;
  bool get isBranded => _isBranded ?? false;
  bool hasIsBranded() => _isBranded != null;

  // "isInvitationOnly" field.
  bool? _isInvitationOnly;
  bool get isInvitationOnly => _isInvitationOnly ?? false;
  bool hasIsInvitationOnly() => _isInvitationOnly != null;

  // "customerPhysicalAddress" field.
  String? _customerPhysicalAddress;
  String get customerPhysicalAddress => _customerPhysicalAddress ?? '';
  bool hasCustomerPhysicalAddress() => _customerPhysicalAddress != null;

  // "minimumPurchaseForCreditBalance" field.
  double? _minimumPurchaseForCreditBalance;
  double get minimumPurchaseForCreditBalance =>
      _minimumPurchaseForCreditBalance ?? 0.0;
  bool hasMinimumPurchaseForCreditBalance() =>
      _minimumPurchaseForCreditBalance != null;

  // "isMaxCashbackPercentagePerTransaction" field.
  bool? _isMaxCashbackPercentagePerTransaction;
  bool get isMaxCashbackPercentagePerTransaction =>
      _isMaxCashbackPercentagePerTransaction ?? false;
  bool hasIsMaxCashbackPercentagePerTransaction() =>
      _isMaxCashbackPercentagePerTransaction != null;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _companyImage = snapshotData['companyImage'] as String?;
    _locationAddress = snapshotData['locationAddress'] as String?;
    _locationCity = snapshotData['locationCity'] as String?;
    _companyEmail = snapshotData['companyEmail'] as String?;
    _companyTelephoneNumber = snapshotData['companyTelephoneNumber'] as String?;
    _companyQrCode = snapshotData['companyQrCode'] as String?;
    _companyMembershipPlan = snapshotData['companyMembershipPlan'] as String?;
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
    _adminName = snapshotData['adminName'] as String?;
    _companyStartDate = snapshotData['companyStartDate'] as DateTime?;
    _companyExpirationDate = snapshotData['companyExpirationDate'] as DateTime?;
    _adminCountryCode = snapshotData['adminCountryCode'] as String?;
    _companyCountryCode = snapshotData['companyCountryCode'] as String?;
    _visitsRequiredForReward =
        castToType<int>(snapshotData['visitsRequiredForReward']);
    _minimumSpendPerVisit =
        castToType<double>(snapshotData['minimumSpendPerVisit']);
    _maxVisitsPerDay = castToType<int>(snapshotData['maxVisitsPerDay']);
    _maxVisitsPerWeek = castToType<int>(snapshotData['maxVisitsPerWeek']);
    _maxVisitsPerMonth = castToType<int>(snapshotData['maxVisitsPerMonth']);
    _minimumPaymentRequired =
        castToType<double>(snapshotData['minimumPaymentRequired']);
    _amountBalance = castToType<double>(snapshotData['amountBalance']);
    _pointBalance = castToType<int>(snapshotData['pointBalance']);
    _companyVatNumber = snapshotData['companyVatNumber'] as String?;
    _adminTelephoneNumber = snapshotData['adminTelephoneNumber'] as String?;
    _isMultiLocation = snapshotData['isMultiLocation'] as bool?;
    _isAnnual = snapshotData['isAnnual'] as bool?;
    _totalAmount = castToType<double>(snapshotData['totalAmount']);
    _numOfUsers = castToType<int>(snapshotData['numOfUsers']);
    _adminEmail = snapshotData['adminEmail'] as String?;
    _urlWebsite = snapshotData['urlWebsite'] as String?;
    _shops = getStructList(
      snapshotData['shops'],
      CompanyShopsStruct.fromMap,
    );
    _companyStatus = snapshotData['companyStatus'] as bool?;
    _isMaximumCashbackLimit = snapshotData['isMaximumCashbackLimit'] as bool?;
    _maximumCashbackLimit =
        castToType<double>(snapshotData['maximumCashbackLimit']);
    _isMinimumPurchaseAmountPerTransaction =
        snapshotData['isMinimumPurchaseAmountPerTransaction'] as bool?;
    _minimumPurchaseAmountPerTransaction =
        castToType<double>(snapshotData['minimumPurchaseAmountPerTransaction']);
    _isMaximumCashBackPerTransaction =
        snapshotData['isMaximumCashBackPerTransaction'] as bool?;
    _isIncludeVatOnCashback = snapshotData['isIncludeVatOnCashback'] as bool?;
    _vatPercentage = castToType<double>(snapshotData['vatPercentage']);
    _isApplyCashbackBalanceIfRedeeming =
        snapshotData['isApplyCashbackBalanceIfRedeeming'] as bool?;
    _defaultCashbackPercentage =
        castToType<double>(snapshotData['defaultCashbackPercentage']);
    _oneAdditionalCashbackPercentage =
        snapshotData['oneAdditionalCashbackPercentage'] as bool?;
    _secondAdditionalCashbackPercentage =
        snapshotData['secondAdditionalCashbackPercentage'] as bool?;
    _customerVisitRewardsCreatedProducts = getStructList(
      snapshotData['customerVisitRewardsCreatedProducts'],
      CustomerVisitRewardsCreatedProductsStruct.fromMap,
    );
    _additionalCashbackConfigurations = getStructList(
      snapshotData['additionalCashbackConfigurations'],
      AdditionalCashbackConfigurationsStruct.fromMap,
    );
    _isMinimumSpendingPerVisit =
        snapshotData['isMinimumSpendingPerVisit'] as bool?;
    _minimumSpendingPerVisit =
        castToType<double>(snapshotData['minimumSpendingPerVisit']);
    _isMaximumSpendingPerVisit =
        snapshotData['isMaximumSpendingPerVisit'] as bool?;
    _maximumSpendingPerVisit =
        castToType<double>(snapshotData['maximumSpendingPerVisit']);
    _isMaximumVisitsPerDay = snapshotData['isMaximumVisitsPerDay'] as bool?;
    _maximumVisitsPerDay = castToType<int>(snapshotData['maximumVisitsPerDay']);
    _isMaximumVisitsPerWeek = snapshotData['isMaximumVisitsPerWeek'] as bool?;
    _maximumVisitsPerWeek =
        castToType<double>(snapshotData['maximumVisitsPerWeek']);
    _isMaximumVisitsPerMonth = snapshotData['isMaximumVisitsPerMonth'] as bool?;
    _maximumVisitsPerMonth =
        castToType<int>(snapshotData['maximumVisitsPerMonth']);
    _defaultPointsConversionRate = snapshotData['defaultPointsConversionRate']
            is DefaultPointsConversionRateStruct
        ? snapshotData['defaultPointsConversionRate']
        : DefaultPointsConversionRateStruct.maybeFromMap(
            snapshotData['defaultPointsConversionRate']);
    _isAdditionalPointsConversion =
        snapshotData['isAdditionalPointsConversion'] as bool?;
    _additionalPointsConversionConfigurations = getStructList(
      snapshotData['additionalPointsConversionConfigurations'],
      AdditionalPointsConversionConfigurationsStruct.fromMap,
    );
    _isMinimumPurchaseForCreditBalance =
        snapshotData['isMinimumPurchaseForCreditBalance'] as bool?;
    _creditRedemptionLimitType =
        snapshotData['creditRedemptionLimitType'] as String?;
    _nominalCashbackDailyLimit =
        castToType<double>(snapshotData['nominalCashbackDailyLimit']);
    _maxCashbackPercentagePerTransaction =
        castToType<double>(snapshotData['maxCashbackPercentagePerTransaction']);
    _isRoundingCashback = snapshotData['isRoundingCashback'] as bool?;
    _isMinimumPointsRewardPaymentRequired =
        snapshotData['isMinimumPointsRewardPaymentRequired'] as bool?;
    _minimumPointsRewardPaymentRequired =
        castToType<double>(snapshotData['minimumPointsRewardPaymentRequired']);
    _isReferenceActive = snapshotData['isReferenceActive'] as bool?;
    _companyCountry = snapshotData['companyCountry'] as String?;
    _promoLimitNumber = castToType<int>(snapshotData['promoLimitNumber']);
    _licenseNumber = snapshotData['licenseNumber'] as String?;
    _openingHours = snapshotData['openingHours'] as String?;
    _customerEmail = snapshotData['customerEmail'] as String?;
    _customerPhone = snapshotData['customerPhone'] as String?;
    _customerCode = snapshotData['customerCode'] as String?;
    _companyStats = snapshotData['companyStats'] is CompanyStatsStruct
        ? snapshotData['companyStats']
        : CompanyStatsStruct.maybeFromMap(snapshotData['companyStats']);
    _additionalCashbackPercentageLimitNumber = castToType<int>(
        snapshotData['additionalCashbackPercentageLimitNumber']);
    _isBranded = snapshotData['isBranded'] as bool?;
    _isInvitationOnly = snapshotData['isInvitationOnly'] as bool?;
    _customerPhysicalAddress =
        snapshotData['customerPhysicalAddress'] as String?;
    _minimumPurchaseForCreditBalance =
        castToType<double>(snapshotData['minimumPurchaseForCreditBalance']);
    _isMaxCashbackPercentagePerTransaction =
        snapshotData['isMaxCashbackPercentagePerTransaction'] as bool?;
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
  String? loyaltySystem,
  bool? vatIncluded,
  bool? cashBackLimits,
  double? minimunPurchaseAmount,
  double? cashBackPercentage,
  double? maximumCashBackPerTransaction,
  String? companyId,
  String? adminName,
  DateTime? companyStartDate,
  DateTime? companyExpirationDate,
  String? adminCountryCode,
  String? companyCountryCode,
  int? visitsRequiredForReward,
  double? minimumSpendPerVisit,
  int? maxVisitsPerDay,
  int? maxVisitsPerWeek,
  int? maxVisitsPerMonth,
  double? minimumPaymentRequired,
  double? amountBalance,
  int? pointBalance,
  String? companyVatNumber,
  String? adminTelephoneNumber,
  bool? isMultiLocation,
  bool? isAnnual,
  double? totalAmount,
  int? numOfUsers,
  String? adminEmail,
  String? urlWebsite,
  bool? companyStatus,
  bool? isMaximumCashbackLimit,
  double? maximumCashbackLimit,
  bool? isMinimumPurchaseAmountPerTransaction,
  double? minimumPurchaseAmountPerTransaction,
  bool? isMaximumCashBackPerTransaction,
  bool? isIncludeVatOnCashback,
  double? vatPercentage,
  bool? isApplyCashbackBalanceIfRedeeming,
  double? defaultCashbackPercentage,
  bool? oneAdditionalCashbackPercentage,
  bool? secondAdditionalCashbackPercentage,
  bool? isMinimumSpendingPerVisit,
  double? minimumSpendingPerVisit,
  bool? isMaximumSpendingPerVisit,
  double? maximumSpendingPerVisit,
  bool? isMaximumVisitsPerDay,
  int? maximumVisitsPerDay,
  bool? isMaximumVisitsPerWeek,
  double? maximumVisitsPerWeek,
  bool? isMaximumVisitsPerMonth,
  int? maximumVisitsPerMonth,
  DefaultPointsConversionRateStruct? defaultPointsConversionRate,
  bool? isAdditionalPointsConversion,
  bool? isMinimumPurchaseForCreditBalance,
  String? creditRedemptionLimitType,
  double? nominalCashbackDailyLimit,
  double? maxCashbackPercentagePerTransaction,
  bool? isRoundingCashback,
  bool? isMinimumPointsRewardPaymentRequired,
  double? minimumPointsRewardPaymentRequired,
  bool? isReferenceActive,
  String? companyCountry,
  int? promoLimitNumber,
  String? licenseNumber,
  String? openingHours,
  String? customerEmail,
  String? customerPhone,
  String? customerCode,
  CompanyStatsStruct? companyStats,
  int? additionalCashbackPercentageLimitNumber,
  bool? isBranded,
  bool? isInvitationOnly,
  String? customerPhysicalAddress,
  double? minimumPurchaseForCreditBalance,
  bool? isMaxCashbackPercentagePerTransaction,
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
      'loyaltySystem': loyaltySystem,
      'vatIncluded': vatIncluded,
      'cashBackLimits': cashBackLimits,
      'minimunPurchaseAmount': minimunPurchaseAmount,
      'cashBackPercentage': cashBackPercentage,
      'maximumCashBackPerTransaction': maximumCashBackPerTransaction,
      'companyId': companyId,
      'adminName': adminName,
      'companyStartDate': companyStartDate,
      'companyExpirationDate': companyExpirationDate,
      'adminCountryCode': adminCountryCode,
      'companyCountryCode': companyCountryCode,
      'visitsRequiredForReward': visitsRequiredForReward,
      'minimumSpendPerVisit': minimumSpendPerVisit,
      'maxVisitsPerDay': maxVisitsPerDay,
      'maxVisitsPerWeek': maxVisitsPerWeek,
      'maxVisitsPerMonth': maxVisitsPerMonth,
      'minimumPaymentRequired': minimumPaymentRequired,
      'amountBalance': amountBalance,
      'pointBalance': pointBalance,
      'companyVatNumber': companyVatNumber,
      'adminTelephoneNumber': adminTelephoneNumber,
      'isMultiLocation': isMultiLocation,
      'isAnnual': isAnnual,
      'totalAmount': totalAmount,
      'numOfUsers': numOfUsers,
      'adminEmail': adminEmail,
      'urlWebsite': urlWebsite,
      'companyStatus': companyStatus,
      'isMaximumCashbackLimit': isMaximumCashbackLimit,
      'maximumCashbackLimit': maximumCashbackLimit,
      'isMinimumPurchaseAmountPerTransaction':
          isMinimumPurchaseAmountPerTransaction,
      'minimumPurchaseAmountPerTransaction':
          minimumPurchaseAmountPerTransaction,
      'isMaximumCashBackPerTransaction': isMaximumCashBackPerTransaction,
      'isIncludeVatOnCashback': isIncludeVatOnCashback,
      'vatPercentage': vatPercentage,
      'isApplyCashbackBalanceIfRedeeming': isApplyCashbackBalanceIfRedeeming,
      'defaultCashbackPercentage': defaultCashbackPercentage,
      'oneAdditionalCashbackPercentage': oneAdditionalCashbackPercentage,
      'secondAdditionalCashbackPercentage': secondAdditionalCashbackPercentage,
      'isMinimumSpendingPerVisit': isMinimumSpendingPerVisit,
      'minimumSpendingPerVisit': minimumSpendingPerVisit,
      'isMaximumSpendingPerVisit': isMaximumSpendingPerVisit,
      'maximumSpendingPerVisit': maximumSpendingPerVisit,
      'isMaximumVisitsPerDay': isMaximumVisitsPerDay,
      'maximumVisitsPerDay': maximumVisitsPerDay,
      'isMaximumVisitsPerWeek': isMaximumVisitsPerWeek,
      'maximumVisitsPerWeek': maximumVisitsPerWeek,
      'isMaximumVisitsPerMonth': isMaximumVisitsPerMonth,
      'maximumVisitsPerMonth': maximumVisitsPerMonth,
      'defaultPointsConversionRate':
          DefaultPointsConversionRateStruct().toMap(),
      'isAdditionalPointsConversion': isAdditionalPointsConversion,
      'isMinimumPurchaseForCreditBalance': isMinimumPurchaseForCreditBalance,
      'creditRedemptionLimitType': creditRedemptionLimitType,
      'nominalCashbackDailyLimit': nominalCashbackDailyLimit,
      'maxCashbackPercentagePerTransaction':
          maxCashbackPercentagePerTransaction,
      'isRoundingCashback': isRoundingCashback,
      'isMinimumPointsRewardPaymentRequired':
          isMinimumPointsRewardPaymentRequired,
      'minimumPointsRewardPaymentRequired': minimumPointsRewardPaymentRequired,
      'isReferenceActive': isReferenceActive,
      'companyCountry': companyCountry,
      'promoLimitNumber': promoLimitNumber,
      'licenseNumber': licenseNumber,
      'openingHours': openingHours,
      'customerEmail': customerEmail,
      'customerPhone': customerPhone,
      'customerCode': customerCode,
      'companyStats': CompanyStatsStruct().toMap(),
      'additionalCashbackPercentageLimitNumber':
          additionalCashbackPercentageLimitNumber,
      'isBranded': isBranded,
      'isInvitationOnly': isInvitationOnly,
      'customerPhysicalAddress': customerPhysicalAddress,
      'minimumPurchaseForCreditBalance': minimumPurchaseForCreditBalance,
      'isMaxCashbackPercentagePerTransaction':
          isMaxCashbackPercentagePerTransaction,
    }.withoutNulls,
  );

  // Handle nested data for "defaultPointsConversionRate" field.
  addDefaultPointsConversionRateStructData(firestoreData,
      defaultPointsConversionRate, 'defaultPointsConversionRate');

  // Handle nested data for "companyStats" field.
  addCompanyStatsStructData(firestoreData, companyStats, 'companyStats');

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyName == e2?.companyName &&
        e1?.companyImage == e2?.companyImage &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.locationCity == e2?.locationCity &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.companyTelephoneNumber == e2?.companyTelephoneNumber &&
        e1?.companyQrCode == e2?.companyQrCode &&
        e1?.companyMembershipPlan == e2?.companyMembershipPlan &&
        e1?.loyaltySystem == e2?.loyaltySystem &&
        e1?.vatIncluded == e2?.vatIncluded &&
        e1?.cashBackLimits == e2?.cashBackLimits &&
        e1?.minimunPurchaseAmount == e2?.minimunPurchaseAmount &&
        e1?.cashBackPercentage == e2?.cashBackPercentage &&
        e1?.maximumCashBackPerTransaction ==
            e2?.maximumCashBackPerTransaction &&
        e1?.companyId == e2?.companyId &&
        e1?.adminName == e2?.adminName &&
        e1?.companyStartDate == e2?.companyStartDate &&
        e1?.companyExpirationDate == e2?.companyExpirationDate &&
        e1?.adminCountryCode == e2?.adminCountryCode &&
        e1?.companyCountryCode == e2?.companyCountryCode &&
        e1?.visitsRequiredForReward == e2?.visitsRequiredForReward &&
        e1?.minimumSpendPerVisit == e2?.minimumSpendPerVisit &&
        e1?.maxVisitsPerDay == e2?.maxVisitsPerDay &&
        e1?.maxVisitsPerWeek == e2?.maxVisitsPerWeek &&
        e1?.maxVisitsPerMonth == e2?.maxVisitsPerMonth &&
        e1?.minimumPaymentRequired == e2?.minimumPaymentRequired &&
        e1?.amountBalance == e2?.amountBalance &&
        e1?.pointBalance == e2?.pointBalance &&
        e1?.companyVatNumber == e2?.companyVatNumber &&
        e1?.adminTelephoneNumber == e2?.adminTelephoneNumber &&
        e1?.isMultiLocation == e2?.isMultiLocation &&
        e1?.isAnnual == e2?.isAnnual &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.numOfUsers == e2?.numOfUsers &&
        e1?.adminEmail == e2?.adminEmail &&
        e1?.urlWebsite == e2?.urlWebsite &&
        listEquality.equals(e1?.shops, e2?.shops) &&
        e1?.companyStatus == e2?.companyStatus &&
        e1?.isMaximumCashbackLimit == e2?.isMaximumCashbackLimit &&
        e1?.maximumCashbackLimit == e2?.maximumCashbackLimit &&
        e1?.isMinimumPurchaseAmountPerTransaction ==
            e2?.isMinimumPurchaseAmountPerTransaction &&
        e1?.minimumPurchaseAmountPerTransaction ==
            e2?.minimumPurchaseAmountPerTransaction &&
        e1?.isMaximumCashBackPerTransaction ==
            e2?.isMaximumCashBackPerTransaction &&
        e1?.isIncludeVatOnCashback == e2?.isIncludeVatOnCashback &&
        e1?.vatPercentage == e2?.vatPercentage &&
        e1?.isApplyCashbackBalanceIfRedeeming ==
            e2?.isApplyCashbackBalanceIfRedeeming &&
        e1?.defaultCashbackPercentage == e2?.defaultCashbackPercentage &&
        e1?.oneAdditionalCashbackPercentage ==
            e2?.oneAdditionalCashbackPercentage &&
        e1?.secondAdditionalCashbackPercentage ==
            e2?.secondAdditionalCashbackPercentage &&
        listEquality.equals(e1?.customerVisitRewardsCreatedProducts,
            e2?.customerVisitRewardsCreatedProducts) &&
        listEquality.equals(e1?.additionalCashbackConfigurations,
            e2?.additionalCashbackConfigurations) &&
        e1?.isMinimumSpendingPerVisit == e2?.isMinimumSpendingPerVisit &&
        e1?.minimumSpendingPerVisit == e2?.minimumSpendingPerVisit &&
        e1?.isMaximumSpendingPerVisit == e2?.isMaximumSpendingPerVisit &&
        e1?.maximumSpendingPerVisit == e2?.maximumSpendingPerVisit &&
        e1?.isMaximumVisitsPerDay == e2?.isMaximumVisitsPerDay &&
        e1?.maximumVisitsPerDay == e2?.maximumVisitsPerDay &&
        e1?.isMaximumVisitsPerWeek == e2?.isMaximumVisitsPerWeek &&
        e1?.maximumVisitsPerWeek == e2?.maximumVisitsPerWeek &&
        e1?.isMaximumVisitsPerMonth == e2?.isMaximumVisitsPerMonth &&
        e1?.maximumVisitsPerMonth == e2?.maximumVisitsPerMonth &&
        e1?.defaultPointsConversionRate == e2?.defaultPointsConversionRate &&
        e1?.isAdditionalPointsConversion == e2?.isAdditionalPointsConversion &&
        listEquality.equals(e1?.additionalPointsConversionConfigurations,
            e2?.additionalPointsConversionConfigurations) &&
        e1?.isMinimumPurchaseForCreditBalance ==
            e2?.isMinimumPurchaseForCreditBalance &&
        e1?.creditRedemptionLimitType == e2?.creditRedemptionLimitType &&
        e1?.nominalCashbackDailyLimit == e2?.nominalCashbackDailyLimit &&
        e1?.maxCashbackPercentagePerTransaction ==
            e2?.maxCashbackPercentagePerTransaction &&
        e1?.isRoundingCashback == e2?.isRoundingCashback &&
        e1?.isMinimumPointsRewardPaymentRequired ==
            e2?.isMinimumPointsRewardPaymentRequired &&
        e1?.minimumPointsRewardPaymentRequired ==
            e2?.minimumPointsRewardPaymentRequired &&
        e1?.isReferenceActive == e2?.isReferenceActive &&
        e1?.companyCountry == e2?.companyCountry &&
        e1?.promoLimitNumber == e2?.promoLimitNumber &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.openingHours == e2?.openingHours &&
        e1?.customerEmail == e2?.customerEmail &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.customerCode == e2?.customerCode &&
        e1?.companyStats == e2?.companyStats &&
        e1?.additionalCashbackPercentageLimitNumber ==
            e2?.additionalCashbackPercentageLimitNumber &&
        e1?.isBranded == e2?.isBranded &&
        e1?.isInvitationOnly == e2?.isInvitationOnly &&
        e1?.customerPhysicalAddress == e2?.customerPhysicalAddress &&
        e1?.minimumPurchaseForCreditBalance ==
            e2?.minimumPurchaseForCreditBalance &&
        e1?.isMaxCashbackPercentagePerTransaction ==
            e2?.isMaxCashbackPercentagePerTransaction;
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
        e?.loyaltySystem,
        e?.vatIncluded,
        e?.cashBackLimits,
        e?.minimunPurchaseAmount,
        e?.cashBackPercentage,
        e?.maximumCashBackPerTransaction,
        e?.companyId,
        e?.adminName,
        e?.companyStartDate,
        e?.companyExpirationDate,
        e?.adminCountryCode,
        e?.companyCountryCode,
        e?.visitsRequiredForReward,
        e?.minimumSpendPerVisit,
        e?.maxVisitsPerDay,
        e?.maxVisitsPerWeek,
        e?.maxVisitsPerMonth,
        e?.minimumPaymentRequired,
        e?.amountBalance,
        e?.pointBalance,
        e?.companyVatNumber,
        e?.adminTelephoneNumber,
        e?.isMultiLocation,
        e?.isAnnual,
        e?.totalAmount,
        e?.numOfUsers,
        e?.adminEmail,
        e?.urlWebsite,
        e?.shops,
        e?.companyStatus,
        e?.isMaximumCashbackLimit,
        e?.maximumCashbackLimit,
        e?.isMinimumPurchaseAmountPerTransaction,
        e?.minimumPurchaseAmountPerTransaction,
        e?.isMaximumCashBackPerTransaction,
        e?.isIncludeVatOnCashback,
        e?.vatPercentage,
        e?.isApplyCashbackBalanceIfRedeeming,
        e?.defaultCashbackPercentage,
        e?.oneAdditionalCashbackPercentage,
        e?.secondAdditionalCashbackPercentage,
        e?.customerVisitRewardsCreatedProducts,
        e?.additionalCashbackConfigurations,
        e?.isMinimumSpendingPerVisit,
        e?.minimumSpendingPerVisit,
        e?.isMaximumSpendingPerVisit,
        e?.maximumSpendingPerVisit,
        e?.isMaximumVisitsPerDay,
        e?.maximumVisitsPerDay,
        e?.isMaximumVisitsPerWeek,
        e?.maximumVisitsPerWeek,
        e?.isMaximumVisitsPerMonth,
        e?.maximumVisitsPerMonth,
        e?.defaultPointsConversionRate,
        e?.isAdditionalPointsConversion,
        e?.additionalPointsConversionConfigurations,
        e?.isMinimumPurchaseForCreditBalance,
        e?.creditRedemptionLimitType,
        e?.nominalCashbackDailyLimit,
        e?.maxCashbackPercentagePerTransaction,
        e?.isRoundingCashback,
        e?.isMinimumPointsRewardPaymentRequired,
        e?.minimumPointsRewardPaymentRequired,
        e?.isReferenceActive,
        e?.companyCountry,
        e?.promoLimitNumber,
        e?.licenseNumber,
        e?.openingHours,
        e?.customerEmail,
        e?.customerPhone,
        e?.customerCode,
        e?.companyStats,
        e?.additionalCashbackPercentageLimitNumber,
        e?.isBranded,
        e?.isInvitationOnly,
        e?.customerPhysicalAddress,
        e?.minimumPurchaseForCreditBalance,
        e?.isMaxCashbackPercentagePerTransaction
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}
