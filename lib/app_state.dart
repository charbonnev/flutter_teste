import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_usuarioLogado')) {
        try {
          final serializedData = prefs.getString('ff_usuarioLogado') ?? '{}';
          _usuarioLogado =
              UsersStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_consultoriaAtual')) {
        try {
          final serializedData = prefs.getString('ff_consultoriaAtual') ?? '{}';
          _consultoriaAtual =
              ConsultoriaStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UsersStruct _usuarioLogado = UsersStruct.fromSerializableMap(jsonDecode(
      '{\"created_at\":\"1702511580000\",\"Dia_Preferido\":\"Terca\"}'));
  UsersStruct get usuarioLogado => _usuarioLogado;
  set usuarioLogado(UsersStruct _value) {
    _usuarioLogado = _value;
    prefs.setString('ff_usuarioLogado', _value.serialize());
  }

  void updateUsuarioLogadoStruct(Function(UsersStruct) updateFn) {
    updateFn(_usuarioLogado);
    prefs.setString('ff_usuarioLogado', _usuarioLogado.serialize());
  }

  ConsultoriaStruct _consultoriaAtual = ConsultoriaStruct();
  ConsultoriaStruct get consultoriaAtual => _consultoriaAtual;
  set consultoriaAtual(ConsultoriaStruct _value) {
    _consultoriaAtual = _value;
    prefs.setString('ff_consultoriaAtual', _value.serialize());
  }

  void updateConsultoriaAtualStruct(Function(ConsultoriaStruct) updateFn) {
    updateFn(_consultoriaAtual);
    prefs.setString('ff_consultoriaAtual', _consultoriaAtual.serialize());
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
