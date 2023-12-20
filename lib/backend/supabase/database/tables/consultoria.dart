import '../database.dart';

class ConsultoriaTable extends SupabaseTable<ConsultoriaRow> {
  @override
  String get tableName => 'consultoria';

  @override
  ConsultoriaRow createRow(Map<String, dynamic> data) => ConsultoriaRow(data);
}

class ConsultoriaRow extends SupabaseDataRow {
  ConsultoriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConsultoriaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get corPrimaria => getField<String>('cor_primaria');
  set corPrimaria(String? value) => setField<String>('cor_primaria', value);

  String? get corSecundaria => getField<String>('cor_secundaria');
  set corSecundaria(String? value) => setField<String>('cor_secundaria', value);
}
