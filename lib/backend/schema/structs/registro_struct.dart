// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroStruct extends BaseStruct {
  RegistroStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    double? latitude,
    double? longitude,
    LatLng? latLong,
    int? consultoria,
    int? tipoOcorrencia,
    String? riaN,
    bool? demandaComunidade,
    bool? processoCritico,
    String? data,
    String? consideracoes,
    String? requisitoLegal,
    String? acaoRecomendada,
    String? prazo,
    EnumStatusAcao? enumStatusAcao,
    int? statusAcao,
    String? descricaoAcaoRealizada,
    List<String>? fotosAcao,
    List<String>? videosAcao,
    String? dataAcao,
    DateTime? dataAcao2,
    int? programa,
    int? responsavelAcao,
    int? cliente,
    String? responsavel,
    EnumCondicaoClima? noiteAnterior,
    EnumCondicaoClima? manha,
    EnumCondicaoClima? tarde,
    int? nivel,
    String? createdBy,
    String? updatedBy,
    int? tema,
    int? areaVistoriada,
    int? riaEmpreendimento,
    int? riaNivel1,
    int? riaNivel2,
    int? riaNivel3,
    int? riaNivel4,
    List<String>? fotoRegistro,
    List<String>? videoRegistro,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _latitude = latitude,
        _longitude = longitude,
        _latLong = latLong,
        _consultoria = consultoria,
        _tipoOcorrencia = tipoOcorrencia,
        _riaN = riaN,
        _demandaComunidade = demandaComunidade,
        _processoCritico = processoCritico,
        _data = data,
        _consideracoes = consideracoes,
        _requisitoLegal = requisitoLegal,
        _acaoRecomendada = acaoRecomendada,
        _prazo = prazo,
        _enumStatusAcao = enumStatusAcao,
        _statusAcao = statusAcao,
        _descricaoAcaoRealizada = descricaoAcaoRealizada,
        _fotosAcao = fotosAcao,
        _videosAcao = videosAcao,
        _dataAcao = dataAcao,
        _dataAcao2 = dataAcao2,
        _programa = programa,
        _responsavelAcao = responsavelAcao,
        _cliente = cliente,
        _responsavel = responsavel,
        _noiteAnterior = noiteAnterior,
        _manha = manha,
        _tarde = tarde,
        _nivel = nivel,
        _createdBy = createdBy,
        _updatedBy = updatedBy,
        _tema = tema,
        _areaVistoriada = areaVistoriada,
        _riaEmpreendimento = riaEmpreendimento,
        _riaNivel1 = riaNivel1,
        _riaNivel2 = riaNivel2,
        _riaNivel3 = riaNivel3,
        _riaNivel4 = riaNivel4,
        _fotoRegistro = fotoRegistro,
        _videoRegistro = videoRegistro;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '0';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '0';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

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
  int? _consultoria;
  int get consultoria => _consultoria ?? 0;
  set consultoria(int? val) => _consultoria = val;
  void incrementConsultoria(int amount) => _consultoria = consultoria + amount;
  bool hasConsultoria() => _consultoria != null;

  // "tipo_ocorrencia" field.
  int? _tipoOcorrencia;
  int get tipoOcorrencia => _tipoOcorrencia ?? 0;
  set tipoOcorrencia(int? val) => _tipoOcorrencia = val;
  void incrementTipoOcorrencia(int amount) =>
      _tipoOcorrencia = tipoOcorrencia + amount;
  bool hasTipoOcorrencia() => _tipoOcorrencia != null;

  // "ria_n" field.
  String? _riaN;
  String get riaN => _riaN ?? '0';
  set riaN(String? val) => _riaN = val;
  bool hasRiaN() => _riaN != null;

  // "demanda_comunidade" field.
  bool? _demandaComunidade;
  bool get demandaComunidade => _demandaComunidade ?? false;
  set demandaComunidade(bool? val) => _demandaComunidade = val;
  bool hasDemandaComunidade() => _demandaComunidade != null;

  // "processo_critico" field.
  bool? _processoCritico;
  bool get processoCritico => _processoCritico ?? false;
  set processoCritico(bool? val) => _processoCritico = val;
  bool hasProcessoCritico() => _processoCritico != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '0';
  set data(String? val) => _data = val;
  bool hasData() => _data != null;

  // "consideracoes" field.
  String? _consideracoes;
  String get consideracoes => _consideracoes ?? '0';
  set consideracoes(String? val) => _consideracoes = val;
  bool hasConsideracoes() => _consideracoes != null;

  // "requisito_legal" field.
  String? _requisitoLegal;
  String get requisitoLegal => _requisitoLegal ?? '0';
  set requisitoLegal(String? val) => _requisitoLegal = val;
  bool hasRequisitoLegal() => _requisitoLegal != null;

  // "acao_recomendada" field.
  String? _acaoRecomendada;
  String get acaoRecomendada => _acaoRecomendada ?? '0';
  set acaoRecomendada(String? val) => _acaoRecomendada = val;
  bool hasAcaoRecomendada() => _acaoRecomendada != null;

  // "prazo" field.
  String? _prazo;
  String get prazo => _prazo ?? '0';
  set prazo(String? val) => _prazo = val;
  bool hasPrazo() => _prazo != null;

  // "enum_status_acao" field.
  EnumStatusAcao? _enumStatusAcao;
  EnumStatusAcao get enumStatusAcao =>
      _enumStatusAcao ?? EnumStatusAcao.NaoIniciado;
  set enumStatusAcao(EnumStatusAcao? val) => _enumStatusAcao = val;
  bool hasEnumStatusAcao() => _enumStatusAcao != null;

  // "status_acao" field.
  int? _statusAcao;
  int get statusAcao => _statusAcao ?? 0;
  set statusAcao(int? val) => _statusAcao = val;
  void incrementStatusAcao(int amount) => _statusAcao = statusAcao + amount;
  bool hasStatusAcao() => _statusAcao != null;

  // "descricao_acao_realizada" field.
  String? _descricaoAcaoRealizada;
  String get descricaoAcaoRealizada => _descricaoAcaoRealizada ?? '0';
  set descricaoAcaoRealizada(String? val) => _descricaoAcaoRealizada = val;
  bool hasDescricaoAcaoRealizada() => _descricaoAcaoRealizada != null;

  // "fotos_acao" field.
  List<String>? _fotosAcao;
  List<String> get fotosAcao => _fotosAcao ?? const [];
  set fotosAcao(List<String>? val) => _fotosAcao = val;
  void updateFotosAcao(Function(List<String>) updateFn) =>
      updateFn(_fotosAcao ??= []);
  bool hasFotosAcao() => _fotosAcao != null;

  // "videos_acao" field.
  List<String>? _videosAcao;
  List<String> get videosAcao => _videosAcao ?? const [];
  set videosAcao(List<String>? val) => _videosAcao = val;
  void updateVideosAcao(Function(List<String>) updateFn) =>
      updateFn(_videosAcao ??= []);
  bool hasVideosAcao() => _videosAcao != null;

  // "data_acao" field.
  String? _dataAcao;
  String get dataAcao => _dataAcao ?? '0';
  set dataAcao(String? val) => _dataAcao = val;
  bool hasDataAcao() => _dataAcao != null;

  // "data_acao2" field.
  DateTime? _dataAcao2;
  DateTime? get dataAcao2 => _dataAcao2;
  set dataAcao2(DateTime? val) => _dataAcao2 = val;
  bool hasDataAcao2() => _dataAcao2 != null;

  // "programa" field.
  int? _programa;
  int get programa => _programa ?? 0;
  set programa(int? val) => _programa = val;
  void incrementPrograma(int amount) => _programa = programa + amount;
  bool hasPrograma() => _programa != null;

  // "responsavel_acao" field.
  int? _responsavelAcao;
  int get responsavelAcao => _responsavelAcao ?? 0;
  set responsavelAcao(int? val) => _responsavelAcao = val;
  void incrementResponsavelAcao(int amount) =>
      _responsavelAcao = responsavelAcao + amount;
  bool hasResponsavelAcao() => _responsavelAcao != null;

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  // "responsavel" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '0';
  set responsavel(String? val) => _responsavel = val;
  bool hasResponsavel() => _responsavel != null;

  // "noite_anterior" field.
  EnumCondicaoClima? _noiteAnterior;
  EnumCondicaoClima get noiteAnterior =>
      _noiteAnterior ?? EnumCondicaoClima.Nublado;
  set noiteAnterior(EnumCondicaoClima? val) => _noiteAnterior = val;
  bool hasNoiteAnterior() => _noiteAnterior != null;

  // "manha" field.
  EnumCondicaoClima? _manha;
  EnumCondicaoClima get manha => _manha ?? EnumCondicaoClima.Nublado;
  set manha(EnumCondicaoClima? val) => _manha = val;
  bool hasManha() => _manha != null;

  // "tarde" field.
  EnumCondicaoClima? _tarde;
  EnumCondicaoClima get tarde => _tarde ?? EnumCondicaoClima.Nublado;
  set tarde(EnumCondicaoClima? val) => _tarde = val;
  bool hasTarde() => _tarde != null;

  // "nivel" field.
  int? _nivel;
  int get nivel => _nivel ?? 0;
  set nivel(int? val) => _nivel = val;
  void incrementNivel(int amount) => _nivel = nivel + amount;
  bool hasNivel() => _nivel != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '0';
  set createdBy(String? val) => _createdBy = val;
  bool hasCreatedBy() => _createdBy != null;

  // "updated_by" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '0';
  set updatedBy(String? val) => _updatedBy = val;
  bool hasUpdatedBy() => _updatedBy != null;

  // "tema" field.
  int? _tema;
  int get tema => _tema ?? 0;
  set tema(int? val) => _tema = val;
  void incrementTema(int amount) => _tema = tema + amount;
  bool hasTema() => _tema != null;

  // "area_vistoriada" field.
  int? _areaVistoriada;
  int get areaVistoriada => _areaVistoriada ?? 0;
  set areaVistoriada(int? val) => _areaVistoriada = val;
  void incrementAreaVistoriada(int amount) =>
      _areaVistoriada = areaVistoriada + amount;
  bool hasAreaVistoriada() => _areaVistoriada != null;

  // "ria_empreendimento" field.
  int? _riaEmpreendimento;
  int get riaEmpreendimento => _riaEmpreendimento ?? 0;
  set riaEmpreendimento(int? val) => _riaEmpreendimento = val;
  void incrementRiaEmpreendimento(int amount) =>
      _riaEmpreendimento = riaEmpreendimento + amount;
  bool hasRiaEmpreendimento() => _riaEmpreendimento != null;

  // "ria_nivel1" field.
  int? _riaNivel1;
  int get riaNivel1 => _riaNivel1 ?? 0;
  set riaNivel1(int? val) => _riaNivel1 = val;
  void incrementRiaNivel1(int amount) => _riaNivel1 = riaNivel1 + amount;
  bool hasRiaNivel1() => _riaNivel1 != null;

  // "ria_nivel2" field.
  int? _riaNivel2;
  int get riaNivel2 => _riaNivel2 ?? 0;
  set riaNivel2(int? val) => _riaNivel2 = val;
  void incrementRiaNivel2(int amount) => _riaNivel2 = riaNivel2 + amount;
  bool hasRiaNivel2() => _riaNivel2 != null;

  // "ria_nivel3" field.
  int? _riaNivel3;
  int get riaNivel3 => _riaNivel3 ?? 0;
  set riaNivel3(int? val) => _riaNivel3 = val;
  void incrementRiaNivel3(int amount) => _riaNivel3 = riaNivel3 + amount;
  bool hasRiaNivel3() => _riaNivel3 != null;

  // "ria_nivel4" field.
  int? _riaNivel4;
  int get riaNivel4 => _riaNivel4 ?? 0;
  set riaNivel4(int? val) => _riaNivel4 = val;
  void incrementRiaNivel4(int amount) => _riaNivel4 = riaNivel4 + amount;
  bool hasRiaNivel4() => _riaNivel4 != null;

  // "foto_registro" field.
  List<String>? _fotoRegistro;
  List<String> get fotoRegistro => _fotoRegistro ?? const [];
  set fotoRegistro(List<String>? val) => _fotoRegistro = val;
  void updateFotoRegistro(Function(List<String>) updateFn) =>
      updateFn(_fotoRegistro ??= []);
  bool hasFotoRegistro() => _fotoRegistro != null;

  // "video_registro" field.
  List<String>? _videoRegistro;
  List<String> get videoRegistro => _videoRegistro ?? const [];
  set videoRegistro(List<String>? val) => _videoRegistro = val;
  void updateVideoRegistro(Function(List<String>) updateFn) =>
      updateFn(_videoRegistro ??= []);
  bool hasVideoRegistro() => _videoRegistro != null;

  static RegistroStruct fromMap(Map<String, dynamic> data) => RegistroStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        latLong: data['lat_long'] as LatLng?,
        consultoria: castToType<int>(data['consultoria']),
        tipoOcorrencia: castToType<int>(data['tipo_ocorrencia']),
        riaN: data['ria_n'] as String?,
        demandaComunidade: data['demanda_comunidade'] as bool?,
        processoCritico: data['processo_critico'] as bool?,
        data: data['data'] as String?,
        consideracoes: data['consideracoes'] as String?,
        requisitoLegal: data['requisito_legal'] as String?,
        acaoRecomendada: data['acao_recomendada'] as String?,
        prazo: data['prazo'] as String?,
        enumStatusAcao:
            deserializeEnum<EnumStatusAcao>(data['enum_status_acao']),
        statusAcao: castToType<int>(data['status_acao']),
        descricaoAcaoRealizada: data['descricao_acao_realizada'] as String?,
        fotosAcao: getDataList(data['fotos_acao']),
        videosAcao: getDataList(data['videos_acao']),
        dataAcao: data['data_acao'] as String?,
        dataAcao2: data['data_acao2'] as DateTime?,
        programa: castToType<int>(data['programa']),
        responsavelAcao: castToType<int>(data['responsavel_acao']),
        cliente: castToType<int>(data['cliente']),
        responsavel: data['responsavel'] as String?,
        noiteAnterior:
            deserializeEnum<EnumCondicaoClima>(data['noite_anterior']),
        manha: deserializeEnum<EnumCondicaoClima>(data['manha']),
        tarde: deserializeEnum<EnumCondicaoClima>(data['tarde']),
        nivel: castToType<int>(data['nivel']),
        createdBy: data['created_by'] as String?,
        updatedBy: data['updated_by'] as String?,
        tema: castToType<int>(data['tema']),
        areaVistoriada: castToType<int>(data['area_vistoriada']),
        riaEmpreendimento: castToType<int>(data['ria_empreendimento']),
        riaNivel1: castToType<int>(data['ria_nivel1']),
        riaNivel2: castToType<int>(data['ria_nivel2']),
        riaNivel3: castToType<int>(data['ria_nivel3']),
        riaNivel4: castToType<int>(data['ria_nivel4']),
        fotoRegistro: getDataList(data['foto_registro']),
        videoRegistro: getDataList(data['video_registro']),
      );

  static RegistroStruct? maybeFromMap(dynamic data) =>
      data is Map ? RegistroStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'latitude': _latitude,
        'longitude': _longitude,
        'lat_long': _latLong,
        'consultoria': _consultoria,
        'tipo_ocorrencia': _tipoOcorrencia,
        'ria_n': _riaN,
        'demanda_comunidade': _demandaComunidade,
        'processo_critico': _processoCritico,
        'data': _data,
        'consideracoes': _consideracoes,
        'requisito_legal': _requisitoLegal,
        'acao_recomendada': _acaoRecomendada,
        'prazo': _prazo,
        'enum_status_acao': _enumStatusAcao?.serialize(),
        'status_acao': _statusAcao,
        'descricao_acao_realizada': _descricaoAcaoRealizada,
        'fotos_acao': _fotosAcao,
        'videos_acao': _videosAcao,
        'data_acao': _dataAcao,
        'data_acao2': _dataAcao2,
        'programa': _programa,
        'responsavel_acao': _responsavelAcao,
        'cliente': _cliente,
        'responsavel': _responsavel,
        'noite_anterior': _noiteAnterior?.serialize(),
        'manha': _manha?.serialize(),
        'tarde': _tarde?.serialize(),
        'nivel': _nivel,
        'created_by': _createdBy,
        'updated_by': _updatedBy,
        'tema': _tema,
        'area_vistoriada': _areaVistoriada,
        'ria_empreendimento': _riaEmpreendimento,
        'ria_nivel1': _riaNivel1,
        'ria_nivel2': _riaNivel2,
        'ria_nivel3': _riaNivel3,
        'ria_nivel4': _riaNivel4,
        'foto_registro': _fotoRegistro,
        'video_registro': _videoRegistro,
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
        'updated_at': serializeParam(
          _updatedAt,
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
          ParamType.int,
        ),
        'tipo_ocorrencia': serializeParam(
          _tipoOcorrencia,
          ParamType.int,
        ),
        'ria_n': serializeParam(
          _riaN,
          ParamType.String,
        ),
        'demanda_comunidade': serializeParam(
          _demandaComunidade,
          ParamType.bool,
        ),
        'processo_critico': serializeParam(
          _processoCritico,
          ParamType.bool,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
        'consideracoes': serializeParam(
          _consideracoes,
          ParamType.String,
        ),
        'requisito_legal': serializeParam(
          _requisitoLegal,
          ParamType.String,
        ),
        'acao_recomendada': serializeParam(
          _acaoRecomendada,
          ParamType.String,
        ),
        'prazo': serializeParam(
          _prazo,
          ParamType.String,
        ),
        'enum_status_acao': serializeParam(
          _enumStatusAcao,
          ParamType.Enum,
        ),
        'status_acao': serializeParam(
          _statusAcao,
          ParamType.int,
        ),
        'descricao_acao_realizada': serializeParam(
          _descricaoAcaoRealizada,
          ParamType.String,
        ),
        'fotos_acao': serializeParam(
          _fotosAcao,
          ParamType.String,
          true,
        ),
        'videos_acao': serializeParam(
          _videosAcao,
          ParamType.String,
          true,
        ),
        'data_acao': serializeParam(
          _dataAcao,
          ParamType.String,
        ),
        'data_acao2': serializeParam(
          _dataAcao2,
          ParamType.DateTime,
        ),
        'programa': serializeParam(
          _programa,
          ParamType.int,
        ),
        'responsavel_acao': serializeParam(
          _responsavelAcao,
          ParamType.int,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.int,
        ),
        'responsavel': serializeParam(
          _responsavel,
          ParamType.String,
        ),
        'noite_anterior': serializeParam(
          _noiteAnterior,
          ParamType.Enum,
        ),
        'manha': serializeParam(
          _manha,
          ParamType.Enum,
        ),
        'tarde': serializeParam(
          _tarde,
          ParamType.Enum,
        ),
        'nivel': serializeParam(
          _nivel,
          ParamType.int,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'updated_by': serializeParam(
          _updatedBy,
          ParamType.String,
        ),
        'tema': serializeParam(
          _tema,
          ParamType.int,
        ),
        'area_vistoriada': serializeParam(
          _areaVistoriada,
          ParamType.int,
        ),
        'ria_empreendimento': serializeParam(
          _riaEmpreendimento,
          ParamType.int,
        ),
        'ria_nivel1': serializeParam(
          _riaNivel1,
          ParamType.int,
        ),
        'ria_nivel2': serializeParam(
          _riaNivel2,
          ParamType.int,
        ),
        'ria_nivel3': serializeParam(
          _riaNivel3,
          ParamType.int,
        ),
        'ria_nivel4': serializeParam(
          _riaNivel4,
          ParamType.int,
        ),
        'foto_registro': serializeParam(
          _fotoRegistro,
          ParamType.String,
          true,
        ),
        'video_registro': serializeParam(
          _videoRegistro,
          ParamType.String,
          true,
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
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
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
        consultoria: deserializeParam(
          data['consultoria'],
          ParamType.int,
          false,
        ),
        tipoOcorrencia: deserializeParam(
          data['tipo_ocorrencia'],
          ParamType.int,
          false,
        ),
        riaN: deserializeParam(
          data['ria_n'],
          ParamType.String,
          false,
        ),
        demandaComunidade: deserializeParam(
          data['demanda_comunidade'],
          ParamType.bool,
          false,
        ),
        processoCritico: deserializeParam(
          data['processo_critico'],
          ParamType.bool,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
        consideracoes: deserializeParam(
          data['consideracoes'],
          ParamType.String,
          false,
        ),
        requisitoLegal: deserializeParam(
          data['requisito_legal'],
          ParamType.String,
          false,
        ),
        acaoRecomendada: deserializeParam(
          data['acao_recomendada'],
          ParamType.String,
          false,
        ),
        prazo: deserializeParam(
          data['prazo'],
          ParamType.String,
          false,
        ),
        enumStatusAcao: deserializeParam<EnumStatusAcao>(
          data['enum_status_acao'],
          ParamType.Enum,
          false,
        ),
        statusAcao: deserializeParam(
          data['status_acao'],
          ParamType.int,
          false,
        ),
        descricaoAcaoRealizada: deserializeParam(
          data['descricao_acao_realizada'],
          ParamType.String,
          false,
        ),
        fotosAcao: deserializeParam<String>(
          data['fotos_acao'],
          ParamType.String,
          true,
        ),
        videosAcao: deserializeParam<String>(
          data['videos_acao'],
          ParamType.String,
          true,
        ),
        dataAcao: deserializeParam(
          data['data_acao'],
          ParamType.String,
          false,
        ),
        dataAcao2: deserializeParam(
          data['data_acao2'],
          ParamType.DateTime,
          false,
        ),
        programa: deserializeParam(
          data['programa'],
          ParamType.int,
          false,
        ),
        responsavelAcao: deserializeParam(
          data['responsavel_acao'],
          ParamType.int,
          false,
        ),
        cliente: deserializeParam(
          data['cliente'],
          ParamType.int,
          false,
        ),
        responsavel: deserializeParam(
          data['responsavel'],
          ParamType.String,
          false,
        ),
        noiteAnterior: deserializeParam<EnumCondicaoClima>(
          data['noite_anterior'],
          ParamType.Enum,
          false,
        ),
        manha: deserializeParam<EnumCondicaoClima>(
          data['manha'],
          ParamType.Enum,
          false,
        ),
        tarde: deserializeParam<EnumCondicaoClima>(
          data['tarde'],
          ParamType.Enum,
          false,
        ),
        nivel: deserializeParam(
          data['nivel'],
          ParamType.int,
          false,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
        updatedBy: deserializeParam(
          data['updated_by'],
          ParamType.String,
          false,
        ),
        tema: deserializeParam(
          data['tema'],
          ParamType.int,
          false,
        ),
        areaVistoriada: deserializeParam(
          data['area_vistoriada'],
          ParamType.int,
          false,
        ),
        riaEmpreendimento: deserializeParam(
          data['ria_empreendimento'],
          ParamType.int,
          false,
        ),
        riaNivel1: deserializeParam(
          data['ria_nivel1'],
          ParamType.int,
          false,
        ),
        riaNivel2: deserializeParam(
          data['ria_nivel2'],
          ParamType.int,
          false,
        ),
        riaNivel3: deserializeParam(
          data['ria_nivel3'],
          ParamType.int,
          false,
        ),
        riaNivel4: deserializeParam(
          data['ria_nivel4'],
          ParamType.int,
          false,
        ),
        fotoRegistro: deserializeParam<String>(
          data['foto_registro'],
          ParamType.String,
          true,
        ),
        videoRegistro: deserializeParam<String>(
          data['video_registro'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'RegistroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RegistroStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        latLong == other.latLong &&
        consultoria == other.consultoria &&
        tipoOcorrencia == other.tipoOcorrencia &&
        riaN == other.riaN &&
        demandaComunidade == other.demandaComunidade &&
        processoCritico == other.processoCritico &&
        data == other.data &&
        consideracoes == other.consideracoes &&
        requisitoLegal == other.requisitoLegal &&
        acaoRecomendada == other.acaoRecomendada &&
        prazo == other.prazo &&
        enumStatusAcao == other.enumStatusAcao &&
        statusAcao == other.statusAcao &&
        descricaoAcaoRealizada == other.descricaoAcaoRealizada &&
        listEquality.equals(fotosAcao, other.fotosAcao) &&
        listEquality.equals(videosAcao, other.videosAcao) &&
        dataAcao == other.dataAcao &&
        dataAcao2 == other.dataAcao2 &&
        programa == other.programa &&
        responsavelAcao == other.responsavelAcao &&
        cliente == other.cliente &&
        responsavel == other.responsavel &&
        noiteAnterior == other.noiteAnterior &&
        manha == other.manha &&
        tarde == other.tarde &&
        nivel == other.nivel &&
        createdBy == other.createdBy &&
        updatedBy == other.updatedBy &&
        tema == other.tema &&
        areaVistoriada == other.areaVistoriada &&
        riaEmpreendimento == other.riaEmpreendimento &&
        riaNivel1 == other.riaNivel1 &&
        riaNivel2 == other.riaNivel2 &&
        riaNivel3 == other.riaNivel3 &&
        riaNivel4 == other.riaNivel4 &&
        listEquality.equals(fotoRegistro, other.fotoRegistro) &&
        listEquality.equals(videoRegistro, other.videoRegistro);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        latitude,
        longitude,
        latLong,
        consultoria,
        tipoOcorrencia,
        riaN,
        demandaComunidade,
        processoCritico,
        data,
        consideracoes,
        requisitoLegal,
        acaoRecomendada,
        prazo,
        enumStatusAcao,
        statusAcao,
        descricaoAcaoRealizada,
        fotosAcao,
        videosAcao,
        dataAcao,
        dataAcao2,
        programa,
        responsavelAcao,
        cliente,
        responsavel,
        noiteAnterior,
        manha,
        tarde,
        nivel,
        createdBy,
        updatedBy,
        tema,
        areaVistoriada,
        riaEmpreendimento,
        riaNivel1,
        riaNivel2,
        riaNivel3,
        riaNivel4,
        fotoRegistro,
        videoRegistro
      ]);
}

RegistroStruct createRegistroStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  double? latitude,
  double? longitude,
  LatLng? latLong,
  int? consultoria,
  int? tipoOcorrencia,
  String? riaN,
  bool? demandaComunidade,
  bool? processoCritico,
  String? data,
  String? consideracoes,
  String? requisitoLegal,
  String? acaoRecomendada,
  String? prazo,
  EnumStatusAcao? enumStatusAcao,
  int? statusAcao,
  String? descricaoAcaoRealizada,
  String? dataAcao,
  DateTime? dataAcao2,
  int? programa,
  int? responsavelAcao,
  int? cliente,
  String? responsavel,
  EnumCondicaoClima? noiteAnterior,
  EnumCondicaoClima? manha,
  EnumCondicaoClima? tarde,
  int? nivel,
  String? createdBy,
  String? updatedBy,
  int? tema,
  int? areaVistoriada,
  int? riaEmpreendimento,
  int? riaNivel1,
  int? riaNivel2,
  int? riaNivel3,
  int? riaNivel4,
}) =>
    RegistroStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      latitude: latitude,
      longitude: longitude,
      latLong: latLong,
      consultoria: consultoria,
      tipoOcorrencia: tipoOcorrencia,
      riaN: riaN,
      demandaComunidade: demandaComunidade,
      processoCritico: processoCritico,
      data: data,
      consideracoes: consideracoes,
      requisitoLegal: requisitoLegal,
      acaoRecomendada: acaoRecomendada,
      prazo: prazo,
      enumStatusAcao: enumStatusAcao,
      statusAcao: statusAcao,
      descricaoAcaoRealizada: descricaoAcaoRealizada,
      dataAcao: dataAcao,
      dataAcao2: dataAcao2,
      programa: programa,
      responsavelAcao: responsavelAcao,
      cliente: cliente,
      responsavel: responsavel,
      noiteAnterior: noiteAnterior,
      manha: manha,
      tarde: tarde,
      nivel: nivel,
      createdBy: createdBy,
      updatedBy: updatedBy,
      tema: tema,
      areaVistoriada: areaVistoriada,
      riaEmpreendimento: riaEmpreendimento,
      riaNivel1: riaNivel1,
      riaNivel2: riaNivel2,
      riaNivel3: riaNivel3,
      riaNivel4: riaNivel4,
    );
