import '../database.dart';

class CondicaoClimaTable extends SupabaseTable<CondicaoClimaRow> {
  @override
  String get tableName => 'condicao_clima';

  @override
  CondicaoClimaRow createRow(Map<String, dynamic> data) =>
      CondicaoClimaRow(data);
}

class CondicaoClimaRow extends SupabaseDataRow {
  CondicaoClimaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CondicaoClimaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get enumCondicaoClima => getField<String>('enum_condicao_clima');
  set enumCondicaoClima(String? value) =>
      setField<String>('enum_condicao_clima', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);
}
