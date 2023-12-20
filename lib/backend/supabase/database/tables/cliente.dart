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

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get corPrimaria => getField<String>('cor_primaria');
  set corPrimaria(String? value) => setField<String>('cor_primaria', value);

  String? get corSecundaria => getField<String>('cor_secundaria');
  set corSecundaria(String? value) => setField<String>('cor_secundaria', value);

  int get consultoria => getField<int>('consultoria')!;
  set consultoria(int value) => setField<int>('consultoria', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);

  String get nomeNivel1 => getField<String>('nome_nivel1')!;
  set nomeNivel1(String value) => setField<String>('nome_nivel1', value);

  String? get nomeNivel2 => getField<String>('nome_nivel2');
  set nomeNivel2(String? value) => setField<String>('nome_nivel2', value);

  String get nomeNivel3 => getField<String>('nome_nivel3')!;
  set nomeNivel3(String value) => setField<String>('nome_nivel3', value);

  String get nomeNivel4 => getField<String>('nome_nivel4')!;
  set nomeNivel4(String value) => setField<String>('nome_nivel4', value);
}
