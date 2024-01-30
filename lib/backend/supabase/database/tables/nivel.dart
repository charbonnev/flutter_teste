import '../database.dart';

class NivelTable extends SupabaseTable<NivelRow> {
  @override
  String get tableName => 'nivel';

  @override
  NivelRow createRow(Map<String, dynamic> data) => NivelRow(data);
}

class NivelRow extends SupabaseDataRow {
  NivelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NivelTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get empreendimento => getField<int>('empreendimento')!;
  set empreendimento(int value) => setField<int>('empreendimento', value);

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

  bool? get isDeletable => getField<bool>('is_deletable');
  set isDeletable(bool? value) => setField<bool>('is_deletable', value);

  String? get shapeFile => getField<String>('shape_file');
  set shapeFile(String? value) => setField<String>('shape_file', value);

  bool? get isRecordContainer => getField<bool>('is_record_container');
  set isRecordContainer(bool? value) =>
      setField<bool>('is_record_container', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);
}
