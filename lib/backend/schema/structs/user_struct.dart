// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? email,
    int? consultoria,
    String? linkBi,
    bool? isColetor,
    bool? isCliente,
    bool? isAdmin,
    String? nome,
    String? fone,
    String? fotoUrl,
    bool? isAtivo,
    String? createdAt,
  })  : _id = id,
        _email = email,
        _consultoria = consultoria,
        _linkBi = linkBi,
        _isColetor = isColetor,
        _isCliente = isCliente,
        _isAdmin = isAdmin,
        _nome = nome,
        _fone = fone,
        _fotoUrl = fotoUrl,
        _isAtivo = isAtivo,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '0';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '0';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "link_bi" field.
  String? _linkBi;
  String get linkBi => _linkBi ?? '0';
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

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        email: data['email'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        linkBi: data['link_bi'] as String?,
        isColetor: data['is_coletor'] as bool?,
        isCliente: data['is_cliente'] as bool?,
        isAdmin: data['is_admin'] as bool?,
        nome: data['nome'] as String?,
        fone: data['fone'] as String?,
        fotoUrl: data['foto_url'] as String?,
        isAtivo: data['is_ativo'] as bool?,
        createdAt: data['created_at'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'consultoria': _consultoria,
        'link_bi': _linkBi,
        'is_coletor': _isColetor,
        'is_cliente': _isCliente,
        'is_admin': _isAdmin,
        'nome': _nome,
        'fone': _fone,
        'foto_url': _fotoUrl,
        'is_ativo': _isAtivo,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.int,
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
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
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
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        email == other.email &&
        consultoria == other.consultoria &&
        linkBi == other.linkBi &&
        isColetor == other.isColetor &&
        isCliente == other.isCliente &&
        isAdmin == other.isAdmin &&
        nome == other.nome &&
        fone == other.fone &&
        fotoUrl == other.fotoUrl &&
        isAtivo == other.isAtivo &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        email,
        consultoria,
        linkBi,
        isColetor,
        isCliente,
        isAdmin,
        nome,
        fone,
        fotoUrl,
        isAtivo,
        createdAt
      ]);
}

UserStruct createUserStruct({
  String? id,
  String? email,
  int? consultoria,
  String? linkBi,
  bool? isColetor,
  bool? isCliente,
  bool? isAdmin,
  String? nome,
  String? fone,
  String? fotoUrl,
  bool? isAtivo,
  String? createdAt,
}) =>
    UserStruct(
      id: id,
      email: email,
      consultoria: consultoria,
      linkBi: linkBi,
      isColetor: isColetor,
      isCliente: isCliente,
      isAdmin: isAdmin,
      nome: nome,
      fone: fone,
      fotoUrl: fotoUrl,
      isAtivo: isAtivo,
      createdAt: createdAt,
    );
