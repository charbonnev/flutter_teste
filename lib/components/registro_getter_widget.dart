import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registro_getter_model.dart';
export 'registro_getter_model.dart';

class RegistroGetterWidget extends StatefulWidget {
  const RegistroGetterWidget({super.key});

  @override
  State<RegistroGetterWidget> createState() => _RegistroGetterWidgetState();
}

class _RegistroGetterWidgetState extends State<RegistroGetterWidget> {
  late RegistroGetterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroGetterModel());

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

    return Stack(
      children: [],
    );
  }
}
