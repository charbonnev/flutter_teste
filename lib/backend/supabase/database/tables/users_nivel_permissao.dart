import '../database.dart';

class UsersNivelPermissaoTable extends SupabaseTable<UsersNivelPermissaoRow> {
  @override
  String get tableName => 'users_nivel_permissao';

  @override
  UsersNivelPermissaoRow createRow(Map<String, dynamic> data) =>
      UsersNivelPermissaoRow(data);
}

class UsersNivelPermissaoRow extends SupabaseDataRow {
  UsersNivelPermissaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersNivelPermissaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);

  String? get users => getField<String>('users');
  set users(String? value) => setField<String>('users', value);

  int? get permissao => getField<int>('permissao');
  set permissao(int? value) => setField<int>('permissao', value);
}
