import '../database.dart';

class ProgramaTable extends SupabaseTable<ProgramaRow> {
  @override
  String get tableName => 'programa';

  @override
  ProgramaRow createRow(Map<String, dynamic> data) => ProgramaRow(data);
}

class ProgramaRow extends SupabaseDataRow {
  ProgramaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgramaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  int? get empreendimento => getField<int>('empreendimento');
  set empreendimento(int? value) => setField<int>('empreendimento', value);

  String? get nomePrograma => getField<String>('nome_programa');
  set nomePrograma(String? value) => setField<String>('nome_programa', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);
}
