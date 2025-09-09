import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonthlyRevenueRecord extends FirestoreRecord {
  MonthlyRevenueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  bool hasMonth() => _month != null;

  // "revenue" field.
  double? _revenue;
  double get revenue => _revenue ?? 0.0;
  bool hasRevenue() => _revenue != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "monthName" field.
  String? _monthName;
  String get monthName => _monthName ?? '';
  bool hasMonthName() => _monthName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _month = snapshotData['month'] as String?;
    _revenue = castToType<double>(snapshotData['revenue']);
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _monthName = snapshotData['monthName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('monthlyRevenue')
          : FirebaseFirestore.instance.collectionGroup('monthlyRevenue');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('monthlyRevenue').doc(id);

  static Stream<MonthlyRevenueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonthlyRevenueRecord.fromSnapshot(s));

  static Future<MonthlyRevenueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MonthlyRevenueRecord.fromSnapshot(s));

  static MonthlyRevenueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MonthlyRevenueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonthlyRevenueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonthlyRevenueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonthlyRevenueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonthlyRevenueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonthlyRevenueRecordData({
  String? month,
  double? revenue,
  DateTime? updatedAt,
  String? monthName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'month': month,
      'revenue': revenue,
      'updatedAt': updatedAt,
      'monthName': monthName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonthlyRevenueRecordDocumentEquality
    implements Equality<MonthlyRevenueRecord> {
  const MonthlyRevenueRecordDocumentEquality();

  @override
  bool equals(MonthlyRevenueRecord? e1, MonthlyRevenueRecord? e2) {
    return e1?.month == e2?.month &&
        e1?.revenue == e2?.revenue &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.monthName == e2?.monthName;
  }

  @override
  int hash(MonthlyRevenueRecord? e) => const ListEquality()
      .hash([e?.month, e?.revenue, e?.updatedAt, e?.monthName]);

  @override
  bool isValidKey(Object? o) => o is MonthlyRevenueRecord;
}
