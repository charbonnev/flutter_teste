import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'json_checker_model.dart';
export 'json_checker_model.dart';

class JsonCheckerWidget extends StatefulWidget {
  const JsonCheckerWidget({super.key});

  @override
  State<JsonCheckerWidget> createState() => _JsonCheckerWidgetState();
}

class _JsonCheckerWidgetState extends State<JsonCheckerWidget> {
  late JsonCheckerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JsonCheckerModel());

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
            'TEST - JSON CHECKER',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Esquerda: App State | Direita: Supabase',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Empreendimento',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          constraints: BoxConstraints(
                            minHeight: 100.0,
                            maxHeight: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Builder(
                            builder: (context) {
                              final empr1keylist = functions
                                      .getKeysFromJSON(FFAppState()
                                          .empreendimentoAtual
                                          .toMap())
                                      ?.toList() ??
                                  [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: empr1keylist.length,
                                itemBuilder: (context, empr1keylistIndex) {
                                  final empr1keylistItem =
                                      empr1keylist[empr1keylistIndex];
                                  return Text(
                                    empr1keylistItem,
                                    textAlign: TextAlign.end,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          constraints: BoxConstraints(
                            minHeight: 100.0,
                            maxHeight: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FutureBuilder<ApiCallResponse>(
                            future: SupabaseCheckGroup.getCheckCall.call(
                              table: 'empreendimento',
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
                              final listViewGetCheckResponse = snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final empr2keylist = functions
                                          .getKeysFromJSON(SupabaseCheckGroup
                                              .getCheckCall
                                              .firstItem(
                                            listViewGetCheckResponse.jsonBody,
                                          ))
                                          ?.toList() ??
                                      [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: empr2keylist.length,
                                    itemBuilder: (context, empr2keylistIndex) {
                                      final empr2keylistItem =
                                          empr2keylist[empr2keylistIndex];
                                      return Text(
                                        empr2keylistItem,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
