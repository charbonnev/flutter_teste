import '../database.dart';

class TipoOcorrenciaTable extends SupabaseTable<TipoOcorrenciaRow> {
  @override
  String get tableName => 'tipo_ocorrencia';

  @override
  TipoOcorrenciaRow createRow(Map<String, dynamic> data) =>
      TipoOcorrenciaRow(data);
}

class TipoOcorrenciaRow extends SupabaseDataRow {
  TipoOcorrenciaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoOcorrenciaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  String? get nomeTipoOcorrencia => getField<String>('nome_tipo_ocorrencia');
  set nomeTipoOcorrencia(String? value) =>
      setField<String>('nome_tipo_ocorrencia', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  String? get enumTipoOcorrencia => getField<String>('enum_tipo_ocorrencia');
  set enumTipoOcorrencia(String? value) =>
      setField<String>('enum_tipo_ocorrencia', value);

  bool get isAvailable => getField<bool>('is_available')!;
  set isAvailable(bool value) => setField<bool>('is_available', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);

  int? get empreendimento => getField<int>('empreendimento');
  set empreendimento(int? value) => setField<int>('empreendimento', value);
}
