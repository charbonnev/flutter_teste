import '../database.dart';

class MidiaTable extends SupabaseTable<MidiaRow> {
  @override
  String get tableName => 'midia';

  @override
  MidiaRow createRow(Map<String, dynamic> data) => MidiaRow(data);
}

class MidiaRow extends SupabaseDataRow {
  MidiaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MidiaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get urlMidia => getField<String>('url_midia');
  set urlMidia(String? value) => setField<String>('url_midia', value);

  String? get legenda => getField<String>('legenda');
  set legenda(String? value) => setField<String>('legenda', value);

  bool? get acao => getField<bool>('acao');
  set acao(bool? value) => setField<bool>('acao', value);

  String? get enumTipoMidia => getField<String>('enum_tipo_midia');
  set enumTipoMidia(String? value) =>
      setField<String>('enum_tipo_midia', value);

  int? get registro => getField<int>('registro');
  set registro(int? value) => setField<int>('registro', value);
}
