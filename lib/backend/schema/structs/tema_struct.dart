// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemaStruct extends BaseStruct {
  TemaStruct({
    int? id,
    String? createdAt,
    int? consultoria,
    String? nomeTema,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _nomeTema = nomeTema;

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

  // "consultoria" field.
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "nome_tema" field.
  String? _nomeTema;
  String get nomeTema => _nomeTema ?? '';
  set nomeTema(String? val) => _nomeTema = val;
  bool hasNomeTema() => _nomeTema != null;

  static TemaStruct fromMap(Map<String, dynamic> data) => TemaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        nomeTema: data['nome_tema'] as String?,
      );

  static TemaStruct? maybeFromMap(dynamic data) =>
      data is Map ? TemaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria,
        'nome_tema': _nomeTema,
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
        'nome_tema': serializeParam(
          _nomeTema,
          ParamType.String,
        ),
      }.withoutNulls;

  static TemaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TemaStruct(
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
        nomeTema: deserializeParam(
          data['nome_tema'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TemaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TemaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        consultoria == other.consultoria &&
        nomeTema == other.nomeTema;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, consultoria, nomeTema]);
}

TemaStruct createTemaStruct({
  int? id,
  String? createdAt,
  int? consultoria,
  String? nomeTema,
}) =>
    TemaStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria,
      nomeTema: nomeTema,
    );
