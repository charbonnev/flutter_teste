import '../database.dart';

class AuthAreaVistoriadaTable extends SupabaseTable<AuthAreaVistoriadaRow> {
  @override
  String get tableName => 'auth_area_vistoriada';

  @override
  AuthAreaVistoriadaRow createRow(Map<String, dynamic> data) =>
      AuthAreaVistoriadaRow(data);
}

class AuthAreaVistoriadaRow extends SupabaseDataRow {
  AuthAreaVistoriadaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuthAreaVistoriadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  int? get areaVistoriada => getField<int>('area_vistoriada');
  set areaVistoriada(int? value) => setField<int>('area_vistoriada', value);

  int? get nivelAcesso => getField<int>('nivel_acesso');
  set nivelAcesso(int? value) => setField<int>('nivel_acesso', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);
}
