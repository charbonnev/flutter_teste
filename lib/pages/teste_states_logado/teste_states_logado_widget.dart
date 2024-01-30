import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teste_states_logado_model.dart';
export 'teste_states_logado_model.dart';

class TesteStatesLogadoWidget extends StatefulWidget {
  const TesteStatesLogadoWidget({super.key});

  @override
  State<TesteStatesLogadoWidget> createState() =>
      _TesteStatesLogadoWidgetState();
}

class _TesteStatesLogadoWidgetState extends State<TesteStatesLogadoWidget> {
  late TesteStatesLogadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TesteStatesLogadoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Login');
            },
          ),
          title: FutureBuilder<List<ClienteRow>>(
            future: ClienteTable().queryRows(
              queryFn: (q) => q.eq(
                'consultoria',
                FFAppState().usuarioLogado.consultoria,
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF388E3C),
                      ),
                    ),
                  ),
                );
              }
              List<ClienteRow> dropDownClienteClienteRowList = snapshot.data!;
              return FlutterFlowDropDown<int>(
                controller: _model.dropDownClienteValueController ??=
                    FormFieldController<int>(
                  _model.dropDownClienteValue ??=
                      dropDownClienteClienteRowList.first.id,
                ),
                options: List<int>.from(
                    dropDownClienteClienteRowList.map((e) => e.id).toList()),
                optionLabels: dropDownClienteClienteRowList
                    .map((e) => e.nome)
                    .withoutNulls
                    .toList(),
                onChanged: (val) async {
                  setState(() => _model.dropDownClienteValue = val);
                  if (_model.dropDownClienteValue !=
                      FFAppState().clienteAtual.id) {
                    await action_blocks.syncAppStates(
                      context,
                      clienteId: _model.dropDownClienteValue,
                    );
                  } else {
                    return;
                  }
                },
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Work Sans',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 20.0,
                    ),
                hintText: 'Selecione o cliente',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 25.0,
                ),
                fillColor: Color(0x00FFFFFF),
                elevation: 2.0,
                borderColor: Color(0x00E0E3E7),
                borderWidth: 0.0,
                borderRadius: 0.0,
                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 36.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              );
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (valueOrDefault<bool>(
                    _model.mostraValores,
                    false,
                  ))
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '1aCondicaoClimal:${valueOrDefault<String>(
                              FFAppState()
                                  .condicoesClima
                                  .first
                                  .toMap()
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Cliente:${valueOrDefault<String>(
                              FFAppState().clienteAtual.toMap().toString(),
                              'Sem informação de Cliente',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oNivel:${valueOrDefault<String>(
                              FFAppState().niveis.first.toMap().toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oPrograma: ${valueOrDefault<String>(
                              FFAppState().programas.first.toMap().toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Consultoria:${valueOrDefault<String>(
                              FFAppState().consultoriaAtual.toMap().toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oTema:${valueOrDefault<String>(
                              FFAppState().temas.first.toMap().toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oRespAcao:${valueOrDefault<String>(
                              FFAppState()
                                  .responsaveisAcao
                                  .first
                                  .toMap()
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1aAreaVistoriada:${valueOrDefault<String>(
                              FFAppState()
                                  .areasVistoriadas
                                  .first
                                  .toMap()
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oStatusAcao:${valueOrDefault<String>(
                              FFAppState()
                                  .nomesStatusAcao
                                  .first
                                  .toMap()
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oTipoOcorrencia:${valueOrDefault<String>(
                              FFAppState()
                                  .tiposOcorrencia
                                  .first
                                  .toMap()
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                  if (!false)
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '1aCondicaoClimal:${valueOrDefault<String>(
                              (FFAppState().condicoesClima.isNotEmpty)
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Cliente:${valueOrDefault<String>(
                              FFAppState().clienteAtual.toMap().toString(),
                              'Sem informação de Cliente',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oNivel:${valueOrDefault<String>(
                              (FFAppState().niveis.isNotEmpty).toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oPrograma: ${valueOrDefault<String>(
                              (FFAppState().programas.isNotEmpty).toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Consultoria:${valueOrDefault<String>(
                              FFAppState().consultoriaAtual.toMap().toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oTema:${valueOrDefault<String>(
                              (FFAppState().temas.isNotEmpty).toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oRespAcao:${valueOrDefault<String>(
                              (FFAppState().responsaveisAcao.isNotEmpty)
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1aAreaVistoriada:${valueOrDefault<String>(
                              (FFAppState().areasVistoriadas.isNotEmpty)
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oStatusAcao:${valueOrDefault<String>(
                              (FFAppState().nomesStatusAcao.isNotEmpty)
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            '1oTipoOcorrencia:${valueOrDefault<String>(
                              (FFAppState().tiposOcorrencia.isNotEmpty)
                                  .toString(),
                              'Sem informação',
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                  Text(
                    'UsuarioLogado:${valueOrDefault<String>(
                      FFAppState().usuarioLogado.toMap().toString(),
                      'Nao há',
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await action_blocks.syncAppStates(
                        context,
                        clienteId: _model.dropDownClienteValue,
                      );
                      setState(() {
                        FFAppState().AppStateAtualizado =
                            !FFAppState().AppStateAtualizado;
                      });
                    },
                    text: 'SyncAppStates',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FFAppState().AppStateAtualizado
                          ? Color(0xFF7FDA26)
                          : Color(0xFF113C04),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().deleteConsultoriaAtual();
                        FFAppState().consultoriaAtual =
                            ConsultoriaStruct.fromSerializableMap(jsonDecode(
                                '{\"id\":\"0\",\"nome\":\"0\",\"logo\":\"0\",\"cor_primaria\":\"0\",\"cor_secundaria\":\"0\"}'));

                        FFAppState().deleteClienteAtual();
                        FFAppState().clienteAtual =
                            ClienteStruct.fromSerializableMap(jsonDecode(
                                '{\"id\":\"0\",\"nome\":\"0\",\"logo\":\"0\",\"cor_primaria\":\"0\",\"cor_secundaria\":\"0\",\"consultoria\":\"0\",\"is_ativo\":\"false\",\"nome_nivel1\":\"0\",\"nome_nivel2\":\"0\",\"nome_nivel3\":\"0\",\"nome_nivel4\":\"0\"}'));

                        FFAppState().deleteProgramas();
                        FFAppState().programas = [];

                        FFAppState().deleteClientes();
                        FFAppState().clientes = [];

                        FFAppState().deleteTiposOcorrencia();
                        FFAppState().tiposOcorrencia = [];

                        FFAppState().deleteRegistrosLocais();
                        FFAppState().registrosLocais = [];

                        FFAppState().deleteTemas();
                        FFAppState().temas = [];

                        FFAppState().deleteResponsaveisAcao();
                        FFAppState().responsaveisAcao = [];

                        FFAppState().deleteAreasVistoriadas();
                        FFAppState().areasVistoriadas = [];

                        FFAppState().deleteNiveis();
                        FFAppState().niveis = [];

                        FFAppState().deleteCondicoesClima();
                        FFAppState().condicoesClima = [];

                        FFAppState().deleteNomesStatusAcao();
                        FFAppState().nomesStatusAcao = [];
                      });
                    },
                    text: 'LimpaAppStates',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('BuscaRegistro');
                    },
                    text: 'Ir para BuscaRegistro',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        _model.mostraValores = !_model.mostraValores;
                      });
                    },
                    text: 'Mostra Valores',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Text(
                    'FIltros:${valueOrDefault<String>(
                      FFAppState().escolhasFiltros.toString(),
                      'null',
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
