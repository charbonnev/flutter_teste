import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/table_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? idClienteSelecionado;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDownCliente widget.
  int? dropDownClienteValue;
  FormFieldController<int>? dropDownClienteValueController;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for DDTipo widget.
  String? dDTipoValue;
  FormFieldController<String>? dDTipoValueController;
  // State field(s) for DDAreaVist widget.
  String? dDAreaVistValue;
  FormFieldController<String>? dDAreaVistValueController;
  // State field(s) for DDProg widget.
  String? dDProgValue;
  FormFieldController<String>? dDProgValueController;
  // State field(s) for DDTema widget.
  String? dDTemaValue;
  FormFieldController<String>? dDTemaValueController;
  // State field(s) for DDResp widget.
  String? dDRespValue;
  FormFieldController<String>? dDRespValueController;
  // Model for table component.
  late TableModel tableModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tableModel = createModel(context, () => TableModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tableModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
