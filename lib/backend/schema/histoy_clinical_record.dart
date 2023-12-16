import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HistoyClinicalRecord extends FirestoreRecord {
  HistoyClinicalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "examen_fisico" field.
  String? _examenFisico;
  String get examenFisico => _examenFisico ?? '';
  bool hasExamenFisico() => _examenFisico != null;

  // "diagnostico" field.
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  bool hasDiagnostico() => _diagnostico != null;

  // "tratamiento" field.
  String? _tratamiento;
  String get tratamiento => _tratamiento ?? '';
  bool hasTratamiento() => _tratamiento != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "doctor" field.
  String? _doctor;
  String get doctor => _doctor ?? '';
  bool hasDoctor() => _doctor != null;

  void _initializeFields() {
    _patient = snapshotData['patient'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _examenFisico = snapshotData['examen_fisico'] as String?;
    _diagnostico = snapshotData['diagnostico'] as String?;
    _tratamiento = snapshotData['tratamiento'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _doctor = snapshotData['doctor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('histoy_clinical');

  static Stream<HistoyClinicalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoyClinicalRecord.fromSnapshot(s));

  static Future<HistoyClinicalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoyClinicalRecord.fromSnapshot(s));

  static HistoyClinicalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoyClinicalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoyClinicalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoyClinicalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoyClinicalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoyClinicalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoyClinicalRecordData({
  DocumentReference? patient,
  String? description,
  String? examenFisico,
  String? diagnostico,
  String? tratamiento,
  String? fecha,
  String? doctor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patient': patient,
      'description': description,
      'examen_fisico': examenFisico,
      'diagnostico': diagnostico,
      'tratamiento': tratamiento,
      'fecha': fecha,
      'doctor': doctor,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoyClinicalRecordDocumentEquality
    implements Equality<HistoyClinicalRecord> {
  const HistoyClinicalRecordDocumentEquality();

  @override
  bool equals(HistoyClinicalRecord? e1, HistoyClinicalRecord? e2) {
    return e1?.patient == e2?.patient &&
        e1?.description == e2?.description &&
        e1?.examenFisico == e2?.examenFisico &&
        e1?.diagnostico == e2?.diagnostico &&
        e1?.tratamiento == e2?.tratamiento &&
        e1?.fecha == e2?.fecha &&
        e1?.doctor == e2?.doctor;
  }

  @override
  int hash(HistoyClinicalRecord? e) => const ListEquality().hash([
        e?.patient,
        e?.description,
        e?.examenFisico,
        e?.diagnostico,
        e?.tratamiento,
        e?.fecha,
        e?.doctor
      ]);

  @override
  bool isValidKey(Object? o) => o is HistoyClinicalRecord;
}
