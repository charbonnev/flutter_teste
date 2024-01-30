import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
