import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _miimagentemporal = '';
  String get miimagentemporal => _miimagentemporal;
  set miimagentemporal(String value) {
    _miimagentemporal = value;
  }

  String _imagentemporalpatient = '';
  String get imagentemporalpatient => _imagentemporalpatient;
  set imagentemporalpatient(String value) {
    _imagentemporalpatient = value;
  }

  bool _buscando = false;
  bool get buscando => _buscando;
  set buscando(bool value) {
    _buscando = value;
  }

  bool _busnadocliente = false;
  bool get busnadocliente => _busnadocliente;
  set busnadocliente(bool value) {
    _busnadocliente = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
