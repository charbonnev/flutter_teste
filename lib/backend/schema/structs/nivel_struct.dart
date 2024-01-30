// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NivelStruct extends BaseStruct {
  NivelStruct({
    int? id,
    String? createdAt,
    int? cliente,
    int? numeroNivel,
    String? aliasNivel,
    int? nivelPai,
    String? descricaoNivel,
    String? fullAlias,
    int? consultoria,
    bool? isDeletable,
    String? shapeFile,
    bool? isRecordContainer,
  })  : _id = id,
        _createdAt = createdAt,
        _cliente = cliente,
        _numeroNivel = numeroNivel,
        _aliasNivel = aliasNivel,
        _nivelPai = nivelPai,
        _descricaoNivel = descricaoNivel,
        _fullAlias = fullAlias,
        _consultoria = consultoria,
        _isDeletable = isDeletable,
        _shapeFile = shapeFile,
        _isRecordContainer = isRecordContainer;

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

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  // "numero_nivel" field.
  int? _numeroNivel;
  int get numeroNivel => _numeroNivel ?? 0;
  set numeroNivel(int? val) => _numeroNivel = val;
  void incrementNumeroNivel(int amount) => _numeroNivel = numeroNivel + amount;
  bool hasNumeroNivel() => _numeroNivel != null;

  // "alias_nivel" field.
  String? _aliasNivel;
  String get aliasNivel => _aliasNivel ?? '';
  set aliasNivel(String? val) => _aliasNivel = val;
  bool hasAliasNivel() => _aliasNivel != null;

  // "nivel_pai" field.
  int? _nivelPai;
  int get nivelPai => _nivelPai ?? 0;
  set nivelPai(int? val) => _nivelPai = val;
  void incrementNivelPai(int amount) => _nivelPai = nivelPai + amount;
  bool hasNivelPai() => _nivelPai != null;

  // "descricao_nivel" field.
  String? _descricaoNivel;
  String get descricaoNivel => _descricaoNivel ?? '';
  set descricaoNivel(String? val) => _descricaoNivel = val;
  bool hasDescricaoNivel() => _descricaoNivel != null;

  // "full_alias" field.
  String? _fullAlias;
  String get fullAlias => _fullAlias ?? '';
  set fullAlias(String? val) => _fullAlias = val;
  bool hasFullAlias() => _fullAlias != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "is_deletable" field.
  bool? _isDeletable;
  bool get isDeletable => _isDeletable ?? false;
  set isDeletable(bool? val) => _isDeletable = val;
  bool hasIsDeletable() => _isDeletable != null;

  // "shape_file" field.
  String? _shapeFile;
  String get shapeFile => _shapeFile ?? '';
  set shapeFile(String? val) => _shapeFile = val;
  bool hasShapeFile() => _shapeFile != null;

  // "is_record_container" field.
  bool? _isRecordContainer;
  bool get isRecordContainer => _isRecordContainer ?? false;
  set isRecordContainer(bool? val) => _isRecordContainer = val;
  bool hasIsRecordContainer() => _isRecordContainer != null;

  static NivelStruct fromMap(Map<String, dynamic> data) => NivelStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        cliente: castToType<int>(data['cliente']),
        numeroNivel: castToType<int>(data['numero_nivel']),
        aliasNivel: data['alias_nivel'] as String?,
        nivelPai: castToType<int>(data['nivel_pai']),
        descricaoNivel: data['descricao_nivel'] as String?,
        fullAlias: data['full_alias'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        isDeletable: data['is_deletable'] as bool?,
        shapeFile: data['shape_file'] as String?,
        isRecordContainer: data['is_record_container'] as bool?,
      );

  static NivelStruct? maybeFromMap(dynamic data) =>
      data is Map ? NivelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'cliente': _cliente,
        'numero_nivel': _numeroNivel,
        'alias_nivel': _aliasNivel,
        'nivel_pai': _nivelPai,
        'descricao_nivel': _descricaoNivel,
        'full_alias': _fullAlias,
        'consultoria': _consultoria,
        'is_deletable': _isDeletable,
        'shape_file': _shapeFile,
        'is_record_container': _isRecordContainer,
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
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
        'numero_nivel': serializeParam(
          _numeroNivel,
          ParamType.int,
        ),
        'alias_nivel': serializeParam(
          _aliasNivel,
          ParamType.String,
        ),
        'nivel_pai': serializeParam(
          _nivelPai,
          ParamType.int,
        ),
        'descricao_nivel': serializeParam(
          _descricaoNivel,
          ParamType.String,
        ),
        'full_alias': serializeParam(
          _fullAlias,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
        ),
        'is_deletable': serializeParam(
          _isDeletable,
          ParamType.bool,
        ),
        'shape_file': serializeParam(
          _shapeFile,
          ParamType.String,
        ),
        'is_record_container': serializeParam(
          _isRecordContainer,
          ParamType.bool,
        ),
      }.withoutNulls;

  static NivelStruct fromSerializableMap(Map<String, dynamic> data) =>
      NivelStruct(
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
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
        numeroNivel: deserializeParam(
          data['numero_nivel'],
          ParamType.int,
          false,
        ),
        aliasNivel: deserializeParam(
          data['alias_nivel'],
          ParamType.String,
          false,
        ),
        nivelPai: deserializeParam(
          data['nivel_pai'],
          ParamType.int,
          false,
        ),
        descricaoNivel: deserializeParam(
          data['descricao_nivel'],
          ParamType.String,
          false,
        ),
        fullAlias: deserializeParam(
          data['full_alias'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
        ),
        isDeletable: deserializeParam(
          data['is_deletable'],
          ParamType.bool,
          false,
        ),
        shapeFile: deserializeParam(
          data['shape_file'],
          ParamType.String,
          false,
        ),
        isRecordContainer: deserializeParam(
          data['is_record_container'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'NivelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NivelStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        cliente == other.cliente &&
        numeroNivel == other.numeroNivel &&
        aliasNivel == other.aliasNivel &&
        nivelPai == other.nivelPai &&
        descricaoNivel == other.descricaoNivel &&
        fullAlias == other.fullAlias &&
        consultoria == other.consultoria &&
        isDeletable == other.isDeletable &&
        shapeFile == other.shapeFile &&
        isRecordContainer == other.isRecordContainer;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        cliente,
        numeroNivel,
        aliasNivel,
        nivelPai,
        descricaoNivel,
        fullAlias,
        consultoria,
        isDeletable,
        shapeFile,
        isRecordContainer
      ]);
}

NivelStruct createNivelStruct({
  int? id,
  String? createdAt,
  int? cliente,
  int? numeroNivel,
  String? aliasNivel,
  int? nivelPai,
  String? descricaoNivel,
  String? fullAlias,
  int? consultoria,
  bool? isDeletable,
  String? shapeFile,
  bool? isRecordContainer,
}) =>
    NivelStruct(
      id: id,
      createdAt: createdAt,
      cliente: cliente,
      numeroNivel: numeroNivel,
      aliasNivel: aliasNivel,
      nivelPai: nivelPai,
      descricaoNivel: descricaoNivel,
      fullAlias: fullAlias,
      consultoria: consultoria,
      isDeletable: isDeletable,
      shapeFile: shapeFile,
      isRecordContainer: isRecordContainer,
    );
