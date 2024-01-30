// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZItemFiltroStruct extends BaseStruct {
  ZItemFiltroStruct({
    String? label,
    String? tabela,
    bool? escolhida,
  })  : _label = label,
        _tabela = tabela,
        _escolhida = escolhida;

  // "label" field.
  String? _label;
  String get label => _label ?? 'null';
  set label(String? val) => _label = val;
  bool hasLabel() => _label != null;

  // "tabela" field.
  String? _tabela;
  String get tabela => _tabela ?? 'null';
  set tabela(String? val) => _tabela = val;
  bool hasTabela() => _tabela != null;

  // "escolhida" field.
  bool? _escolhida;
  bool get escolhida => _escolhida ?? false;
  set escolhida(bool? val) => _escolhida = val;
  bool hasEscolhida() => _escolhida != null;

  static ZItemFiltroStruct fromMap(Map<String, dynamic> data) =>
      ZItemFiltroStruct(
        label: data['label'] as String?,
        tabela: data['tabela'] as String?,
        escolhida: data['escolhida'] as bool?,
      );

  static ZItemFiltroStruct? maybeFromMap(dynamic data) => data is Map
      ? ZItemFiltroStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'tabela': _tabela,
        'escolhida': _escolhida,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'tabela': serializeParam(
          _tabela,
          ParamType.String,
        ),
        'escolhida': serializeParam(
          _escolhida,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ZItemFiltroStruct fromSerializableMap(Map<String, dynamic> data) =>
      ZItemFiltroStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        tabela: deserializeParam(
          data['tabela'],
          ParamType.String,
          false,
        ),
        escolhida: deserializeParam(
          data['escolhida'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ZItemFiltroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ZItemFiltroStruct &&
        label == other.label &&
        tabela == other.tabela &&
        escolhida == other.escolhida;
  }

  @override
  int get hashCode => const ListEquality().hash([label, tabela, escolhida]);
}

ZItemFiltroStruct createZItemFiltroStruct({
  String? label,
  String? tabela,
  bool? escolhida,
}) =>
    ZItemFiltroStruct(
      label: label,
      tabela: tabela,
      escolhida: escolhida,
    );
