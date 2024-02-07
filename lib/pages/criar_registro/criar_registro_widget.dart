import '/backend/schema/structs/index.dart';
import '/components/text_field_decente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/dropdown_cria_registro/dropdown_cria_registro_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'criar_registro_model.dart';
export 'criar_registro_model.dart';

class CriarRegistroWidget extends StatefulWidget {
  const CriarRegistroWidget({super.key});

  @override
  State<CriarRegistroWidget> createState() => _CriarRegistroWidgetState();
}

class _CriarRegistroWidgetState extends State<CriarRegistroWidget> {
  late CriarRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriarRegistroModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().registroEmEdicaoApp = FFAppState().RegistroSelecionado;
      });
    });

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
              context.pop();
            },
          ),
          title: Text(
            'Detalhe Registro',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Work Sans',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDDDDDD),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dados RIA',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 55.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'RIA',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 12.0,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .registroEmEdicaoApp
                                                    .riaEmpreendimento
                                                    .toString(),
                                                'null',
                                              ),
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 55.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Data',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 12.0,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                    'd/M H:mm',
                                                    functions.iSO8601toDatetime(
                                                        FFAppState()
                                                            .registroEmEdicaoApp
                                                            .data)),
                                                'null',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 1.0,
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.dropdownCriaRegistroModel1,
                                updateCallback: () => setState(() {}),
                                child: DropdownCriaRegistroWidget(
                                  tabela: 'nivel',
                                  nomeExibicao: 'Nível',
                                  campoNome: 'full_alias',
                                  campoID: 'id',
                                  actionSwitch: 'criaRegistro',
                                  jsonLista: FFAppState()
                                      .niveis
                                      .map((e) => e.toMap())
                                      .toList(),
                                  nomeColunaNoRegistro: 'nivel',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 1.0,
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.dropdownCriaRegistroModel2,
                                updateCallback: () => setState(() {}),
                                child: DropdownCriaRegistroWidget(
                                  tabela: 'tipo_ocorrencia',
                                  nomeExibicao: 'Tipo de Ocorrência',
                                  campoNome: 'nome_tipo_ocorrencia',
                                  campoID: 'id',
                                  actionSwitch: 'criaRegistro',
                                  jsonLista: FFAppState()
                                      .tiposOcorrencia
                                      .map((e) => e.toMap())
                                      .toList(),
                                  nomeColunaNoRegistro: 'tipo_ocorrencia',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 1.0,
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.dropdownCriaRegistroModel3,
                                updateCallback: () => setState(() {}),
                                child: DropdownCriaRegistroWidget(
                                  tabela: 'programa',
                                  nomeExibicao: 'Programa',
                                  campoNome: 'nome_programa',
                                  campoID: 'id',
                                  actionSwitch: 'criaRegistro',
                                  jsonLista: FFAppState()
                                      .programas
                                      .map((e) => e.toMap())
                                      .toList(),
                                  nomeColunaNoRegistro: 'programa',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 1.0,
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.dropdownCriaRegistroModel4,
                                updateCallback: () => setState(() {}),
                                child: DropdownCriaRegistroWidget(
                                  tabela: 'area_vistoriada',
                                  nomeExibicao: 'Área Vistoriada',
                                  campoNome: 'nome_area_vistoriada',
                                  campoID: 'id',
                                  actionSwitch: 'criaRegistro',
                                  jsonLista: FFAppState()
                                      .areasVistoriadas
                                      .map((e) => e.toMap())
                                      .toList(),
                                  nomeColunaNoRegistro: 'area_vistoriada',
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 65.0,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 1.0,
                              ),
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.dropdownCriaRegistroModel5,
                                updateCallback: () => setState(() {}),
                                child: DropdownCriaRegistroWidget(
                                  tabela: 'tema',
                                  nomeExibicao: 'Tema',
                                  campoNome: 'nome_tema',
                                  campoID: 'id',
                                  actionSwitch: 'criaRegistro',
                                  jsonLista: FFAppState()
                                      .temas
                                      .map((e) => e.toMap())
                                      .toList(),
                                  nomeColunaNoRegistro: 'tema',
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 65.0,
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width *
                                              0.5,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownCriaRegistroModel6,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownCriaRegistroWidget(
                                        tabela: 'condicao_clima',
                                        nomeExibicao: 'Noite Anterior',
                                        campoNome: 'nome',
                                        campoID: 'enum_tipo_ocorrencia',
                                        actionSwitch: 'criaRegistro',
                                        jsonLista: FFAppState()
                                            .condicoesClima
                                            .map((e) => e.toMap())
                                            .toList(),
                                        nomeColunaNoRegistro: 'noite_anterior',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 65.0,
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width *
                                              0.5,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownCriaRegistroModel7,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownCriaRegistroWidget(
                                        tabela: 'condicao_clima',
                                        nomeExibicao: 'Manhã',
                                        campoNome: 'nome',
                                        campoID: 'enum_tipo_ocorrencia',
                                        actionSwitch: 'criaRegistro',
                                        jsonLista: FFAppState()
                                            .condicoesClima
                                            .map((e) => e.toMap())
                                            .toList(),
                                        nomeColunaNoRegistro: 'manha',
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 65.0,
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width *
                                              0.5,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownCriaRegistroModel8,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownCriaRegistroWidget(
                                        tabela: 'condicao_clima',
                                        nomeExibicao: 'Tarde',
                                        campoNome: 'nome',
                                        campoID: 'enum_tipo_ocorrencia',
                                        actionSwitch: 'criaRegistro',
                                        jsonLista: FFAppState()
                                            .condicoesClima
                                            .map((e) => e.toMap())
                                            .toList(),
                                        nomeColunaNoRegistro: 'tarde',
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 180.0,
                              constraints: BoxConstraints(
                                maxHeight: 500.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Agravantes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 12.0,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Demanda comunidade',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchValue1 ??=
                                                          FFAppState()
                                                              .registroEmEdicaoApp
                                                              .demandaComunidade,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchValue1 =
                                                            newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Preocesso Crítico',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchValue2 ??=
                                                          FFAppState()
                                                              .registroEmEdicaoApp
                                                              .processoCritico,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchValue2 =
                                                            newValue!);
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .textFieldDecenteModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              TextFieldDecenteWidget(
                                                            valorIncial: FFAppState()
                                                                .registroEmEdicaoApp
                                                                .requisitoLegal,
                                                            label:
                                                                'Requisito Legal',
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 240.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Considerações',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: wrapWithModel(
                                              model:
                                                  _model.textFieldDecenteModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: TextFieldDecenteWidget(
                                                valorIncial: FFAppState()
                                                    .registroEmEdicaoApp
                                                    .consideracoes,
                                                label: 'Considerações',
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Text(
                              'Ação',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                            Text(
                              (FFAppState().registroEmEdicaoApp.toMap())
                                  .toString(),
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Prazo',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Hello World',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'data realizado',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Hello World',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Status da ação',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Hello World',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 180.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Ação recomendada',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Hello World',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 180.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Ação realizada',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Hello World',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: wrapWithModel(
                                      model: _model.dropdownCriaRegistroModel9,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownCriaRegistroWidget(
                                        tabela: 'responsavel_acao',
                                        nomeExibicao: 'Responsável pela Ação',
                                        campoNome: 'nome_responsavel',
                                        campoID: 'id',
                                        actionSwitch: 'criaRegistro',
                                        jsonLista: FFAppState()
                                            .responsaveisAcao
                                            .map((e) => e.toMap())
                                            .toList(),
                                        nomeColunaNoRegistro:
                                            'responsavel_acao',
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Salva Registro',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
