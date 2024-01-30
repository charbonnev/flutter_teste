import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/coleta_dropdown_widget.dart';
import '/components/consulta_registros_widget.dart';
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
import 'busca_registro_widget.dart' show BuscaRegistroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuscaRegistroModel extends FlutterFlowModel<BuscaRegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDownCliente widget.
  int? dropDownClienteValue;
  FormFieldController<int>? dropDownClienteValueController;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel1;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel2;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel3;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel4;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel5;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel6;
  // Model for coletaDropdown component.
  late ColetaDropdownModel coletaDropdownModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    coletaDropdownModel1 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel2 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel3 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel4 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel5 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel6 = createModel(context, () => ColetaDropdownModel());
    coletaDropdownModel7 = createModel(context, () => ColetaDropdownModel());
  }

  void dispose() {
    unfocusNode.dispose();
    coletaDropdownModel1.dispose();
    coletaDropdownModel2.dispose();
    coletaDropdownModel3.dispose();
    coletaDropdownModel4.dispose();
    coletaDropdownModel5.dispose();
    coletaDropdownModel6.dispose();
    coletaDropdownModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
