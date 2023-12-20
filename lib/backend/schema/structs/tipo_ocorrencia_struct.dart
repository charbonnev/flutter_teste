// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoOcorrenciaStruct extends BaseStruct {
  TipoOcorrenciaStruct({
    int? id,
    DateTime? createdAt,
    ConsultoriaStruct? consultoria,
    int? idConsultoria,
    String? nomeTipoOcorrencia,
    Color? cor,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _idConsultoria = idConsultoria,
        _nomeTipoOcorrencia = nomeTipoOcorrencia,
        _cor = cor;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "consultoria" field.
  ConsultoriaStruct? _consultoria;
  ConsultoriaStruct get consultoria => _consultoria ?? ConsultoriaStruct();
  set consultoria(ConsultoriaStruct? val) => _consultoria = val;
  void updateConsultoria(Function(ConsultoriaStruct) updateFn) =>
      updateFn(_consultoria ??= ConsultoriaStruct());
  bool hasConsultoria() => _consultoria != null;

  // "id_consultoria" field.
  int? _idConsultoria;
  int get idConsultoria => _idConsultoria ?? 0;
  set idConsultoria(int? val) => _idConsultoria = val;
  void incrementIdConsultoria(int amount) =>
      _idConsultoria = idConsultoria + amount;
  bool hasIdConsultoria() => _idConsultoria != null;

  // "nome_tipo_ocorrencia" field.
  String? _nomeTipoOcorrencia;
  String get nomeTipoOcorrencia => _nomeTipoOcorrencia ?? '';
  set nomeTipoOcorrencia(String? val) => _nomeTipoOcorrencia = val;
  bool hasNomeTipoOcorrencia() => _nomeTipoOcorrencia != null;

  // "cor" field.
  Color? _cor;
  Color? get cor => _cor;
  set cor(Color? val) => _cor = val;
  bool hasCor() => _cor != null;

  static TipoOcorrenciaStruct fromMap(Map<String, dynamic> data) =>
      TipoOcorrenciaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        consultoria: ConsultoriaStruct.maybeFromMap(data['consultoria']),
        idConsultoria: castToType<int>(data['id_consultoria']),
        nomeTipoOcorrencia: data['nome_tipo_ocorrencia'] as String?,
        cor: getSchemaColor(data['cor']),
      );

  static TipoOcorrenciaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TipoOcorrenciaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria?.toMap(),
        'id_consultoria': _idConsultoria,
        'nome_tipo_ocorrencia': _nomeTipoOcorrencia,
        'cor': _cor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.DataStruct,
        ),
        'id_consultoria': serializeParam(
          _idConsultoria,
          ParamType.int,
        ),
        'nome_tipo_ocorrencia': serializeParam(
          _nomeTipoOcorrencia,
          ParamType.String,
        ),
        'cor': serializeParam(
          _cor,
          ParamType.Color,
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
          ParamType.DateTime,
          false,
        ),
        consultoria: deserializeStructParam(
          data['consultoria'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsultoriaStruct.fromSerializableMap,
        ),
        idConsultoria: deserializeParam(
          data['id_consultoria'],
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
          ParamType.Color,
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
        idConsultoria == other.idConsultoria &&
        nomeTipoOcorrencia == other.nomeTipoOcorrencia &&
        cor == other.cor;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, createdAt, consultoria, idConsultoria, nomeTipoOcorrencia, cor]);
}

TipoOcorrenciaStruct createTipoOcorrenciaStruct({
  int? id,
  DateTime? createdAt,
  ConsultoriaStruct? consultoria,
  int? idConsultoria,
  String? nomeTipoOcorrencia,
  Color? cor,
}) =>
    TipoOcorrenciaStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria ?? ConsultoriaStruct(),
      idConsultoria: idConsultoria,
      nomeTipoOcorrencia: nomeTipoOcorrencia,
      cor: cor,
    );
