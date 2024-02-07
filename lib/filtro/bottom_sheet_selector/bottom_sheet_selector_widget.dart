import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_selector_model.dart';
export 'bottom_sheet_selector_model.dart';

class BottomSheetSelectorWidget extends StatefulWidget {
  const BottomSheetSelectorWidget({
    super.key,
    String? nomeCampo,
    required this.listaAExibir,
    String? campoNome,
    String? campoID,
    required this.tabela,
    String? eventSwitch,
  })  : this.nomeCampo = nomeCampo ?? 'Escolha o valor do campo',
        this.campoNome = campoNome ?? 'nome',
        this.campoID = campoID ?? 'id',
        this.eventSwitch = eventSwitch ?? 'filtro';

  final String nomeCampo;
  final List<dynamic>? listaAExibir;
  final String campoNome;
  final String campoID;
  final String? tabela;
  final String eventSwitch;

  @override
  State<BottomSheetSelectorWidget> createState() =>
      _BottomSheetSelectorWidgetState();
}

class _BottomSheetSelectorWidgetState extends State<BottomSheetSelectorWidget> {
  late BottomSheetSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetSelectorModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: 50.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.nomeCampo,
                        style: FlutterFlowTheme.of(context).headlineSmall,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().escolhasFiltros =
                                    functions.removeKeyJSON(
                                        FFAppState().escolhasFiltros,
                                        widget.tabela!);
                              });
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.filter_alt_off,
                              color: FlutterFlowTheme.of(context).error,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Builder(
                    builder: (context) {
                      final lista = widget.listaAExibir!.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: lista.length,
                        itemBuilder: (context, listaIndex) {
                          final listaItem = lista[listaIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (widget.eventSwitch == 'filtro') {
                                  setState(() {
                                    FFAppState().escolhasFiltros =
                                        functions.addKeyJSON(
                                            FFAppState().escolhasFiltros,
                                            widget.tabela!,
                                            listaItem);
                                  });
                                  Navigator.pop(context);
                                } else if (widget.eventSwitch ==
                                    'criaRegistro') {
                                  setState(() {});
                                  Navigator.pop(context);
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 8.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            valueOrDefault<String>(
                                              functions.returnStringFromObject(
                                                  listaItem, widget.campoNome),
                                              'null',
                                            ).maybeHandleOverflow(
                                              maxChars: 80,
                                              replacement: '…',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 14.0,
                                                ),
                                            minFontSize: 8.0,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF7C8791),
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
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
