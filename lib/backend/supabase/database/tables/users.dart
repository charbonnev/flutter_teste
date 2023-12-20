import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get consultoria => getField<int>('consultoria');
  set consultoria(int? value) => setField<int>('consultoria', value);

  String? get linkBi => getField<String>('link_bi');
  set linkBi(String? value) => setField<String>('link_bi', value);

  bool? get isColetor => getField<bool>('is_coletor');
  set isColetor(bool? value) => setField<bool>('is_coletor', value);

  bool? get isCliente => getField<bool>('is_cliente');
  set isCliente(bool? value) => setField<bool>('is_cliente', value);

  bool? get isAdmin => getField<bool>('is_admin');
  set isAdmin(bool? value) => setField<bool>('is_admin', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  bool? get isAtivo => getField<bool>('is_ativo');
  set isAtivo(bool? value) => setField<bool>('is_ativo', value);
}
