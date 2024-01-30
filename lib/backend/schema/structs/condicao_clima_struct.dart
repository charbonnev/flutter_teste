// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CondicaoClimaStruct extends BaseStruct {
  CondicaoClimaStruct({
    int? id,
    String? createdAt,
    String? nome,
    int? consultoria,
    EnumCondicaoClima? enumCondicaoClima,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _consultoria = consultoria,
        _enumCondicaoClima = enumCondicaoClima;

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

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "enum_condicao_clima" field.
  EnumCondicaoClima? _enumCondicaoClima;
  EnumCondicaoClima? get enumCondicaoClima => _enumCondicaoClima;
  set enumCondicaoClima(EnumCondicaoClima? val) => _enumCondicaoClima = val;
  bool hasEnumCondicaoClima() => _enumCondicaoClima != null;

  static CondicaoClimaStruct fromMap(Map<String, dynamic> data) =>
      CondicaoClimaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        enumCondicaoClima:
            deserializeEnum<EnumCondicaoClima>(data['enum_condicao_clima']),
      );

  static CondicaoClimaStruct? maybeFromMap(dynamic data) => data is Map
      ? CondicaoClimaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'consultoria': _consultoria,
        'enum_condicao_clima': _enumCondicaoClima?.serialize(),
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
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
        ),
        'enum_condicao_clima': serializeParam(
          _enumCondicaoClima,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static CondicaoClimaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CondicaoClimaStruct(
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
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
        ),
        enumCondicaoClima: deserializeParam<EnumCondicaoClima>(
          data['enum_condicao_clima'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'CondicaoClimaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CondicaoClimaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        consultoria == other.consultoria &&
        enumCondicaoClima == other.enumCondicaoClima;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, nome, consultoria, enumCondicaoClima]);
}

CondicaoClimaStruct createCondicaoClimaStruct({
  int? id,
  String? createdAt,
  String? nome,
  int? consultoria,
  EnumCondicaoClima? enumCondicaoClima,
}) =>
    CondicaoClimaStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      consultoria: consultoria,
      enumCondicaoClima: enumCondicaoClima,
    );
