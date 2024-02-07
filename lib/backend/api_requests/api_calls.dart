import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://fzrioxbttmhqlubvmasn.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
  };
  static GetUserDetailsCall getUserDetailsCall = GetUserDetailsCall();
  static GetClientDetailsCall getClientDetailsCall = GetClientDetailsCall();
  static GetEmpreendimentoDetailsCall getEmpreendimentoDetailsCall =
      GetEmpreendimentoDetailsCall();
  static GetConsultoriaDetailsCall getConsultoriaDetailsCall =
      GetConsultoriaDetailsCall();
  static GetProgramasCall getProgramasCall = GetProgramasCall();
  static GetRegistrosFiltradosCall getRegistrosFiltradosCall =
      GetRegistrosFiltradosCall();
  static GetRegistrosCall getRegistrosCall = GetRegistrosCall();
  static GetTemasCall getTemasCall = GetTemasCall();
  static GetResponsaveisAcaoCall getResponsaveisAcaoCall =
      GetResponsaveisAcaoCall();
  static GetAreasVistoriadasCall getAreasVistoriadasCall =
      GetAreasVistoriadasCall();
  static GetNiveisCall getNiveisCall = GetNiveisCall();
  static GetCondicaoClimaCall getCondicaoClimaCall = GetCondicaoClimaCall();
  static GetNomeStatusAcaoCall getNomeStatusAcaoCall = GetNomeStatusAcaoCall();
  static GetNomeTipoOcorrenciaCall getNomeTipoOcorrenciaCall =
      GetNomeTipoOcorrenciaCall();
}

class GetUserDetailsCall {
  Future<ApiCallResponse> call({
    String? userId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Details',
      apiUrl: '${SupabaseGroup.baseUrl}users?id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? consultoria(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].consultoria''',
      ));
  bool? isColetor(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_coletor''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  bool? isAtivo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_ativo''',
      ));
  UserStruct? userObj(dynamic response) => UserStruct.maybeFromMap(getJsonField(
        response,
        r'''$[0]''',
      ));
}

class GetClientDetailsCall {
  Future<ApiCallResponse> call({
    String? clientId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Client Details',
      apiUrl: '${SupabaseGroup.baseUrl}cliente?id=eq.${clientId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? consultoria(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].consultoria''',
      ));
  bool? isColetor(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_coletor''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  bool? isAtivo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_ativo''',
      ));
  ClienteStruct? clienteDT(dynamic response) =>
      ClienteStruct.maybeFromMap(getJsonField(
        response,
        r'''$[0]''',
      ));
  String? corprimaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_primaria''',
      ));
  String? corsecundaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_secundaria''',
      ));
  String? nomenivel1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel1''',
      ));
  String? nomenivel2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel2''',
      ));
  String? nomenivel3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel3''',
      ));
  String? nomenivel4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel4''',
      ));
}

class GetEmpreendimentoDetailsCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Empreendimento Details',
      apiUrl:
          '${SupabaseGroup.baseUrl}empreendimento?id=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? consultoria(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].consultoria''',
      ));
  bool? isColetor(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_coletor''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  bool? isAtivo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_ativo''',
      ));
  ClienteStruct? clienteDT(dynamic response) =>
      ClienteStruct.maybeFromMap(getJsonField(
        response,
        r'''$[0]''',
      ));
  String? corprimaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_primaria''',
      ));
  String? corsecundaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_secundaria''',
      ));
  String? nomenivel1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel1''',
      ));
  String? nomenivel2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel2''',
      ));
  String? nomenivel3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel3''',
      ));
  String? nomenivel4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome_nivel4''',
      ));
}

class GetConsultoriaDetailsCall {
  Future<ApiCallResponse> call({
    int? consultoriaId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Consultoria Details',
      apiUrl: '${SupabaseGroup.baseUrl}consultoria?id=eq.${consultoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  ConsultoriaStruct? consultoriaDT(dynamic response) =>
      ConsultoriaStruct.maybeFromMap(getJsonField(
        response,
        r'''$[0]''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? corprimaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_primaria''',
      ));
  String? corsecundaria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cor_secundaria''',
      ));
}

class GetProgramasCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Programas',
      apiUrl:
          '${SupabaseGroup.baseUrl}programa?empreendimento=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<ProgramaStruct>? listProgramaDT(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => ProgramaStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetRegistrosFiltradosCall {
  Future<ApiCallResponse> call({
    String? loggedUserId = '1',
    String? otherFilters = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Registros Filtrados',
      apiUrl:
          '${SupabaseGroup.baseUrl}registros_view?user=eq.${loggedUserId}${otherFilters}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<RegistroViewStruct>? listRegistrosViewDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => RegistroViewStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetRegistrosCall {
  Future<ApiCallResponse> call({
    String? loggedUserId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Registros',
      apiUrl: '${SupabaseGroup.baseUrl}registro?created_by=eq.${loggedUserId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<RegistroViewStruct>? listRegistrosViewDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => RegistroViewStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetTemasCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Temas',
      apiUrl:
          '${SupabaseGroup.baseUrl}tema?empreendimento=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<TemaStruct>? listTemaDT(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => TemaStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetResponsaveisAcaoCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Responsaveis Acao',
      apiUrl:
          '${SupabaseGroup.baseUrl}responsavel_acao?empreendimento=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<ResponsavelAcaoStruct>? listRespAcaoDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => ResponsavelAcaoStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetAreasVistoriadasCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Areas Vistoriadas',
      apiUrl:
          '${SupabaseGroup.baseUrl}area_vistoriada?empreendimento=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<AreaVistoriadaStruct>? listAreaVistoriadaDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => AreaVistoriadaStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetNiveisCall {
  Future<ApiCallResponse> call({
    String? empreendimentoId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Niveis',
      apiUrl:
          '${SupabaseGroup.baseUrl}nivel?empreendimento=eq.${empreendimentoId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<NivelStruct>? listNiveisDT(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => NivelStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetCondicaoClimaCall {
  Future<ApiCallResponse> call({
    String? consultoriaId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Condicao Clima',
      apiUrl:
          '${SupabaseGroup.baseUrl}condicao_clima?consultoria=eq.${consultoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<CondicaoClimaStruct>? listCondicoesClimaDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => CondicaoClimaStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetNomeStatusAcaoCall {
  Future<ApiCallResponse> call({
    String? consultoriaId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Nome Status Acao',
      apiUrl:
          '${SupabaseGroup.baseUrl}status_acao?consultoria=eq.${consultoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<StatusAcaoStruct>? listStatusAcaoDT(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => StatusAcaoStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetNomeTipoOcorrenciaCall {
  Future<ApiCallResponse> call({
    String? consultoriaId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Nome Tipo Ocorrencia',
      apiUrl:
          '${SupabaseGroup.baseUrl}tipo_ocorrencia?consultoria=eq.${consultoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<TipoOcorrenciaStruct>? listTipoOcorrenciaDT(dynamic response) =>
      (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => TipoOcorrenciaStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

/// End Supabase Group Code

/// Start Supabase Check Group Code

class SupabaseCheckGroup {
  static String baseUrl = 'https://fzrioxbttmhqlubvmasn.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
  };
  static GetCheckCall getCheckCall = GetCheckCall();
  static GetPreviousCheckCall getPreviousCheckCall = GetPreviousCheckCall();
}

class GetCheckCall {
  Future<ApiCallResponse> call({
    String? table = 'users',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Check',
      apiUrl: '${SupabaseCheckGroup.baseUrl}${table}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'select': "*",
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? arrayBody(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  dynamic? firstItem(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
      );
}

class GetPreviousCheckCall {
  Future<ApiCallResponse> call({
    String? table = 'users',
    String? version = '001',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Previous Check',
      apiUrl:
          '${SupabaseCheckGroup.baseUrl}api_db?version=${version}&select=${table}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmlveGJ0dG1ocWx1YnZtYXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NzQ3NDUsImV4cCI6MjAxMzA1MDc0NX0.Q9m49Kike55AIZg_uqxB07BC2RE1Yh8Z0GGEs0-nNRo',
      },
      params: {
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? arrayBody(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  dynamic? firstItem(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
      );
}

/// End Supabase Check Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
