import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DomicilioRecord extends FirestoreRecord {
  DomicilioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "localizacion" field.
  LatLng? _localizacion;
  LatLng? get localizacion => _localizacion;
  bool hasLocalizacion() => _localizacion != null;

  void _initializeFields() {
    _direccion = snapshotData['direccion'] as String?;
    _foto = snapshotData['foto'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _localizacion = snapshotData['localizacion'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('domicilio');

  static Stream<DomicilioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DomicilioRecord.fromSnapshot(s));

  static Future<DomicilioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DomicilioRecord.fromSnapshot(s));

  static DomicilioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DomicilioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DomicilioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DomicilioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DomicilioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DomicilioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDomicilioRecordData({
  String? direccion,
  String? foto,
  String? nombre,
  LatLng? localizacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'direccion': direccion,
      'foto': foto,
      'nombre': nombre,
      'localizacion': localizacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class DomicilioRecordDocumentEquality implements Equality<DomicilioRecord> {
  const DomicilioRecordDocumentEquality();

  @override
  bool equals(DomicilioRecord? e1, DomicilioRecord? e2) {
    return e1?.direccion == e2?.direccion &&
        e1?.foto == e2?.foto &&
        e1?.nombre == e2?.nombre &&
        e1?.localizacion == e2?.localizacion;
  }

  @override
  int hash(DomicilioRecord? e) => const ListEquality()
      .hash([e?.direccion, e?.foto, e?.nombre, e?.localizacion]);

  @override
  bool isValidKey(Object? o) => o is DomicilioRecord;
}
