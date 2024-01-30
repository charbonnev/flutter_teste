// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoOcorrenciaStruct extends BaseStruct {
  TipoOcorrenciaStruct({
    int? id,
    String? createdAt,
    int? consultoria,
    String? nomeTipoOcorrencia,
    String? cor,
    EnumTipoOcorrencia? enumTipoOcorrencia,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _nomeTipoOcorrencia = nomeTipoOcorrencia,
        _cor = cor,
        _enumTipoOcorrencia = enumTipoOcorrencia;

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

  // "nome_tipo_ocorrencia" field.
  String? _nomeTipoOcorrencia;
  String get nomeTipoOcorrencia => _nomeTipoOcorrencia ?? '0';
  set nomeTipoOcorrencia(String? val) => _nomeTipoOcorrencia = val;
  bool hasNomeTipoOcorrencia() => _nomeTipoOcorrencia != null;

  // "cor" field.
  String? _cor;
  String get cor => _cor ?? '0';
  set cor(String? val) => _cor = val;
  bool hasCor() => _cor != null;

  // "enum_tipo_ocorrencia" field.
  EnumTipoOcorrencia? _enumTipoOcorrencia;
  EnumTipoOcorrencia get enumTipoOcorrencia =>
      _enumTipoOcorrencia ?? EnumTipoOcorrencia.C;
  set enumTipoOcorrencia(EnumTipoOcorrencia? val) => _enumTipoOcorrencia = val;
  bool hasEnumTipoOcorrencia() => _enumTipoOcorrencia != null;

  static TipoOcorrenciaStruct fromMap(Map<String, dynamic> data) =>
      TipoOcorrenciaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        nomeTipoOcorrencia: data['nome_tipo_ocorrencia'] as String?,
        cor: data['cor'] as String?,
        enumTipoOcorrencia:
            deserializeEnum<EnumTipoOcorrencia>(data['enum_tipo_ocorrencia']),
      );

  static TipoOcorrenciaStruct? maybeFromMap(dynamic data) => data is Map
      ? TipoOcorrenciaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria,
        'nome_tipo_ocorrencia': _nomeTipoOcorrencia,
        'cor': _cor,
        'enum_tipo_ocorrencia': _enumTipoOcorrencia?.serialize(),
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
        'nome_tipo_ocorrencia': serializeParam(
          _nomeTipoOcorrencia,
          ParamType.String,
        ),
        'cor': serializeParam(
          _cor,
          ParamType.String,
        ),
        'enum_tipo_ocorrencia': serializeParam(
          _enumTipoOcorrencia,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static TipoOcorrenciaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TipoOcorrenciaStruct(
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
        nomeTipoOcorrencia: deserializeParam(
          data['nome_tipo_ocorrencia'],
          ParamType.String,
          false,
        ),
        cor: deserializeParam(
          data['cor'],
          ParamType.String,
          false,
        ),
        enumTipoOcorrencia: deserializeParam<EnumTipoOcorrencia>(
          data['enum_tipo_ocorrencia'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'TipoOcorrenciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TipoOcorrenciaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        consultoria == other.consultoria &&
        nomeTipoOcorrencia == other.nomeTipoOcorrencia &&
        cor == other.cor &&
        enumTipoOcorrencia == other.enumTipoOcorrencia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        consultoria,
        nomeTipoOcorrencia,
        cor,
        enumTipoOcorrencia
      ]);
}

TipoOcorrenciaStruct createTipoOcorrenciaStruct({
  int? id,
  String? createdAt,
  int? consultoria,
  String? nomeTipoOcorrencia,
  String? cor,
  EnumTipoOcorrencia? enumTipoOcorrencia,
}) =>
    TipoOcorrenciaStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria,
      nomeTipoOcorrencia: nomeTipoOcorrencia,
      cor: cor,
      enumTipoOcorrencia: enumTipoOcorrencia,
    );
