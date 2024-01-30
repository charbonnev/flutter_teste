import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';

Future syncAppStates(
  BuildContext context, {
  required int? clienteId,
}) async {
  unawaited(
    () async {
      await action_blocks.zSyncClient(
        context,
        clientID: clienteId,
      );
    }(),
  );
  await action_blocks.zSyncConsultoria(
    context,
    consultoria: FFAppState().usuarioLogado.consultoria,
  );
  unawaited(
    () async {
      await action_blocks.zSyncProgramas(
        context,
        empreendimentoID: clienteId,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncTemas(
        context,
        empreendimentoID: clienteId,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncRespAcao(
        context,
        empreendimentoId: clienteId,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncAreasVistoriadas(
        context,
        empreendimentoId: clienteId,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncNiveis(
        context,
        empreendimentoId: clienteId,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncCondicaoClima(
        context,
        consultoria: FFAppState().usuarioLogado.consultoria,
      );
    }(),
  );
  unawaited(
    () async {
      await action_blocks.zSyncNomeStatusAcao(
        context,
        consultoria: FFAppState().usuarioLogado.consultoria,
      );
    }(),
  );
  await action_blocks.zSyncNomeTipoOcorrencia(
    context,
    consultoria: FFAppState().usuarioLogado.consultoria,
  );
}

Future zSyncClient(
  BuildContext context, {
  int? clientID,
}) async {
  ApiCallResponse? getClientDetails;

  getClientDetails = await SupabaseGroup.getClientDetailsCall.call(
    clientId: clientID?.toString(),
  );
  FFAppState().clienteAtual = SupabaseGroup.getClientDetailsCall.clienteDT(
    (getClientDetails?.jsonBody ?? ''),
  )!;
}

Future zSyncConsultoria(
  BuildContext context, {
  int? consultoria,
}) async {
  ApiCallResponse? getConsultoriaDetails;

  getConsultoriaDetails = await SupabaseGroup.getConsultoriaDetailsCall.call(
    consultoriaId: consultoria,
  );
  FFAppState().consultoriaAtual =
      SupabaseGroup.getConsultoriaDetailsCall.consultoriaDT(
    (getConsultoriaDetails?.jsonBody ?? ''),
  )!;
}

Future zSyncProgramas(
  BuildContext context, {
  int? empreendimentoID,
}) async {
  ApiCallResponse? getProgramas;

  getProgramas = await SupabaseGroup.getProgramasCall.call(
    empreendimentoId: valueOrDefault<String>(
      empreendimentoID?.toString(),
      'null',
    ),
  );
  FFAppState().programas = SupabaseGroup.getProgramasCall
      .listProgramaDT(
        (getProgramas?.jsonBody ?? ''),
      )!
      .toList()
      .cast<ProgramaStruct>();
}

Future zSyncTemas(
  BuildContext context, {
  int? empreendimentoID,
}) async {
  ApiCallResponse? getTemas;

  getTemas = await SupabaseGroup.getTemasCall.call(
    empreendimentoId: valueOrDefault<String>(
      empreendimentoID?.toString(),
      'null',
    ),
  );
  // Update Consultoria
  FFAppState().update(() {
    FFAppState().temas = SupabaseGroup.getTemasCall
        .listTemaDT(
          (getTemas?.jsonBody ?? ''),
        )!
        .toList()
        .cast<TemaStruct>();
  });
}

Future zSyncRespAcao(
  BuildContext context, {
  int? empreendimentoId,
}) async {
  ApiCallResponse? getResponsaveisAcao;

  getResponsaveisAcao = await SupabaseGroup.getResponsaveisAcaoCall.call(
    empreendimentoId: valueOrDefault<String>(
      empreendimentoId?.toString(),
      'null',
    ),
  );
  FFAppState().responsaveisAcao = SupabaseGroup.getResponsaveisAcaoCall
      .listRespAcaoDT(
        (getResponsaveisAcao?.jsonBody ?? ''),
      )!
      .toList()
      .cast<ResponsavelAcaoStruct>();
}

Future zSyncAreasVistoriadas(
  BuildContext context, {
  int? empreendimentoId,
}) async {
  ApiCallResponse? getAreasVistoriadas;

  getAreasVistoriadas = await SupabaseGroup.getAreasVistoriadasCall.call(
    empreendimentoId: valueOrDefault<String>(
      empreendimentoId?.toString(),
      'null',
    ),
  );
  FFAppState().areasVistoriadas = SupabaseGroup.getAreasVistoriadasCall
      .listAreaVistoriadaDT(
        (getAreasVistoriadas?.jsonBody ?? ''),
      )!
      .toList()
      .cast<AreaVistoriadaStruct>();
}

Future zSyncNiveis(
  BuildContext context, {
  int? empreendimentoId,
}) async {
  ApiCallResponse? getNiveis;

  getNiveis = await SupabaseGroup.getNiveisCall.call(
    empreendimentoId: empreendimentoId?.toString(),
  );
  FFAppState().niveis = SupabaseGroup.getNiveisCall
      .listNiveisDT(
        (getNiveis?.jsonBody ?? ''),
      )!
      .toList()
      .cast<NivelStruct>();
}

Future zSyncCondicaoClima(
  BuildContext context, {
  int? consultoria,
}) async {
  ApiCallResponse? getCondicaoClima;

  getCondicaoClima = await SupabaseGroup.getCondicaoClimaCall.call(
    consultoriaId: consultoria?.toString(),
  );
  FFAppState().condicoesClima = SupabaseGroup.getCondicaoClimaCall
      .listCondicoesClimaDT(
        (getCondicaoClima?.jsonBody ?? ''),
      )!
      .toList()
      .cast<CondicaoClimaStruct>();
}

Future zSyncNomeStatusAcao(
  BuildContext context, {
  int? consultoria,
}) async {
  ApiCallResponse? getNomeStatusAcao;

  getNomeStatusAcao = await SupabaseGroup.getNomeStatusAcaoCall.call(
    consultoriaId: consultoria?.toString(),
  );
  FFAppState().nomesStatusAcao = SupabaseGroup.getNomeStatusAcaoCall
      .listStatusAcaoDT(
        (getNomeStatusAcao?.jsonBody ?? ''),
      )!
      .toList()
      .cast<StatusAcaoStruct>();
}

Future zSyncNomeTipoOcorrencia(
  BuildContext context, {
  int? consultoria,
}) async {
  ApiCallResponse? getNomeTipoOcorrencia;

  getNomeTipoOcorrencia = await SupabaseGroup.getNomeTipoOcorrenciaCall.call(
    consultoriaId: consultoria?.toString(),
  );
  FFAppState().tiposOcorrencia = SupabaseGroup.getNomeTipoOcorrenciaCall
      .listTipoOcorrenciaDT(
        (getNomeTipoOcorrencia?.jsonBody ?? ''),
      )!
      .toList()
      .cast<TipoOcorrenciaStruct>();
}
