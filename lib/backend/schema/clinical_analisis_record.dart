import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClinicalAnalisisRecord extends FirestoreRecord {
  ClinicalAnalisisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _details = snapshotData['details'] as String?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clinical_analisis');

  static Stream<ClinicalAnalisisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClinicalAnalisisRecord.fromSnapshot(s));

  static Future<ClinicalAnalisisRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClinicalAnalisisRecord.fromSnapshot(s));

  static ClinicalAnalisisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClinicalAnalisisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClinicalAnalisisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClinicalAnalisisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClinicalAnalisisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClinicalAnalisisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClinicalAnalisisRecordData({
  String? name,
  String? details,
  DocumentReference? patient,
  String? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'details': details,
      'patient': patient,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClinicalAnalisisRecordDocumentEquality
    implements Equality<ClinicalAnalisisRecord> {
  const ClinicalAnalisisRecordDocumentEquality();

  @override
  bool equals(ClinicalAnalisisRecord? e1, ClinicalAnalisisRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.details == e2?.details &&
        e1?.patient == e2?.patient &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ClinicalAnalisisRecord? e) =>
      const ListEquality().hash([e?.name, e?.details, e?.patient, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is ClinicalAnalisisRecord;
}
