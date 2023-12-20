// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsultoriaStruct extends BaseStruct {
  ConsultoriaStruct({
    int? id,
    DateTime? createdAt,
    String? nome,
    String? logo,
    Color? corPrimaria,
    Color? corSecundaria,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _logo = logo,
        _corPrimaria = corPrimaria,
        _corSecundaria = corSecundaria;

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

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "cor_primaria" field.
  Color? _corPrimaria;
  Color get corPrimaria => _corPrimaria ?? const Color(0xFF33A817);
  set corPrimaria(Color? val) => _corPrimaria = val;
  bool hasCorPrimaria() => _corPrimaria != null;

  // "cor_secundaria" field.
  Color? _corSecundaria;
  Color get corSecundaria => _corSecundaria ?? const Color(0xFF958DCF);
  set corSecundaria(Color? val) => _corSecundaria = val;
  bool hasCorSecundaria() => _corSecundaria != null;

  static ConsultoriaStruct fromMap(Map<String, dynamic> data) =>
      ConsultoriaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        nome: data['nome'] as String?,
        logo: data['logo'] as String?,
        corPrimaria: getSchemaColor(data['cor_primaria']),
        corSecundaria: getSchemaColor(data['cor_secundaria']),
      );

  static ConsultoriaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ConsultoriaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'logo': _logo,
        'cor_primaria': _corPrimaria,
        'cor_secundaria': _corSecundaria,
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
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'cor_primaria': serializeParam(
          _corPrimaria,
          ParamType.Color,
        ),
        'cor_secundaria': serializeParam(
          _corSecundaria,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ConsultoriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConsultoriaStruct(
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
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        corPrimaria: deserializeParam(
          data['cor_primaria'],
          ParamType.Color,
          false,
        ),
        corSecundaria: deserializeParam(
          data['cor_secundaria'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ConsultoriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsultoriaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        logo == other.logo &&
        corPrimaria == other.corPrimaria &&
        corSecundaria == other.corSecundaria;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, nome, logo, corPrimaria, corSecundaria]);
}

ConsultoriaStruct createConsultoriaStruct({
  int? id,
  DateTime? createdAt,
  String? nome,
  String? logo,
  Color? corPrimaria,
  Color? corSecundaria,
}) =>
    ConsultoriaStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      logo: logo,
      corPrimaria: corPrimaria,
      corSecundaria: corSecundaria,
    );
