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
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel1;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel2;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel3;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel4;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel5;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel6;
  // Model for DropdownFiltroColeta component.
  late DropdownFiltroColetaModel dropdownFiltroColetaModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dropdownFiltroColetaModel1 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel2 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel3 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel4 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel5 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel6 =
        createModel(context, () => DropdownFiltroColetaModel());
    dropdownFiltroColetaModel7 =
        createModel(context, () => DropdownFiltroColetaModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dropdownFiltroColetaModel1.dispose();
    dropdownFiltroColetaModel2.dispose();
    dropdownFiltroColetaModel3.dispose();
    dropdownFiltroColetaModel4.dispose();
    dropdownFiltroColetaModel5.dispose();
    dropdownFiltroColetaModel6.dispose();
    dropdownFiltroColetaModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
