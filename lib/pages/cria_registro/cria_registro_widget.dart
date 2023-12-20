import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cria_registro_model.dart';
export 'cria_registro_model.dart';

class CriaRegistroWidget extends StatefulWidget {
  const CriaRegistroWidget({Key? key}) : super(key: key);

  @override
  _CriaRegistroWidgetState createState() => _CriaRegistroWidgetState();
}

class _CriaRegistroWidgetState extends State<CriaRegistroWidget> {
  late CriaRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaRegistroModel());

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
          title: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(null),
            options: ['Option 1'],
            onChanged: (val) => setState(() => _model.dropDownValue = val),
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
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
