// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpreendimentoStruct extends BaseStruct {
  EmpreendimentoStruct({
    int? id,
    String? nome,
    String? logo,
    String? corPrimaria,
    String? corSecundaria,
    int? consultoria,
    bool? isAtivo,
    String? nomeNivel1,
    String? nomeNivel2,
    String? nomeNivel3,
    String? nomeNivel4,
    int? cliente,
  })  : _id = id,
        _nome = nome,
        _logo = logo,
        _corPrimaria = corPrimaria,
        _corSecundaria = corSecundaria,
        _consultoria = consultoria,
        _isAtivo = isAtivo,
        _nomeNivel1 = nomeNivel1,
        _nomeNivel2 = nomeNivel2,
        _nomeNivel3 = nomeNivel3,
        _nomeNivel4 = nomeNivel4,
        _cliente = cliente;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '0';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '0';
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

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
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

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  static EmpreendimentoStruct fromMap(Map<String, dynamic> data) =>
      EmpreendimentoStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        logo: data['logo'] as String?,
        corPrimaria: data['cor_primaria'] as String?,
        corSecundaria: data['cor_secundaria'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        isAtivo: data['is_ativo'] as bool?,
        nomeNivel1: data['nome_nivel1'] as String?,
        nomeNivel2: data['nome_nivel2'] as String?,
        nomeNivel3: data['nome_nivel3'] as String?,
        nomeNivel4: data['nome_nivel4'] as String?,
        cliente: castToType<int>(data['cliente']),
      );

  static EmpreendimentoStruct? maybeFromMap(dynamic data) => data is Map
      ? EmpreendimentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'logo': _logo,
        'cor_primaria': _corPrimaria,
        'cor_secundaria': _corSecundaria,
        'consultoria': _consultoria,
        'is_ativo': _isAtivo,
        'nome_nivel1': _nomeNivel1,
        'nome_nivel2': _nomeNivel2,
        'nome_nivel3': _nomeNivel3,
        'nome_nivel4': _nomeNivel4,
        'cliente': _cliente,
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
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
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
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
      }.withoutNulls;

  static EmpreendimentoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmpreendimentoStruct(
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
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
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
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'EmpreendimentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmpreendimentoStruct &&
        id == other.id &&
        nome == other.nome &&
        logo == other.logo &&
        corPrimaria == other.corPrimaria &&
        corSecundaria == other.corSecundaria &&
        consultoria == other.consultoria &&
        isAtivo == other.isAtivo &&
        nomeNivel1 == other.nomeNivel1 &&
        nomeNivel2 == other.nomeNivel2 &&
        nomeNivel3 == other.nomeNivel3 &&
        nomeNivel4 == other.nomeNivel4 &&
        cliente == other.cliente;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        logo,
        corPrimaria,
        corSecundaria,
        consultoria,
        isAtivo,
        nomeNivel1,
        nomeNivel2,
        nomeNivel3,
        nomeNivel4,
        cliente
      ]);
}

EmpreendimentoStruct createEmpreendimentoStruct({
  int? id,
  String? nome,
  String? logo,
  String? corPrimaria,
  String? corSecundaria,
  int? consultoria,
  bool? isAtivo,
  String? nomeNivel1,
  String? nomeNivel2,
  String? nomeNivel3,
  String? nomeNivel4,
  int? cliente,
}) =>
    EmpreendimentoStruct(
      id: id,
      nome: nome,
      logo: logo,
      corPrimaria: corPrimaria,
      corSecundaria: corSecundaria,
      consultoria: consultoria,
      isAtivo: isAtivo,
      nomeNivel1: nomeNivel1,
      nomeNivel2: nomeNivel2,
      nomeNivel3: nomeNivel3,
      nomeNivel4: nomeNivel4,
      cliente: cliente,
    );
