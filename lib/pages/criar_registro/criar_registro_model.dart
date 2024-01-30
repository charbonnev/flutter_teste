import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/coleta_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'criar_registro_widget.dart' show CriarRegistroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarRegistroModel extends FlutterFlowModel<CriarRegistroWidget> {
  ///  Local state fields for this page.

  RegistroStruct? registroEmEdicao;
  void updateRegistroEmEdicaoStruct(Function(RegistroStruct) updateFn) =>
      updateFn(registroEmEdicao ??= RegistroStruct());

  RegistroRow? registroEmEdicao2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    coletaDropdownModel = createModel(context, () => ColetaDropdownModel());
  }

  void dispose() {
    unfocusNode.dispose();
    coletaDropdownModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
