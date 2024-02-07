import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_field_decente_model.dart';
export 'text_field_decente_model.dart';

class TextFieldDecenteWidget extends StatefulWidget {
  const TextFieldDecenteWidget({
    super.key,
    required this.valorIncial,
    required this.label,
  });

  final String? valorIncial;
  final String? label;

  @override
  State<TextFieldDecenteWidget> createState() => _TextFieldDecenteWidgetState();
}

class _TextFieldDecenteWidgetState extends State<TextFieldDecenteWidget> {
  late TextFieldDecenteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextFieldDecenteModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.textController?.text = widget.valorIncial!;
      });
    });

    _model.textController ??= TextEditingController(text: widget.valorIncial);
    _model.textFieldFocusNode ??= FocusNode();

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: FlutterFlowTheme.of(context).labelMedium,
            hintStyle: FlutterFlowTheme.of(context).labelMedium,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
          textAlign: TextAlign.end,
          maxLines: null,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
