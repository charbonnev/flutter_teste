import '../database.dart';

class RegistrosViewTable extends SupabaseTable<RegistrosViewRow> {
  @override
  String get tableName => 'registros_view';

  @override
  RegistrosViewRow createRow(Map<String, dynamic> data) =>
      RegistrosViewRow(data);
}

class RegistrosViewRow extends SupabaseDataRow {
  RegistrosViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegistrosViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  int? get tipoOcorrencia => getField<int>('tipo_ocorrencia');
  set tipoOcorrencia(int? value) => setField<int>('tipo_ocorrencia', value);

  String? get riaN => getField<String>('ria_n');
  set riaN(String? value) => setField<String>('ria_n', value);

  bool? get demandaComunidade => getField<bool>('demanda_comunidade');
  set demandaComunidade(bool? value) =>
      setField<bool>('demanda_comunidade', value);

  bool? get processoCritico => getField<bool>('processo_critico');
  set processoCritico(bool? value) => setField<bool>('processo_critico', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get consideracoes => getField<String>('consideracoes');
  set consideracoes(String? value) => setField<String>('consideracoes', value);

  String? get requisitoLegal => getField<String>('requisito_legal');
  set requisitoLegal(String? value) =>
      setField<String>('requisito_legal', value);

  String? get acaoRecomendada => getField<String>('acao_recomendada');
  set acaoRecomendada(String? value) =>
      setField<String>('acao_recomendada', value);

  DateTime? get prazo => getField<DateTime>('prazo');
  set prazo(DateTime? value) => setField<DateTime>('prazo', value);

  int? get statusAcao => getField<int>('status_acao');
  set statusAcao(int? value) => setField<int>('status_acao', value);

  String? get descricaoAcaoRealizada =>
      getField<String>('descricao_acao_realizada');
  set descricaoAcaoRealizada(String? value) =>
      setField<String>('descricao_acao_realizada', value);

  List<String> get fotosAcao => getListField<String>('fotos_acao');
  set fotosAcao(List<String>? value) =>
      setListField<String>('fotos_acao', value);

  List<String> get videosAcao => getListField<String>('videos_acao');
  set videosAcao(List<String>? value) =>
      setListField<String>('videos_acao', value);

  DateTime? get dataAcao => getField<DateTime>('data_acao');
  set dataAcao(DateTime? value) => setField<DateTime>('data_acao', value);

  int? get programa => getField<int>('programa');
  set programa(int? value) => setField<int>('programa', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get noiteAnterior => getField<String>('noite_anterior');
  set noiteAnterior(String? value) => setField<String>('noite_anterior', value);

  String? get manha => getField<String>('manha');
  set manha(String? value) => setField<String>('manha', value);

  String? get tarde => getField<String>('tarde');
  set tarde(String? value) => setField<String>('tarde', value);

  int? get responsavelAcao => getField<int>('responsavel_acao');
  set responsavelAcao(int? value) => setField<int>('responsavel_acao', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);

  int? get tema => getField<int>('tema');
  set tema(int? value) => setField<int>('tema', value);

  int? get areaVistoriada => getField<int>('area_vistoriada');
  set areaVistoriada(int? value) => setField<int>('area_vistoriada', value);

  int? get riaCliente => getField<int>('ria_cliente');
  set riaCliente(int? value) => setField<int>('ria_cliente', value);

  int? get riaNivel1 => getField<int>('ria_nivel1');
  set riaNivel1(int? value) => setField<int>('ria_nivel1', value);

  int? get riaNivel2 => getField<int>('ria_nivel2');
  set riaNivel2(int? value) => setField<int>('ria_nivel2', value);

  int? get riaNivel3 => getField<int>('ria_nivel3');
  set riaNivel3(int? value) => setField<int>('ria_nivel3', value);

  int? get riaNivel4 => getField<int>('ria_nivel4');
  set riaNivel4(int? value) => setField<int>('ria_nivel4', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get nomeTipoOcorrencia => getField<String>('nome_tipo_ocorrencia');
  set nomeTipoOcorrencia(String? value) =>
      setField<String>('nome_tipo_ocorrencia', value);
}
