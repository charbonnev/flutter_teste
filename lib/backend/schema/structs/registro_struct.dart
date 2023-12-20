// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroStruct extends BaseStruct {
  RegistroStruct({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    UsersStruct? createdBy,
    String? idCreatedBy,
    UsersStruct? updatedBy,
    String? idUpdatedBy,
    double? latitude,
    double? longitude,
    LatLng? latLong,
    ConsultoriaStruct? consultoria,
    int? consultoriaId,
    int? tipoOcorrencia,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _createdBy = createdBy,
        _idCreatedBy = idCreatedBy,
        _updatedBy = updatedBy,
        _idUpdatedBy = idUpdatedBy,
        _latitude = latitude,
        _longitude = longitude,
        _latLong = latLong,
        _consultoria = consultoria,
        _consultoriaId = consultoriaId,
        _tipoOcorrencia = tipoOcorrencia;

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

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "created_by" field.
  UsersStruct? _createdBy;
  UsersStruct get createdBy => _createdBy ?? UsersStruct();
  set createdBy(UsersStruct? val) => _createdBy = val;
  void updateCreatedBy(Function(UsersStruct) updateFn) =>
      updateFn(_createdBy ??= UsersStruct());
  bool hasCreatedBy() => _createdBy != null;

  // "id_created_by" field.
  String? _idCreatedBy;
  String get idCreatedBy => _idCreatedBy ?? '';
  set idCreatedBy(String? val) => _idCreatedBy = val;
  bool hasIdCreatedBy() => _idCreatedBy != null;

  // "updated_by" field.
  UsersStruct? _updatedBy;
  UsersStruct get updatedBy => _updatedBy ?? UsersStruct();
  set updatedBy(UsersStruct? val) => _updatedBy = val;
  void updateUpdatedBy(Function(UsersStruct) updateFn) =>
      updateFn(_updatedBy ??= UsersStruct());
  bool hasUpdatedBy() => _updatedBy != null;

  // "id_updated_by" field.
  String? _idUpdatedBy;
  String get idUpdatedBy => _idUpdatedBy ?? '';
  set idUpdatedBy(String? val) => _idUpdatedBy = val;
  bool hasIdUpdatedBy() => _idUpdatedBy != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;
  void incrementLatitude(double amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;
  void incrementLongitude(double amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  // "lat_long" field.
  LatLng? _latLong;
  LatLng? get latLong => _latLong;
  set latLong(LatLng? val) => _latLong = val;
  bool hasLatLong() => _latLong != null;

  // "consultoria" field.
  ConsultoriaStruct? _consultoria;
  ConsultoriaStruct get consultoria => _consultoria ?? ConsultoriaStruct();
  set consultoria(ConsultoriaStruct? val) => _consultoria = val;
  void updateConsultoria(Function(ConsultoriaStruct) updateFn) =>
      updateFn(_consultoria ??= ConsultoriaStruct());
  bool hasConsultoria() => _consultoria != null;

  // "consultoria_id" field.
  int? _consultoriaId;
  int get consultoriaId => _consultoriaId ?? 0;
  set consultoriaId(int? val) => _consultoriaId = val;
  void incrementConsultoriaId(int amount) =>
      _consultoriaId = consultoriaId + amount;
  bool hasConsultoriaId() => _consultoriaId != null;

  // "tipo_ocorrencia" field.
  int? _tipoOcorrencia;
  int get tipoOcorrencia => _tipoOcorrencia ?? 0;
  set tipoOcorrencia(int? val) => _tipoOcorrencia = val;
  void incrementTipoOcorrencia(int amount) =>
      _tipoOcorrencia = tipoOcorrencia + amount;
  bool hasTipoOcorrencia() => _tipoOcorrencia != null;

  static RegistroStruct fromMap(Map<String, dynamic> data) => RegistroStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as DateTime?,
        createdBy: UsersStruct.maybeFromMap(data['created_by']),
        idCreatedBy: data['id_created_by'] as String?,
        updatedBy: UsersStruct.maybeFromMap(data['updated_by']),
        idUpdatedBy: data['id_updated_by'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        latLong: data['lat_long'] as LatLng?,
        consultoria: ConsultoriaStruct.maybeFromMap(data['consultoria']),
        consultoriaId: castToType<int>(data['consultoria_id']),
        tipoOcorrencia: castToType<int>(data['tipo_ocorrencia']),
      );

  static RegistroStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RegistroStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'created_by': _createdBy?.toMap(),
        'id_created_by': _idCreatedBy,
        'updated_by': _updatedBy?.toMap(),
        'id_updated_by': _idUpdatedBy,
        'latitude': _latitude,
        'longitude': _longitude,
        'lat_long': _latLong,
        'consultoria': _consultoria?.toMap(),
        'consultoria_id': _consultoriaId,
        'tipo_ocorrencia': _tipoOcorrencia,
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
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.DataStruct,
        ),
        'id_created_by': serializeParam(
          _idCreatedBy,
          ParamType.String,
        ),
        'updated_by': serializeParam(
          _updatedBy,
          ParamType.DataStruct,
        ),
        'id_updated_by': serializeParam(
          _idUpdatedBy,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'lat_long': serializeParam(
          _latLong,
          ParamType.LatLng,
        ),
        'consultoria': serializeParam(
          _consultoria,
          ParamType.DataStruct,
        ),
        'consultoria_id': serializeParam(
          _consultoriaId,
          ParamType.int,
        ),
        'tipo_ocorrencia': serializeParam(
          _tipoOcorrencia,
          ParamType.int,
        ),
      }.withoutNulls;

  static RegistroStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegistroStruct(
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
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.DateTime,
          false,
        ),
        createdBy: deserializeStructParam(
          data['created_by'],
          ParamType.DataStruct,
          false,
          structBuilder: UsersStruct.fromSerializableMap,
        ),
        idCreatedBy: deserializeParam(
          data['id_created_by'],
          ParamType.String,
          false,
        ),
        updatedBy: deserializeStructParam(
          data['updated_by'],
          ParamType.DataStruct,
          false,
          structBuilder: UsersStruct.fromSerializableMap,
        ),
        idUpdatedBy: deserializeParam(
          data['id_updated_by'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        latLong: deserializeParam(
          data['lat_long'],
          ParamType.LatLng,
          false,
        ),
        consultoria: deserializeStructParam(
          data['consultoria'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsultoriaStruct.fromSerializableMap,
        ),
        consultoriaId: deserializeParam(
          data['consultoria_id'],
          ParamType.int,
          false,
        ),
        tipoOcorrencia: deserializeParam(
          data['tipo_ocorrencia'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RegistroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegistroStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        createdBy == other.createdBy &&
        idCreatedBy == other.idCreatedBy &&
        updatedBy == other.updatedBy &&
        idUpdatedBy == other.idUpdatedBy &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        latLong == other.latLong &&
        consultoria == other.consultoria &&
        consultoriaId == other.consultoriaId &&
        tipoOcorrencia == other.tipoOcorrencia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        createdBy,
        idCreatedBy,
        updatedBy,
        idUpdatedBy,
        latitude,
        longitude,
        latLong,
        consultoria,
        consultoriaId,
        tipoOcorrencia
      ]);
}

RegistroStruct createRegistroStruct({
  int? id,
  DateTime? createdAt,
  DateTime? updatedAt,
  UsersStruct? createdBy,
  String? idCreatedBy,
  UsersStruct? updatedBy,
  String? idUpdatedBy,
  double? latitude,
  double? longitude,
  LatLng? latLong,
  ConsultoriaStruct? consultoria,
  int? consultoriaId,
  int? tipoOcorrencia,
}) =>
    RegistroStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      createdBy: createdBy ?? UsersStruct(),
      idCreatedBy: idCreatedBy,
      updatedBy: updatedBy ?? UsersStruct(),
      idUpdatedBy: idUpdatedBy,
      latitude: latitude,
      longitude: longitude,
      latLong: latLong,
      consultoria: consultoria ?? ConsultoriaStruct(),
      consultoriaId: consultoriaId,
      tipoOcorrencia: tipoOcorrencia,
    );
