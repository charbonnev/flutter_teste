// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatusAcaoStruct extends BaseStruct {
  StatusAcaoStruct({
    int? id,
    String? createdAt,
    int? consultoria,
    String? nomeStatusAcao,
    EnumStatusAcao? enumStatusAcao,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _nomeStatusAcao = nomeStatusAcao,
        _enumStatusAcao = enumStatusAcao;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "nome_status_acao" field.
  String? _nomeStatusAcao;
  String get nomeStatusAcao => _nomeStatusAcao ?? '';
  set nomeStatusAcao(String? val) => _nomeStatusAcao = val;
  bool hasNomeStatusAcao() => _nomeStatusAcao != null;

  // "enum_status_acao" field.
  EnumStatusAcao? _enumStatusAcao;
  EnumStatusAcao? get enumStatusAcao => _enumStatusAcao;
  set enumStatusAcao(EnumStatusAcao? val) => _enumStatusAcao = val;
  bool hasEnumStatusAcao() => _enumStatusAcao != null;

  static StatusAcaoStruct fromMap(Map<String, dynamic> data) =>
      StatusAcaoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        nomeStatusAcao: data['nome_status_acao'] as String?,
        enumStatusAcao:
            deserializeEnum<EnumStatusAcao>(data['enum_status_acao']),
      );

  static StatusAcaoStruct? maybeFromMap(dynamic data) => data is Map
      ? StatusAcaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria,
        'nome_status_acao': _nomeStatusAcao,
        'enum_status_acao': _enumStatusAcao?.serialize(),
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
        'nome_status_acao': serializeParam(
          _nomeStatusAcao,
          ParamType.String,
        ),
        'enum_status_acao': serializeParam(
          _enumStatusAcao,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static StatusAcaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatusAcaoStruct(
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
        nomeStatusAcao: deserializeParam(
          data['nome_status_acao'],
          ParamType.String,
          false,
        ),
        enumStatusAcao: deserializeParam<EnumStatusAcao>(
          data['enum_status_acao'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'StatusAcaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatusAcaoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        consultoria == other.consultoria &&
        nomeStatusAcao == other.nomeStatusAcao &&
        enumStatusAcao == other.enumStatusAcao;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, consultoria, nomeStatusAcao, enumStatusAcao]);
}

StatusAcaoStruct createStatusAcaoStruct({
  int? id,
  String? createdAt,
  int? consultoria,
  String? nomeStatusAcao,
  EnumStatusAcao? enumStatusAcao,
}) =>
    StatusAcaoStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria,
      nomeStatusAcao: nomeStatusAcao,
      enumStatusAcao: enumStatusAcao,
    );
