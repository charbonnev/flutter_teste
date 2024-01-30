// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponsavelAcaoStruct extends BaseStruct {
  ResponsavelAcaoStruct({
    int? id,
    String? createdAt,
    String? nomeResponsavel,
    int? consultoria,
    int? cliente,
  })  : _id = id,
        _createdAt = createdAt,
        _nomeResponsavel = nomeResponsavel,
        _consultoria = consultoria,
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

  // "nome_responsavel" field.
  String? _nomeResponsavel;
  String get nomeResponsavel => _nomeResponsavel ?? '0';
  set nomeResponsavel(String? val) => _nomeResponsavel = val;
  bool hasNomeResponsavel() => _nomeResponsavel != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  static ResponsavelAcaoStruct fromMap(Map<String, dynamic> data) =>
      ResponsavelAcaoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nomeResponsavel: data['nome_responsavel'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        cliente: castToType<int>(data['cliente']),
      );

  static ResponsavelAcaoStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponsavelAcaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome_responsavel': _nomeResponsavel,
        'consultoria': _consultoria,
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
        'nome_responsavel': serializeParam(
          _nomeResponsavel,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResponsavelAcaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponsavelAcaoStruct(
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
        nomeResponsavel: deserializeParam(
          data['nome_responsavel'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
        ),
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResponsavelAcaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponsavelAcaoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nomeResponsavel == other.nomeResponsavel &&
        consultoria == other.consultoria &&
        cliente == other.cliente;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, nomeResponsavel, consultoria, cliente]);
}

ResponsavelAcaoStruct createResponsavelAcaoStruct({
  int? id,
  String? createdAt,
  String? nomeResponsavel,
  int? consultoria,
  int? cliente,
}) =>
    ResponsavelAcaoStruct(
      id: id,
      createdAt: createdAt,
      nomeResponsavel: nomeResponsavel,
      consultoria: consultoria,
      cliente: cliente,
    );
