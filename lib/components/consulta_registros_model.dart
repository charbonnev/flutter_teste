import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'consulta_registros_widget.dart' show ConsultaRegistrosWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsultaRegistrosModel extends FlutterFlowModel<ConsultaRegistrosWidget> {
  ///  Local state fields for this component.

  RegistrosViewRow? registroSelecionadoSupa;

  RegistroViewStruct? registroSelecionado;
  void updateRegistroSelecionadoStruct(Function(RegistroViewStruct) updateFn) =>
      updateFn(registroSelecionado ??= RegistroViewStruct());

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
