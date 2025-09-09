import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "currencyCode" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  bool hasCurrencyCode() => _currencyCode != null;

  // "symbol" field.
  String? _symbol;
  String get symbol => _symbol ?? '';
  bool hasSymbol() => _symbol != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  bool hasFlag() => _flag != null;

  // "display_value" field.
  String? _displayValue;
  String get displayValue => _displayValue ?? '';
  bool hasDisplayValue() => _displayValue != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  bool hasTimezone() => _timezone != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _currency = snapshotData['currency'] as String?;
    _currencyCode = snapshotData['currencyCode'] as String?;
    _symbol = snapshotData['symbol'] as String?;
    _countryCode = snapshotData['country_code'] as String?;
    _flag = snapshotData['flag'] as String?;
    _displayValue = snapshotData['display_value'] as String?;
    _timezone = snapshotData['timezone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countries');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountriesRecordData({
  String? name,
  String? currency,
  String? currencyCode,
  String? symbol,
  String? countryCode,
  String? flag,
  String? displayValue,
  String? timezone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'currency': currency,
      'currencyCode': currencyCode,
      'symbol': symbol,
      'country_code': countryCode,
      'flag': flag,
      'display_value': displayValue,
      'timezone': timezone,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.currency == e2?.currency &&
        e1?.currencyCode == e2?.currencyCode &&
        e1?.symbol == e2?.symbol &&
        e1?.countryCode == e2?.countryCode &&
        e1?.flag == e2?.flag &&
        e1?.displayValue == e2?.displayValue &&
        e1?.timezone == e2?.timezone;
  }

  @override
  int hash(CountriesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.currency,
        e?.currencyCode,
        e?.symbol,
        e?.countryCode,
        e?.flag,
        e?.displayValue,
        e?.timezone
      ]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
