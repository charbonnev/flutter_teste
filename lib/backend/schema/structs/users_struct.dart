// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? id,
    DateTime? createdAt,
    String? email,
    ConsultoriaStruct? consultoria,
    String? linkBi,
    bool? isColetor,
    bool? isCliente,
    bool? isAdmin,
    String? nome,
    String? fone,
    String? fotoUrl,
    bool? isAtivo,
  })  : _id = id,
        _createdAt = createdAt,
        _email = email,
        _consultoria = consultoria,
        _linkBi = linkBi,
        _isColetor = isColetor,
        _isCliente = isCliente,
        _isAdmin = isAdmin,
        _nome = nome,
        _fone = fone,
        _fotoUrl = fotoUrl,
        _isAtivo = isAtivo;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "consultoria" field.
  ConsultoriaStruct? _consultoria;
  ConsultoriaStruct get consultoria => _consultoria ?? ConsultoriaStruct();
  set consultoria(ConsultoriaStruct? val) => _consultoria = val;
  void updateConsultoria(Function(ConsultoriaStruct) updateFn) =>
      updateFn(_consultoria ??= ConsultoriaStruct());
  bool hasConsultoria() => _consultoria != null;

  // "link_bi" field.
  String? _linkBi;
  String get linkBi => _linkBi ?? '';
  set linkBi(String? val) => _linkBi = val;
  bool hasLinkBi() => _linkBi != null;

  // "is_coletor" field.
  bool? _isColetor;
  bool get isColetor => _isColetor ?? false;
  set isColetor(bool? val) => _isColetor = val;
  bool hasIsColetor() => _isColetor != null;

  // "is_cliente" field.
  bool? _isCliente;
  bool get isCliente => _isCliente ?? false;
  set isCliente(bool? val) => _isCliente = val;
  bool hasIsCliente() => _isCliente != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;
  bool hasIsAdmin() => _isAdmin != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "fone" field.
  String? _fone;
  String get fone => _fone ?? '';
  set fone(String? val) => _fone = val;
  bool hasFone() => _fone != null;

  // "foto_url" field.
  String? _fotoUrl;
  String get fotoUrl => _fotoUrl ?? '';
  set fotoUrl(String? val) => _fotoUrl = val;
  bool hasFotoUrl() => _fotoUrl != null;

  // "is_ativo" field.
  bool? _isAtivo;
  bool get isAtivo => _isAtivo ?? false;
  set isAtivo(bool? val) => _isAtivo = val;
  bool hasIsAtivo() => _isAtivo != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        email: data['email'] as String?,
        consultoria: ConsultoriaStruct.maybeFromMap(data['consultoria']),
        linkBi: data['link_bi'] as String?,
        isColetor: data['is_coletor'] as bool?,
        isCliente: data['is_cliente'] as bool?,
        isAdmin: data['is_admin'] as bool?,
        nome: data['nome'] as String?,
        fone: data['fone'] as String?,
        fotoUrl: data['foto_url'] as String?,
        isAtivo: data['is_ativo'] as bool?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'email': _email,
        'consultoria': _consultoria?.toMap(),
        'link_bi': _linkBi,
        'is_coletor': _isColetor,
        'is_cliente': _isCliente,
        'is_admin': _isAdmin,
        'nome': _nome,
        'fone': _fone,
        'foto_url': _fotoUrl,
        'is_ativo': _isAtivo,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.DataStruct,
        ),
        'link_bi': serializeParam(
          _linkBi,
          ParamType.String,
        ),
        'is_coletor': serializeParam(
          _isColetor,
          ParamType.bool,
        ),
        'is_cliente': serializeParam(
          _isCliente,
          ParamType.bool,
        ),
        'is_admin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'fone': serializeParam(
          _fone,
          ParamType.String,
        ),
        'foto_url': serializeParam(
          _fotoUrl,
          ParamType.String,
        ),
        'is_ativo': serializeParam(
          _isAtivo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeStructParam(
          data['consultoria'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsultoriaStruct.fromSerializableMap,
        ),
        linkBi: deserializeParam(
          data['link_bi'],
          ParamType.String,
          false,
        ),
        isColetor: deserializeParam(
          data['is_coletor'],
          ParamType.bool,
          false,
        ),
        isCliente: deserializeParam(
          data['is_cliente'],
          ParamType.bool,
          false,
        ),
        isAdmin: deserializeParam(
          data['is_admin'],
          ParamType.bool,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        fone: deserializeParam(
          data['fone'],
          ParamType.String,
          false,
        ),
        fotoUrl: deserializeParam(
          data['foto_url'],
          ParamType.String,
          false,
        ),
        isAtivo: deserializeParam(
          data['is_ativo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        email == other.email &&
        consultoria == other.consultoria &&
        linkBi == other.linkBi &&
        isColetor == other.isColetor &&
        isCliente == other.isCliente &&
        isAdmin == other.isAdmin &&
        nome == other.nome &&
        fone == other.fone &&
        fotoUrl == other.fotoUrl &&
        isAtivo == other.isAtivo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        email,
        consultoria,
        linkBi,
        isColetor,
        isCliente,
        isAdmin,
        nome,
        fone,
        fotoUrl,
        isAtivo
      ]);
}

UsersStruct createUsersStruct({
  int? id,
  DateTime? createdAt,
  String? email,
  ConsultoriaStruct? consultoria,
  String? linkBi,
  bool? isColetor,
  bool? isCliente,
  bool? isAdmin,
  String? nome,
  String? fone,
  String? fotoUrl,
  bool? isAtivo,
}) =>
    UsersStruct(
      id: id,
      createdAt: createdAt,
      email: email,
      consultoria: consultoria ?? ConsultoriaStruct(),
      linkBi: linkBi,
      isColetor: isColetor,
      isCliente: isCliente,
      isAdmin: isAdmin,
      nome: nome,
      fone: fone,
      fotoUrl: fotoUrl,
      isAtivo: isAtivo,
    );
