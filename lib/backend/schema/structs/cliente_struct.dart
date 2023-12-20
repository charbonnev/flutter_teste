// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends BaseStruct {
  ClienteStruct({
    int? id,
    DateTime? createdAt,
    String? nome,
    String? logo,
    Color? corPrimaria,
    Color? corSecundaria,
    ConsultoriaStruct? consultoria,
    bool? isAtivo,
    String? nomeNivel1,
    String? nomeNivel2,
    String? nomeNivel3,
    String? nomeNivel4,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _logo = logo,
        _corPrimaria = corPrimaria,
        _corSecundaria = corSecundaria,
        _consultoria = consultoria,
        _isAtivo = isAtivo,
        _nomeNivel1 = nomeNivel1,
        _nomeNivel2 = nomeNivel2,
        _nomeNivel3 = nomeNivel3,
        _nomeNivel4 = nomeNivel4;

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

  // "consultoria" field.
  ConsultoriaStruct? _consultoria;
  ConsultoriaStruct get consultoria => _consultoria ?? ConsultoriaStruct();
  set consultoria(ConsultoriaStruct? val) => _consultoria = val;
  void updateConsultoria(Function(ConsultoriaStruct) updateFn) =>
      updateFn(_consultoria ??= ConsultoriaStruct());
  bool hasConsultoria() => _consultoria != null;

  // "is_ativo" field.
  bool? _isAtivo;
  bool get isAtivo => _isAtivo ?? false;
  set isAtivo(bool? val) => _isAtivo = val;
  bool hasIsAtivo() => _isAtivo != null;

  // "nome_nivel1" field.
  String? _nomeNivel1;
  String get nomeNivel1 => _nomeNivel1 ?? 'Nivel 1';
  set nomeNivel1(String? val) => _nomeNivel1 = val;
  bool hasNomeNivel1() => _nomeNivel1 != null;

  // "nome_nivel2" field.
  String? _nomeNivel2;
  String get nomeNivel2 => _nomeNivel2 ?? 'Nivel 2';
  set nomeNivel2(String? val) => _nomeNivel2 = val;
  bool hasNomeNivel2() => _nomeNivel2 != null;

  // "nome_nivel3" field.
  String? _nomeNivel3;
  String get nomeNivel3 => _nomeNivel3 ?? 'Nivel 3';
  set nomeNivel3(String? val) => _nomeNivel3 = val;
  bool hasNomeNivel3() => _nomeNivel3 != null;

  // "nome_nivel4" field.
  String? _nomeNivel4;
  String get nomeNivel4 => _nomeNivel4 ?? 'Nivel 4';
  set nomeNivel4(String? val) => _nomeNivel4 = val;
  bool hasNomeNivel4() => _nomeNivel4 != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        nome: data['nome'] as String?,
        logo: data['logo'] as String?,
        corPrimaria: getSchemaColor(data['cor_primaria']),
        corSecundaria: getSchemaColor(data['cor_secundaria']),
        consultoria: ConsultoriaStruct.maybeFromMap(data['consultoria']),
        isAtivo: data['is_ativo'] as bool?,
        nomeNivel1: data['nome_nivel1'] as String?,
        nomeNivel2: data['nome_nivel2'] as String?,
        nomeNivel3: data['nome_nivel3'] as String?,
        nomeNivel4: data['nome_nivel4'] as String?,
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ClienteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'logo': _logo,
        'cor_primaria': _corPrimaria,
        'cor_secundaria': _corSecundaria,
        'consultoria': _consultoria?.toMap(),
        'is_ativo': _isAtivo,
        'nome_nivel1': _nomeNivel1,
        'nome_nivel2': _nomeNivel2,
        'nome_nivel3': _nomeNivel3,
        'nome_nivel4': _nomeNivel4,
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
        'consultoria': serializeParam(
          _consultoria,
          ParamType.DataStruct,
        ),
        'is_ativo': serializeParam(
          _isAtivo,
          ParamType.bool,
        ),
        'nome_nivel1': serializeParam(
          _nomeNivel1,
          ParamType.String,
        ),
        'nome_nivel2': serializeParam(
          _nomeNivel2,
          ParamType.String,
        ),
        'nome_nivel3': serializeParam(
          _nomeNivel3,
          ParamType.String,
        ),
        'nome_nivel4': serializeParam(
          _nomeNivel4,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
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
        consultoria: deserializeStructParam(
          data['consultoria'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsultoriaStruct.fromSerializableMap,
        ),
        isAtivo: deserializeParam(
          data['is_ativo'],
          ParamType.bool,
          false,
        ),
        nomeNivel1: deserializeParam(
          data['nome_nivel1'],
          ParamType.String,
          false,
        ),
        nomeNivel2: deserializeParam(
          data['nome_nivel2'],
          ParamType.String,
          false,
        ),
        nomeNivel3: deserializeParam(
          data['nome_nivel3'],
          ParamType.String,
          false,
        ),
        nomeNivel4: deserializeParam(
          data['nome_nivel4'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        logo == other.logo &&
        corPrimaria == other.corPrimaria &&
        corSecundaria == other.corSecundaria &&
        consultoria == other.consultoria &&
        isAtivo == other.isAtivo &&
        nomeNivel1 == other.nomeNivel1 &&
        nomeNivel2 == other.nomeNivel2 &&
        nomeNivel3 == other.nomeNivel3 &&
        nomeNivel4 == other.nomeNivel4;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        logo,
        corPrimaria,
        corSecundaria,
        consultoria,
        isAtivo,
        nomeNivel1,
        nomeNivel2,
        nomeNivel3,
        nomeNivel4
      ]);
}

ClienteStruct createClienteStruct({
  int? id,
  DateTime? createdAt,
  String? nome,
  String? logo,
  Color? corPrimaria,
  Color? corSecundaria,
  ConsultoriaStruct? consultoria,
  bool? isAtivo,
  String? nomeNivel1,
  String? nomeNivel2,
  String? nomeNivel3,
  String? nomeNivel4,
}) =>
    ClienteStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      logo: logo,
      corPrimaria: corPrimaria,
      corSecundaria: corSecundaria,
      consultoria: consultoria ?? ConsultoriaStruct(),
      isAtivo: isAtivo,
      nomeNivel1: nomeNivel1,
      nomeNivel2: nomeNivel2,
      nomeNivel3: nomeNivel3,
      nomeNivel4: nomeNivel4,
    );
