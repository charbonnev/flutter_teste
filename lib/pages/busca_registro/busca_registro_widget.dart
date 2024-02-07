import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/consulta_registros_widget.dart';
import '/filtro/dropdown_filtro_coleta/dropdown_filtro_coleta_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'busca_registro_model.dart';
export 'busca_registro_model.dart';

class BuscaRegistroWidget extends StatefulWidget {
  const BuscaRegistroWidget({super.key});

  @override
  State<BuscaRegistroWidget> createState() => _BuscaRegistroWidgetState();
}

class _BuscaRegistroWidgetState extends State<BuscaRegistroWidget>
    with TickerProviderStateMixin {
  late BuscaRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        BlurEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(4.0, 4.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscaRegistroModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().clienteAtual.hasId()) {
        await action_blocks.syncAppStates(
          context,
          clienteId: FFAppState().clienteAtual.id,
        );
        setState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Listas internas atualizadas!',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).accent2,
          ),
        );
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
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
                      FFAppState().clienteAtual.hasId()
                          ? FFAppState().clienteAtual.id
                          : null,
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
                      fontSize: 18.0,
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
          child: Stack(
            children: [
              if (_model.dropDownClienteValue == FFAppState().clienteAtual.id)
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 16.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Filtrar por / Preencher :',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).labelSmall,
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 350.0,
                                ),
                                decoration: BoxDecoration(),
                                child: FlutterFlowChoiceChips(
                                  options: FFAppState()
                                      .capsulasFiltro
                                      .map((e) => e.label)
                                      .toList()
                                      .map((label) => ChipData(label))
                                      .toList(),
                                  onChanged: (val) => setState(
                                      () => _model.choiceChipsValues = val),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    labelPadding: EdgeInsets.all(4.0),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    labelPadding: EdgeInsets.all(4.0),
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 8.0,
                                  multiselect: true,
                                  initialized: _model.choiceChipsValues != null,
                                  alignment: WrapAlignment.spaceBetween,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    functions
                                        .searchJSONListforMembersFieldsValues(
                                            FFAppState()
                                                .capsulasFiltro
                                                .map((e) => e.toMap())
                                                .toList(),
                                            functions
                                                .getKeysFromJSON(FFAppState()
                                                    .escolhasFiltros)
                                                ?.toList(),
                                            'tabela',
                                            'label'),
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ].divide(SizedBox(height: 6.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: valueOrDefault<bool>(
                              FFAppState().consultoriaAtual.hasId(),
                              false,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 10.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel1,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'tipo_ocorrencia',
                                        nomeExibicao: 'Tipo Ocorrência',
                                        campoNome: 'nome_tipo_ocorrencia',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .tiposOcorrencia
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel2,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'area_vistoriada',
                                        nomeExibicao: 'Area Vistoriada',
                                        campoNome: 'nome_area_vistoriada',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .areasVistoriadas
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel3,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'programa',
                                        nomeExibicao: 'Programa',
                                        campoNome: 'nome_programa',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .programas
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel4,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'tema',
                                        nomeExibicao: 'Tema',
                                        campoNome: 'nome_tema',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .temas
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel5,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'responsavel_acao',
                                        nomeExibicao: 'Responsável Ação',
                                        campoNome: 'nome_responsavel',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .responsaveisAcao
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel6,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'nivel',
                                        nomeExibicao: 'Nível',
                                        campoNome: 'full_alias',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .niveis
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.43,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.dropdownFiltroColetaModel7,
                                      updateCallback: () => setState(() {}),
                                      child: DropdownFiltroColetaWidget(
                                        tabela: 'status_acao',
                                        nomeExibicao: 'Status da Ação',
                                        campoNome: 'nome_status_acao',
                                        campoID: 'id',
                                        jsonLista: FFAppState()
                                            .nomesStatusAcao
                                            .map((e) => e.toMap())
                                            .toList(),
                                        choiceChipsList:
                                            _model.choiceChipsValues,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 0.0, 14.0, 8.0),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 500.0,
                            ),
                            decoration: BoxDecoration(),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onLongPress: () async {
                                setState(() {
                                  FFAppState().escolhasFiltros =
                                      <String, dynamic>{};
                                });
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation'] !=
                                    null) {
                                  await animationsMap[
                                          'buttonOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'buttonOnActionTriggerAnimation']!
                                          .controller
                                          .reverse);
                                }
                              },
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Remover Filtros (Mantenha Pressionado)',
                                icon: Icon(
                                  Icons.filter_alt_off,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ).animateOnActionTrigger(
                              animationsMap['buttonOnActionTriggerAnimation']!,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.85,
                                      child: ConsultaRegistrosWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 45.0,
                            constraints: BoxConstraints(
                              maxWidth: 350.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Busca Por Registros',
                              style: FlutterFlowTheme.of(context).titleSmall,
                            ),
                          ),
                        ),
                        SelectionArea(
                            child: Text(
                          FFAppState().escolhasFiltros.toString(),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        )),
                        FFButtonWidget(
                          onPressed: () async {
                            setState(() {
                              FFAppState().deleteConsultoriaAtual();
                              FFAppState().consultoriaAtual = ConsultoriaStruct
                                  .fromSerializableMap(jsonDecode(
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
                          text: 'limpa_states',
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
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('TesteStatesLogado');
                          },
                          text: 'testes',
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
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('JsonChecker');
                          },
                          text: 'JsonChecker',
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
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
