import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PatientRecord extends FirestoreRecord {
  PatientRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "alimento" field.
  String? _alimento;
  String get alimento => _alimento ?? '';
  bool hasAlimento() => _alimento != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "Idu" field.
  String? _idu;
  String get idu => _idu ?? '';
  bool hasIdu() => _idu != null;

  // "fecha_nacimiento" field.
  String? _fechaNacimiento;
  String get fechaNacimiento => _fechaNacimiento ?? '';
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "ultimo_celo" field.
  String? _ultimoCelo;
  String get ultimoCelo => _ultimoCelo ?? '';
  bool hasUltimoCelo() => _ultimoCelo != null;

  // "ultima_actulizacion" field.
  DateTime? _ultimaActulizacion;
  DateTime? get ultimaActulizacion => _ultimaActulizacion;
  bool hasUltimaActulizacion() => _ultimaActulizacion != null;

  // "castrado" field.
  String? _castrado;
  String get castrado => _castrado ?? '';
  bool hasCastrado() => _castrado != null;

  // "vacinne" field.
  String? _vacinne;
  String get vacinne => _vacinne ?? '';
  bool hasVacinne() => _vacinne != null;

  // "Examen_Clinico" field.
  String? _examenClinico;
  String get examenClinico => _examenClinico ?? '';
  bool hasExamenClinico() => _examenClinico != null;

  // "Prescripcion" field.
  String? _prescripcion;
  String get prescripcion => _prescripcion ?? '';
  bool hasPrescripcion() => _prescripcion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _peso = castToType<double>(snapshotData['peso']);
    _sexo = snapshotData['sexo'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _alimento = snapshotData['alimento'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _raza = snapshotData['raza'] as String?;
    _idu = snapshotData['Idu'] as String?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as String?;
    _ultimoCelo = snapshotData['ultimo_celo'] as String?;
    _ultimaActulizacion = snapshotData['ultima_actulizacion'] as DateTime?;
    _castrado = snapshotData['castrado'] as String?;
    _vacinne = snapshotData['vacinne'] as String?;
    _examenClinico = snapshotData['Examen_Clinico'] as String?;
    _prescripcion = snapshotData['Prescripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patient');

  static Stream<PatientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientRecord.fromSnapshot(s));

  static Future<PatientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PatientRecord.fromSnapshot(s));

  static PatientRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientRecordData({
  String? name,
  String? photoUrl,
  double? peso,
  String? sexo,
  DateTime? createdTime,
  String? alimento,
  String? descripcion,
  DocumentReference? users,
  String? raza,
  String? idu,
  String? fechaNacimiento,
  String? ultimoCelo,
  DateTime? ultimaActulizacion,
  String? castrado,
  String? vacinne,
  String? examenClinico,
  String? prescripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo_url': photoUrl,
      'peso': peso,
      'sexo': sexo,
      'created_time': createdTime,
      'alimento': alimento,
      'descripcion': descripcion,
      'users': users,
      'raza': raza,
      'Idu': idu,
      'fecha_nacimiento': fechaNacimiento,
      'ultimo_celo': ultimoCelo,
      'ultima_actulizacion': ultimaActulizacion,
      'castrado': castrado,
      'vacinne': vacinne,
      'Examen_Clinico': examenClinico,
      'Prescripcion': prescripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientRecordDocumentEquality implements Equality<PatientRecord> {
  const PatientRecordDocumentEquality();

  @override
  bool equals(PatientRecord? e1, PatientRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.peso == e2?.peso &&
        e1?.sexo == e2?.sexo &&
        e1?.createdTime == e2?.createdTime &&
        e1?.alimento == e2?.alimento &&
        e1?.descripcion == e2?.descripcion &&
        e1?.users == e2?.users &&
        e1?.raza == e2?.raza &&
        e1?.idu == e2?.idu &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.ultimoCelo == e2?.ultimoCelo &&
        e1?.ultimaActulizacion == e2?.ultimaActulizacion &&
        e1?.castrado == e2?.castrado &&
        e1?.vacinne == e2?.vacinne &&
        e1?.examenClinico == e2?.examenClinico &&
        e1?.prescripcion == e2?.prescripcion;
  }

  @override
  int hash(PatientRecord? e) => const ListEquality().hash([
        e?.name,
        e?.photoUrl,
        e?.peso,
        e?.sexo,
        e?.createdTime,
        e?.alimento,
        e?.descripcion,
        e?.users,
        e?.raza,
        e?.idu,
        e?.fechaNacimiento,
        e?.ultimoCelo,
        e?.ultimaActulizacion,
        e?.castrado,
        e?.vacinne,
        e?.examenClinico,
        e?.prescripcion
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientRecord;
}
