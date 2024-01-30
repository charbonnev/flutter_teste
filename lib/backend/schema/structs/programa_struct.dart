// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgramaStruct extends BaseStruct {
  ProgramaStruct({
    int? id,
    String? createdAt,
    int? consultoria,
    String? nomePrograma,
    int? cliente,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _nomePrograma = nomePrograma,
        _cliente = cliente;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '0';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "nome_programa" field.
  String? _nomePrograma;
  String get nomePrograma => _nomePrograma ?? '0';
  set nomePrograma(String? val) => _nomePrograma = val;
  bool hasNomePrograma() => _nomePrograma != null;

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  static ProgramaStruct fromMap(Map<String, dynamic> data) => ProgramaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        nomePrograma: data['nome_programa'] as String?,
        cliente: castToType<int>(data['cliente']),
      );

  static ProgramaStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProgramaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria,
        'nome_programa': _nomePrograma,
        'cliente': _cliente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
        ),
        'nome_programa': serializeParam(
          _nomePrograma,
          ParamType.String,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProgramaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProgramaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
        ),
        nomePrograma: deserializeParam(
          data['nome_programa'],
          ParamType.String,
          false,
        ),
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProgramaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProgramaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        consultoria == other.consultoria &&
        nomePrograma == other.nomePrograma &&
        cliente == other.cliente;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, consultoria, nomePrograma, cliente]);
}

ProgramaStruct createProgramaStruct({
  int? id,
  String? createdAt,
  int? consultoria,
  String? nomePrograma,
  int? cliente,
}) =>
    ProgramaStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria,
      nomePrograma: nomePrograma,
      cliente: cliente,
    );
