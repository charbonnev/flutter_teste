import '/filtro/bottom_sheet_selector/bottom_sheet_selector_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_filtro_coleta_model.dart';
export 'dropdown_filtro_coleta_model.dart';

class DropdownFiltroColetaWidget extends StatefulWidget {
  const DropdownFiltroColetaWidget({
    super.key,
    required this.tabela,
    required this.nomeExibicao,
    required this.jsonLista,
    String? campoNome,
    required this.campoID,
    this.choiceChipsList,
    String? actionSwitch,
  })  : this.campoNome = campoNome ?? 'nome',
        this.actionSwitch = actionSwitch ?? 'filtro';

  final String? tabela;
  final String? nomeExibicao;
  final List<dynamic>? jsonLista;
  final String campoNome;
  final String? campoID;
  final List<String>? choiceChipsList;
  final String actionSwitch;

  @override
  State<DropdownFiltroColetaWidget> createState() =>
      _DropdownFiltroColetaWidgetState();
}

class _DropdownFiltroColetaWidgetState
    extends State<DropdownFiltroColetaWidget> {
  late DropdownFiltroColetaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownFiltroColetaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: valueOrDefault<bool>(
        widget.choiceChipsList?.contains(FFAppState()
            .capsulasFiltro
            .where((e) => e.tabela == widget.tabela)
            .toList()
            .first
            .label),
        true,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Color(0x61000000),
                barrierColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      child: BottomSheetSelectorWidget(
                        nomeCampo: widget.nomeExibicao!,
                        listaAExibir: widget.jsonLista!,
                        campoNome: widget.campoNome,
                        campoID: widget.campoID!,
                        tabela: widget.tabela!,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Material(
              color: Colors.transparent,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                height: 55.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.nomeExibicao,
                                  'null',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 9.0,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: AutoSizeText(
                                    valueOrDefault<String>(
                                      functions.returnStringFromObject(
                                          functions.returnJsonFromObject(
                                              FFAppState().escolhasFiltros,
                                              widget.tabela),
                                          widget.campoNome),
                                      'Toque para escolher',
                                    ).maybeHandleOverflow(
                                      maxChars: 60,
                                      replacement: '…',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                          lineHeight: 1.0,
                                        ),
                                    minFontSize: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
