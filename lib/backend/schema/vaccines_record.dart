import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class VaccinesRecord extends FirestoreRecord {
  VaccinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "fecha_aplicacion" field.
  String? _fechaAplicacion;
  String get fechaAplicacion => _fechaAplicacion ?? '';
  bool hasFechaAplicacion() => _fechaAplicacion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _fechaAplicacion = snapshotData['fecha_aplicacion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vaccines');

  static Stream<VaccinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VaccinesRecord.fromSnapshot(s));

  static Future<VaccinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VaccinesRecord.fromSnapshot(s));

  static VaccinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VaccinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VaccinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VaccinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VaccinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VaccinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVaccinesRecordData({
  String? name,
  DocumentReference? patient,
  String? description,
  String? fechaAplicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'patient': patient,
      'description': description,
      'fecha_aplicacion': fechaAplicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class VaccinesRecordDocumentEquality implements Equality<VaccinesRecord> {
  const VaccinesRecordDocumentEquality();

  @override
  bool equals(VaccinesRecord? e1, VaccinesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.patient == e2?.patient &&
        e1?.description == e2?.description &&
        e1?.fechaAplicacion == e2?.fechaAplicacion;
  }

  @override
  int hash(VaccinesRecord? e) => const ListEquality()
      .hash([e?.name, e?.patient, e?.description, e?.fechaAplicacion]);

  @override
  bool isValidKey(Object? o) => o is VaccinesRecord;
}
