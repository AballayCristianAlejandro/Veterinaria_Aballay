import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PrescripcionesRecord extends FirestoreRecord {
  PrescripcionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "fecha_publicacion" field.
  String? _fechaPublicacion;
  String get fechaPublicacion => _fechaPublicacion ?? '';
  bool hasFechaPublicacion() => _fechaPublicacion != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "idu_paciente" field.
  String? _iduPaciente;
  String get iduPaciente => _iduPaciente ?? '';
  bool hasIduPaciente() => _iduPaciente != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _fechaPublicacion = snapshotData['fecha_publicacion'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _iduPaciente = snapshotData['idu_paciente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prescripciones');

  static Stream<PrescripcionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrescripcionesRecord.fromSnapshot(s));

  static Future<PrescripcionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrescripcionesRecord.fromSnapshot(s));

  static PrescripcionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrescripcionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrescripcionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrescripcionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrescripcionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrescripcionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrescripcionesRecordData({
  String? titulo,
  String? fechaPublicacion,
  String? descripcion,
  String? iduPaciente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'fecha_publicacion': fechaPublicacion,
      'descripcion': descripcion,
      'idu_paciente': iduPaciente,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrescripcionesRecordDocumentEquality
    implements Equality<PrescripcionesRecord> {
  const PrescripcionesRecordDocumentEquality();

  @override
  bool equals(PrescripcionesRecord? e1, PrescripcionesRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.fechaPublicacion == e2?.fechaPublicacion &&
        e1?.descripcion == e2?.descripcion &&
        e1?.iduPaciente == e2?.iduPaciente;
  }

  @override
  int hash(PrescripcionesRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.fechaPublicacion, e?.descripcion, e?.iduPaciente]);

  @override
  bool isValidKey(Object? o) => o is PrescripcionesRecord;
}
