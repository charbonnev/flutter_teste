import '../database.dart';

class StatusAcaoTable extends SupabaseTable<StatusAcaoRow> {
  @override
  String get tableName => 'status_acao';

  @override
  StatusAcaoRow createRow(Map<String, dynamic> data) => StatusAcaoRow(data);
}

class StatusAcaoRow extends SupabaseDataRow {
  StatusAcaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StatusAcaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  String? get nomeStatusAcao => getField<String>('nome_status_acao');
  set nomeStatusAcao(String? value) =>
      setField<String>('nome_status_acao', value);

  String? get enumStatusAcao => getField<String>('enum_status_acao');
  set enumStatusAcao(String? value) =>
      setField<String>('enum_status_acao', value);
}
