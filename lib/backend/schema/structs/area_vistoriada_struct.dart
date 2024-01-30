// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaVistoriadaStruct extends BaseStruct {
  AreaVistoriadaStruct({
    int? id,
    String? createdAt,
    int? consultoria,
    int? cliente,
    String? nomeAreaVistoriada,
  })  : _id = id,
        _createdAt = createdAt,
        _consultoria = consultoria,
        _cliente = cliente,
        _nomeAreaVistoriada = nomeAreaVistoriada;

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

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  // "nome_area_vistoriada" field.
  String? _nomeAreaVistoriada;
  String get nomeAreaVistoriada => _nomeAreaVistoriada ?? '';
  set nomeAreaVistoriada(String? val) => _nomeAreaVistoriada = val;
  bool hasNomeAreaVistoriada() => _nomeAreaVistoriada != null;

  static AreaVistoriadaStruct fromMap(Map<String, dynamic> data) =>
      AreaVistoriadaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        consultoria: castToType<int>(data['consultoria']),
        cliente: castToType<int>(data['cliente']),
        nomeAreaVistoriada: data['nome_area_vistoriada'] as String?,
      );

  static AreaVistoriadaStruct? maybeFromMap(dynamic data) => data is Map
      ? AreaVistoriadaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'consultoria': _consultoria,
        'cliente': _cliente,
        'nome_area_vistoriada': _nomeAreaVistoriada,
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
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
        'nome_area_vistoriada': serializeParam(
          _nomeAreaVistoriada,
          ParamType.String,
        ),
      }.withoutNulls;

  static AreaVistoriadaStruct fromSerializableMap(Map<String, dynamic> data) =>
      AreaVistoriadaStruct(
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
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
        nomeAreaVistoriada: deserializeParam(
          data['nome_area_vistoriada'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AreaVistoriadaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AreaVistoriadaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        consultoria == other.consultoria &&
        cliente == other.cliente &&
        nomeAreaVistoriada == other.nomeAreaVistoriada;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, consultoria, cliente, nomeAreaVistoriada]);
}

AreaVistoriadaStruct createAreaVistoriadaStruct({
  int? id,
  String? createdAt,
  int? consultoria,
  int? cliente,
  String? nomeAreaVistoriada,
}) =>
    AreaVistoriadaStruct(
      id: id,
      createdAt: createdAt,
      consultoria: consultoria,
      cliente: cliente,
      nomeAreaVistoriada: nomeAreaVistoriada,
    );
