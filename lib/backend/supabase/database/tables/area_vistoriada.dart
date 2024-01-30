import '../database.dart';

class AreaVistoriadaTable extends SupabaseTable<AreaVistoriadaRow> {
  @override
  String get tableName => 'area_vistoriada';

  @override
  AreaVistoriadaRow createRow(Map<String, dynamic> data) =>
      AreaVistoriadaRow(data);
}

class AreaVistoriadaRow extends SupabaseDataRow {
  AreaVistoriadaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AreaVistoriadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  int? get empreendimento => getField<int>('empreendimento');
  set empreendimento(int? value) => setField<int>('empreendimento', value);

  String? get nomeAreaVistoriada => getField<String>('nome_area_vistoriada');
  set nomeAreaVistoriada(String? value) =>
      setField<String>('nome_area_vistoriada', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}
