import '../database.dart';

class NiveisTable extends SupabaseTable<NiveisRow> {
  @override
  String get tableName => 'niveis';

  @override
  NiveisRow createRow(Map<String, dynamic> data) => NiveisRow(data);
}

class NiveisRow extends SupabaseDataRow {
  NiveisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NiveisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get cliente => getField<int>('cliente')!;
  set cliente(int value) => setField<int>('cliente', value);

  int get numeroNivel => getField<int>('numero_nivel')!;
  set numeroNivel(int value) => setField<int>('numero_nivel', value);

  String get aliasNivel => getField<String>('alias_nivel')!;
  set aliasNivel(String value) => setField<String>('alias_nivel', value);

  int? get nivelPai => getField<int>('nivel_pai');
  set nivelPai(int? value) => setField<int>('nivel_pai', value);

  String? get descricaoNivel => getField<String>('descricao_nivel');
  set descricaoNivel(String? value) =>
      setField<String>('descricao_nivel', value);

  String? get fullAlias => getField<String>('full_alias');
  set fullAlias(String? value) => setField<String>('full_alias', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);
}
