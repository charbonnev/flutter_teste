import '../database.dart';

class TemaTable extends SupabaseTable<TemaRow> {
  @override
  String get tableName => 'tema';

  @override
  TemaRow createRow(Map<String, dynamic> data) => TemaRow(data);
}

class TemaRow extends SupabaseDataRow {
  TemaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TemaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);

  String? get nomeTema => getField<String>('nome_tema');
  set nomeTema(String? value) => setField<String>('nome_tema', value);
}
