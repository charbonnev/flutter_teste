import '../database.dart';

class RegistroTable extends SupabaseTable<RegistroRow> {
  @override
  String get tableName => 'registro';

  @override
  RegistroRow createRow(Map<String, dynamic> data) => RegistroRow(data);
}

class RegistroRow extends SupabaseDataRow {
  RegistroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegistroTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  int? get updatedBy => getField<int>('updated_by');
  set updatedBy(int? value) => setField<int>('updated_by', value);

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

  int? get noiteAnterior => getField<int>('noite_anterior');
  set noiteAnterior(int? value) => setField<int>('noite_anterior', value);

  int? get manha => getField<int>('manha');
  set manha(int? value) => setField<int>('manha', value);

  int? get tarde => getField<int>('tarde');
  set tarde(int? value) => setField<int>('tarde', value);

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
}
