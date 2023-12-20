import '../database.dart';

class RegistroMetaTable extends SupabaseTable<RegistroMetaRow> {
  @override
  String get tableName => 'registro_meta';

  @override
  RegistroMetaRow createRow(Map<String, dynamic> data) => RegistroMetaRow(data);
}

class RegistroMetaRow extends SupabaseDataRow {
  RegistroMetaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegistroMetaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
