import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NovedadesRecord extends FirestoreRecord {
  NovedadesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fechas_de_publicacion" field.
  String? _fechasDePublicacion;
  String get fechasDePublicacion => _fechasDePublicacion ?? '';
  bool hasFechasDePublicacion() => _fechasDePublicacion != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechasDePublicacion = snapshotData['fechas_de_publicacion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('novedades');

  static Stream<NovedadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NovedadesRecord.fromSnapshot(s));

  static Future<NovedadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NovedadesRecord.fromSnapshot(s));

  static NovedadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NovedadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NovedadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NovedadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NovedadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NovedadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNovedadesRecordData({
  String? titulo,
  String? imagen,
  String? descripcion,
  String? fechasDePublicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'imagen': imagen,
      'descripcion': descripcion,
      'fechas_de_publicacion': fechasDePublicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class NovedadesRecordDocumentEquality implements Equality<NovedadesRecord> {
  const NovedadesRecordDocumentEquality();

  @override
  bool equals(NovedadesRecord? e1, NovedadesRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.imagen == e2?.imagen &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechasDePublicacion == e2?.fechasDePublicacion;
  }

  @override
  int hash(NovedadesRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.imagen, e?.descripcion, e?.fechasDePublicacion]);

  @override
  bool isValidKey(Object? o) => o is NovedadesRecord;
}
