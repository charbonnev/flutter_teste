import '/backend/schema/structs/index.dart';
import '/components/text_field_decente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registro/dropdown_cria_registro/dropdown_cria_registro_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'criar_registro_widget.dart' show CriarRegistroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarRegistroModel extends FlutterFlowModel<CriarRegistroWidget> {
  ///  Local state fields for this page.

  RegistroStruct? registroEmEdicaoPage;
  void updateRegistroEmEdicaoPageStruct(Function(RegistroStruct) updateFn) =>
      updateFn(registroEmEdicaoPage ??= RegistroStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel1;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel2;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel3;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel4;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel5;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel6;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel7;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel8;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for TextFieldDecente component.
  late TextFieldDecenteModel textFieldDecenteModel1;
  // Model for TextFieldDecente component.
  late TextFieldDecenteModel textFieldDecenteModel2;
  // Model for DropdownCriaRegistro component.
  late DropdownCriaRegistroModel dropdownCriaRegistroModel9;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dropdownCriaRegistroModel1 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel2 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel3 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel4 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel5 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel6 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel7 =
        createModel(context, () => DropdownCriaRegistroModel());
    dropdownCriaRegistroModel8 =
        createModel(context, () => DropdownCriaRegistroModel());
    textFieldDecenteModel1 =
        createModel(context, () => TextFieldDecenteModel());
    textFieldDecenteModel2 =
        createModel(context, () => TextFieldDecenteModel());
    dropdownCriaRegistroModel9 =
        createModel(context, () => DropdownCriaRegistroModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dropdownCriaRegistroModel1.dispose();
    dropdownCriaRegistroModel2.dispose();
    dropdownCriaRegistroModel3.dispose();
    dropdownCriaRegistroModel4.dispose();
    dropdownCriaRegistroModel5.dispose();
    dropdownCriaRegistroModel6.dispose();
    dropdownCriaRegistroModel7.dispose();
    dropdownCriaRegistroModel8.dispose();
    textFieldDecenteModel1.dispose();
    textFieldDecenteModel2.dispose();
    dropdownCriaRegistroModel9.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
