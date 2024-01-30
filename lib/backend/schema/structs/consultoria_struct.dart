// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsultoriaStruct extends BaseStruct {
  ConsultoriaStruct({
    int? id,
    String? nome,
    String? logo,
    String? corPrimaria,
    String? corSecundaria,
  })  : _id = id,
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

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? 'null';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? 'null';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "cor_primaria" field.
  String? _corPrimaria;
  String get corPrimaria => _corPrimaria ?? '#33A817';
  set corPrimaria(String? val) => _corPrimaria = val;
  bool hasCorPrimaria() => _corPrimaria != null;

  // "cor_secundaria" field.
  String? _corSecundaria;
  String get corSecundaria => _corSecundaria ?? '#958DCF';
  set corSecundaria(String? val) => _corSecundaria = val;
  bool hasCorSecundaria() => _corSecundaria != null;

  static ConsultoriaStruct fromMap(Map<String, dynamic> data) =>
      ConsultoriaStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        logo: data['logo'] as String?,
        corPrimaria: data['cor_primaria'] as String?,
        corSecundaria: data['cor_secundaria'] as String?,
      );

  static ConsultoriaStruct? maybeFromMap(dynamic data) => data is Map
      ? ConsultoriaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
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
          ParamType.String,
        ),
        'cor_secundaria': serializeParam(
          _corSecundaria,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConsultoriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConsultoriaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
          ParamType.String,
          false,
        ),
        corSecundaria: deserializeParam(
          data['cor_secundaria'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConsultoriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsultoriaStruct &&
        id == other.id &&
        nome == other.nome &&
        logo == other.logo &&
        corPrimaria == other.corPrimaria &&
        corSecundaria == other.corSecundaria;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nome, logo, corPrimaria, corSecundaria]);
}

ConsultoriaStruct createConsultoriaStruct({
  int? id,
  String? nome,
  String? logo,
  String? corPrimaria,
  String? corSecundaria,
}) =>
    ConsultoriaStruct(
      id: id,
      nome: nome,
      logo: logo,
      corPrimaria: corPrimaria,
      corSecundaria: corSecundaria,
    );
