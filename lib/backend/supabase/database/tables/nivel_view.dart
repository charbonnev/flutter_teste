import '../database.dart';

class NivelViewTable extends SupabaseTable<NivelViewRow> {
  @override
  String get tableName => 'nivel_view';

  @override
  NivelViewRow createRow(Map<String, dynamic> data) => NivelViewRow(data);
}

class NivelViewRow extends SupabaseDataRow {
  NivelViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NivelViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get aliasNivel => getField<String>('alias_nivel');
  set aliasNivel(String? value) => setField<String>('alias_nivel', value);

  String? get fullTree => getField<String>('full_tree');
  set fullTree(String? value) => setField<String>('full_tree', value);

  bool? get isRecordContainer => getField<bool>('is_record_container');
  set isRecordContainer(bool? value) =>
      setField<bool>('is_record_container', value);
}
