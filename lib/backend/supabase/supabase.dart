import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://fzrioxbttmhqlubvmasn.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
