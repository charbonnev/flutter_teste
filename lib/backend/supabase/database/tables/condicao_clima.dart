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

  String? get urlImage => getField<String>('url_image');
  set urlImage(String? value) => setField<String>('url_image', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get empreendimento => getField<int>('empreendimento');
  set empreendimento(int? value) => setField<int>('empreendimento', value);
}
