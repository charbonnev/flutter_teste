// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroViewStruct extends BaseStruct {
  RegistroViewStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    String? createdBy,
    String? updatedBy,
    double? latitude,
    double? longitude,
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
    int? statusAcao,
    String? descricaoAcaoRealizada,
    List<String>? fotosAcao,
    List<String>? videosAcao,
    String? dataAcao,
    int? programa,
    int? cliente,
    String? responsavel,
    int? responsavelAcao,
    int? nivel,
    int? tema,
    int? areaVistoriada,
    EnumCondicaoClima? noiteAnterior,
    EnumCondicaoClima? manha,
    EnumCondicaoClima? tarde,
    DateTime? prazoDT,
    DateTime? dataAcaoDT,
    ProgramaStruct? programaObj,
    ResponsavelAcaoStruct? responsavelAcaoObj,
    ClienteStruct? clienteObj,
    UserStruct? responsavelObj,
    String? user,
    String? userEmail,
    String? nomeTipoOcorrencia,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _createdBy = createdBy,
        _updatedBy = updatedBy,
        _latitude = latitude,
        _longitude = longitude,
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
        _statusAcao = statusAcao,
        _descricaoAcaoRealizada = descricaoAcaoRealizada,
        _fotosAcao = fotosAcao,
        _videosAcao = videosAcao,
        _dataAcao = dataAcao,
        _programa = programa,
        _cliente = cliente,
        _responsavel = responsavel,
        _responsavelAcao = responsavelAcao,
        _nivel = nivel,
        _tema = tema,
        _areaVistoriada = areaVistoriada,
        _noiteAnterior = noiteAnterior,
        _manha = manha,
        _tarde = tarde,
        _prazoDT = prazoDT,
        _dataAcaoDT = dataAcaoDT,
        _programaObj = programaObj,
        _responsavelAcaoObj = responsavelAcaoObj,
        _clienteObj = clienteObj,
        _responsavelObj = responsavelObj,
        _user = user,
        _userEmail = userEmail,
        _nomeTipoOcorrencia = nomeTipoOcorrencia;

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

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;
  bool hasCreatedBy() => _createdBy != null;

  // "updated_by" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  set updatedBy(String? val) => _updatedBy = val;
  bool hasUpdatedBy() => _updatedBy != null;

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
  String get riaN => _riaN ?? '';
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
  String get data => _data ?? '';
  set data(String? val) => _data = val;
  bool hasData() => _data != null;

  // "consideracoes" field.
  String? _consideracoes;
  String get consideracoes => _consideracoes ?? '';
  set consideracoes(String? val) => _consideracoes = val;
  bool hasConsideracoes() => _consideracoes != null;

  // "requisito_legal" field.
  String? _requisitoLegal;
  String get requisitoLegal => _requisitoLegal ?? '';
  set requisitoLegal(String? val) => _requisitoLegal = val;
  bool hasRequisitoLegal() => _requisitoLegal != null;

  // "acao_recomendada" field.
  String? _acaoRecomendada;
  String get acaoRecomendada => _acaoRecomendada ?? '';
  set acaoRecomendada(String? val) => _acaoRecomendada = val;
  bool hasAcaoRecomendada() => _acaoRecomendada != null;

  // "prazo" field.
  String? _prazo;
  String get prazo => _prazo ?? '';
  set prazo(String? val) => _prazo = val;
  bool hasPrazo() => _prazo != null;

  // "status_acao" field.
  int? _statusAcao;
  int get statusAcao => _statusAcao ?? 0;
  set statusAcao(int? val) => _statusAcao = val;
  void incrementStatusAcao(int amount) => _statusAcao = statusAcao + amount;
  bool hasStatusAcao() => _statusAcao != null;

  // "descricao_acao_realizada" field.
  String? _descricaoAcaoRealizada;
  String get descricaoAcaoRealizada => _descricaoAcaoRealizada ?? '';
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
  String get dataAcao => _dataAcao ?? '';
  set dataAcao(String? val) => _dataAcao = val;
  bool hasDataAcao() => _dataAcao != null;

  // "programa" field.
  int? _programa;
  int get programa => _programa ?? 0;
  set programa(int? val) => _programa = val;
  void incrementPrograma(int amount) => _programa = programa + amount;
  bool hasPrograma() => _programa != null;

  // "cliente" field.
  int? _cliente;
  int get cliente => _cliente ?? 0;
  set cliente(int? val) => _cliente = val;
  void incrementCliente(int amount) => _cliente = cliente + amount;
  bool hasCliente() => _cliente != null;

  // "responsavel" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '';
  set responsavel(String? val) => _responsavel = val;
  bool hasResponsavel() => _responsavel != null;

  // "responsavel_acao" field.
  int? _responsavelAcao;
  int get responsavelAcao => _responsavelAcao ?? 0;
  set responsavelAcao(int? val) => _responsavelAcao = val;
  void incrementResponsavelAcao(int amount) =>
      _responsavelAcao = responsavelAcao + amount;
  bool hasResponsavelAcao() => _responsavelAcao != null;

  // "nivel" field.
  int? _nivel;
  int get nivel => _nivel ?? 0;
  set nivel(int? val) => _nivel = val;
  void incrementNivel(int amount) => _nivel = nivel + amount;
  bool hasNivel() => _nivel != null;

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

  // "noite_anterior" field.
  EnumCondicaoClima? _noiteAnterior;
  EnumCondicaoClima? get noiteAnterior => _noiteAnterior;
  set noiteAnterior(EnumCondicaoClima? val) => _noiteAnterior = val;
  bool hasNoiteAnterior() => _noiteAnterior != null;

  // "manha" field.
  EnumCondicaoClima? _manha;
  EnumCondicaoClima? get manha => _manha;
  set manha(EnumCondicaoClima? val) => _manha = val;
  bool hasManha() => _manha != null;

  // "tarde" field.
  EnumCondicaoClima? _tarde;
  EnumCondicaoClima? get tarde => _tarde;
  set tarde(EnumCondicaoClima? val) => _tarde = val;
  bool hasTarde() => _tarde != null;

  // "prazo_DT" field.
  DateTime? _prazoDT;
  DateTime? get prazoDT => _prazoDT;
  set prazoDT(DateTime? val) => _prazoDT = val;
  bool hasPrazoDT() => _prazoDT != null;

  // "data_acaoDT" field.
  DateTime? _dataAcaoDT;
  DateTime? get dataAcaoDT => _dataAcaoDT;
  set dataAcaoDT(DateTime? val) => _dataAcaoDT = val;
  bool hasDataAcaoDT() => _dataAcaoDT != null;

  // "programa_obj" field.
  ProgramaStruct? _programaObj;
  ProgramaStruct get programaObj => _programaObj ?? ProgramaStruct();
  set programaObj(ProgramaStruct? val) => _programaObj = val;
  void updateProgramaObj(Function(ProgramaStruct) updateFn) =>
      updateFn(_programaObj ??= ProgramaStruct());
  bool hasProgramaObj() => _programaObj != null;

  // "responsavel_acao_obj" field.
  ResponsavelAcaoStruct? _responsavelAcaoObj;
  ResponsavelAcaoStruct get responsavelAcaoObj =>
      _responsavelAcaoObj ?? ResponsavelAcaoStruct();
  set responsavelAcaoObj(ResponsavelAcaoStruct? val) =>
      _responsavelAcaoObj = val;
  void updateResponsavelAcaoObj(Function(ResponsavelAcaoStruct) updateFn) =>
      updateFn(_responsavelAcaoObj ??= ResponsavelAcaoStruct());
  bool hasResponsavelAcaoObj() => _responsavelAcaoObj != null;

  // "cliente_obj" field.
  ClienteStruct? _clienteObj;
  ClienteStruct get clienteObj => _clienteObj ?? ClienteStruct();
  set clienteObj(ClienteStruct? val) => _clienteObj = val;
  void updateClienteObj(Function(ClienteStruct) updateFn) =>
      updateFn(_clienteObj ??= ClienteStruct());
  bool hasClienteObj() => _clienteObj != null;

  // "responsavel_obj" field.
  UserStruct? _responsavelObj;
  UserStruct get responsavelObj => _responsavelObj ?? UserStruct();
  set responsavelObj(UserStruct? val) => _responsavelObj = val;
  void updateResponsavelObj(Function(UserStruct) updateFn) =>
      updateFn(_responsavelObj ??= UserStruct());
  bool hasResponsavelObj() => _responsavelObj != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  set user(String? val) => _user = val;
  bool hasUser() => _user != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  set userEmail(String? val) => _userEmail = val;
  bool hasUserEmail() => _userEmail != null;

  // "nome_tipo_ocorrencia" field.
  String? _nomeTipoOcorrencia;
  String get nomeTipoOcorrencia => _nomeTipoOcorrencia ?? '';
  set nomeTipoOcorrencia(String? val) => _nomeTipoOcorrencia = val;
  bool hasNomeTipoOcorrencia() => _nomeTipoOcorrencia != null;

  static RegistroViewStruct fromMap(Map<String, dynamic> data) =>
      RegistroViewStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        createdBy: data['created_by'] as String?,
        updatedBy: data['updated_by'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
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
        statusAcao: castToType<int>(data['status_acao']),
        descricaoAcaoRealizada: data['descricao_acao_realizada'] as String?,
        fotosAcao: getDataList(data['fotos_acao']),
        videosAcao: getDataList(data['videos_acao']),
        dataAcao: data['data_acao'] as String?,
        programa: castToType<int>(data['programa']),
        cliente: castToType<int>(data['cliente']),
        responsavel: data['responsavel'] as String?,
        responsavelAcao: castToType<int>(data['responsavel_acao']),
        nivel: castToType<int>(data['nivel']),
        tema: castToType<int>(data['tema']),
        areaVistoriada: castToType<int>(data['area_vistoriada']),
        noiteAnterior:
            deserializeEnum<EnumCondicaoClima>(data['noite_anterior']),
        manha: deserializeEnum<EnumCondicaoClima>(data['manha']),
        tarde: deserializeEnum<EnumCondicaoClima>(data['tarde']),
        prazoDT: data['prazo_DT'] as DateTime?,
        dataAcaoDT: data['data_acaoDT'] as DateTime?,
        programaObj: ProgramaStruct.maybeFromMap(data['programa_obj']),
        responsavelAcaoObj:
            ResponsavelAcaoStruct.maybeFromMap(data['responsavel_acao_obj']),
        clienteObj: ClienteStruct.maybeFromMap(data['cliente_obj']),
        responsavelObj: UserStruct.maybeFromMap(data['responsavel_obj']),
        user: data['user'] as String?,
        userEmail: data['user_email'] as String?,
        nomeTipoOcorrencia: data['nome_tipo_ocorrencia'] as String?,
      );

  static RegistroViewStruct? maybeFromMap(dynamic data) => data is Map
      ? RegistroViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'created_by': _createdBy,
        'updated_by': _updatedBy,
        'latitude': _latitude,
        'longitude': _longitude,
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
        'status_acao': _statusAcao,
        'descricao_acao_realizada': _descricaoAcaoRealizada,
        'fotos_acao': _fotosAcao,
        'videos_acao': _videosAcao,
        'data_acao': _dataAcao,
        'programa': _programa,
        'cliente': _cliente,
        'responsavel': _responsavel,
        'responsavel_acao': _responsavelAcao,
        'nivel': _nivel,
        'tema': _tema,
        'area_vistoriada': _areaVistoriada,
        'noite_anterior': _noiteAnterior?.serialize(),
        'manha': _manha?.serialize(),
        'tarde': _tarde?.serialize(),
        'prazo_DT': _prazoDT,
        'data_acaoDT': _dataAcaoDT,
        'programa_obj': _programaObj?.toMap(),
        'responsavel_acao_obj': _responsavelAcaoObj?.toMap(),
        'cliente_obj': _clienteObj?.toMap(),
        'responsavel_obj': _responsavelObj?.toMap(),
        'user': _user,
        'user_email': _userEmail,
        'nome_tipo_ocorrencia': _nomeTipoOcorrencia,
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
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'updated_by': serializeParam(
          _updatedBy,
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
        'programa': serializeParam(
          _programa,
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
        'responsavel_acao': serializeParam(
          _responsavelAcao,
          ParamType.int,
        ),
        'nivel': serializeParam(
          _nivel,
          ParamType.int,
        ),
        'tema': serializeParam(
          _tema,
          ParamType.int,
        ),
        'area_vistoriada': serializeParam(
          _areaVistoriada,
          ParamType.int,
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
        'prazo_DT': serializeParam(
          _prazoDT,
          ParamType.DateTime,
        ),
        'data_acaoDT': serializeParam(
          _dataAcaoDT,
          ParamType.DateTime,
        ),
        'programa_obj': serializeParam(
          _programaObj,
          ParamType.DataStruct,
        ),
        'responsavel_acao_obj': serializeParam(
          _responsavelAcaoObj,
          ParamType.DataStruct,
        ),
        'cliente_obj': serializeParam(
          _clienteObj,
          ParamType.DataStruct,
        ),
        'responsavel_obj': serializeParam(
          _responsavelObj,
          ParamType.DataStruct,
        ),
        'user': serializeParam(
          _user,
          ParamType.String,
        ),
        'user_email': serializeParam(
          _userEmail,
          ParamType.String,
        ),
        'nome_tipo_ocorrencia': serializeParam(
          _nomeTipoOcorrencia,
          ParamType.String,
        ),
      }.withoutNulls;

  static RegistroViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegistroViewStruct(
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
        programa: deserializeParam(
          data['programa'],
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
        responsavelAcao: deserializeParam(
          data['responsavel_acao'],
          ParamType.int,
          false,
        ),
        nivel: deserializeParam(
          data['nivel'],
          ParamType.int,
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
        prazoDT: deserializeParam(
          data['prazo_DT'],
          ParamType.DateTime,
          false,
        ),
        dataAcaoDT: deserializeParam(
          data['data_acaoDT'],
          ParamType.DateTime,
          false,
        ),
        programaObj: deserializeStructParam(
          data['programa_obj'],
          ParamType.DataStruct,
          false,
          structBuilder: ProgramaStruct.fromSerializableMap,
        ),
        responsavelAcaoObj: deserializeStructParam(
          data['responsavel_acao_obj'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponsavelAcaoStruct.fromSerializableMap,
        ),
        clienteObj: deserializeStructParam(
          data['cliente_obj'],
          ParamType.DataStruct,
          false,
          structBuilder: ClienteStruct.fromSerializableMap,
        ),
        responsavelObj: deserializeStructParam(
          data['responsavel_obj'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.String,
          false,
        ),
        userEmail: deserializeParam(
          data['user_email'],
          ParamType.String,
          false,
        ),
        nomeTipoOcorrencia: deserializeParam(
          data['nome_tipo_ocorrencia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RegistroViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RegistroViewStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        createdBy == other.createdBy &&
        updatedBy == other.updatedBy &&
        latitude == other.latitude &&
        longitude == other.longitude &&
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
        statusAcao == other.statusAcao &&
        descricaoAcaoRealizada == other.descricaoAcaoRealizada &&
        listEquality.equals(fotosAcao, other.fotosAcao) &&
        listEquality.equals(videosAcao, other.videosAcao) &&
        dataAcao == other.dataAcao &&
        programa == other.programa &&
        cliente == other.cliente &&
        responsavel == other.responsavel &&
        responsavelAcao == other.responsavelAcao &&
        nivel == other.nivel &&
        tema == other.tema &&
        areaVistoriada == other.areaVistoriada &&
        noiteAnterior == other.noiteAnterior &&
        manha == other.manha &&
        tarde == other.tarde &&
        prazoDT == other.prazoDT &&
        dataAcaoDT == other.dataAcaoDT &&
        programaObj == other.programaObj &&
        responsavelAcaoObj == other.responsavelAcaoObj &&
        clienteObj == other.clienteObj &&
        responsavelObj == other.responsavelObj &&
        user == other.user &&
        userEmail == other.userEmail &&
        nomeTipoOcorrencia == other.nomeTipoOcorrencia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        createdBy,
        updatedBy,
        latitude,
        longitude,
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
        statusAcao,
        descricaoAcaoRealizada,
        fotosAcao,
        videosAcao,
        dataAcao,
        programa,
        cliente,
        responsavel,
        responsavelAcao,
        nivel,
        tema,
        areaVistoriada,
        noiteAnterior,
        manha,
        tarde,
        prazoDT,
        dataAcaoDT,
        programaObj,
        responsavelAcaoObj,
        clienteObj,
        responsavelObj,
        user,
        userEmail,
        nomeTipoOcorrencia
      ]);
}

RegistroViewStruct createRegistroViewStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  String? createdBy,
  String? updatedBy,
  double? latitude,
  double? longitude,
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
  int? statusAcao,
  String? descricaoAcaoRealizada,
  String? dataAcao,
  int? programa,
  int? cliente,
  String? responsavel,
  int? responsavelAcao,
  int? nivel,
  int? tema,
  int? areaVistoriada,
  EnumCondicaoClima? noiteAnterior,
  EnumCondicaoClima? manha,
  EnumCondicaoClima? tarde,
  DateTime? prazoDT,
  DateTime? dataAcaoDT,
  ProgramaStruct? programaObj,
  ResponsavelAcaoStruct? responsavelAcaoObj,
  ClienteStruct? clienteObj,
  UserStruct? responsavelObj,
  String? user,
  String? userEmail,
  String? nomeTipoOcorrencia,
}) =>
    RegistroViewStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      createdBy: createdBy,
      updatedBy: updatedBy,
      latitude: latitude,
      longitude: longitude,
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
      statusAcao: statusAcao,
      descricaoAcaoRealizada: descricaoAcaoRealizada,
      dataAcao: dataAcao,
      programa: programa,
      cliente: cliente,
      responsavel: responsavel,
      responsavelAcao: responsavelAcao,
      nivel: nivel,
      tema: tema,
      areaVistoriada: areaVistoriada,
      noiteAnterior: noiteAnterior,
      manha: manha,
      tarde: tarde,
      prazoDT: prazoDT,
      dataAcaoDT: dataAcaoDT,
      programaObj: programaObj ?? ProgramaStruct(),
      responsavelAcaoObj: responsavelAcaoObj ?? ResponsavelAcaoStruct(),
      clienteObj: clienteObj ?? ClienteStruct(),
      responsavelObj: responsavelObj ?? UserStruct(),
      user: user,
      userEmail: userEmail,
      nomeTipoOcorrencia: nomeTipoOcorrencia,
    );
