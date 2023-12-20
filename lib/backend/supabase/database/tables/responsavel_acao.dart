import '../database.dart';

class ResponsavelAcaoTable extends SupabaseTable<ResponsavelAcaoRow> {
  @override
  String get tableName => 'responsavel_acao';

  @override
  ResponsavelAcaoRow createRow(Map<String, dynamic> data) =>
      ResponsavelAcaoRow(data);
}

class ResponsavelAcaoRow extends SupabaseDataRow {
  ResponsavelAcaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResponsavelAcaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  String? get nomeResponsavel => getField<String>('nome_responsavel');
  set nomeResponsavel(String? value) =>
      setField<String>('nome_responsavel', value);
}
