// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotoAcaoStruct extends BaseStruct {
  FotoAcaoStruct({
    String? nome,
    String? url,
  })  : _nome = nome,
        _url = url;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '0';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '0';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static FotoAcaoStruct fromMap(Map<String, dynamic> data) => FotoAcaoStruct(
        nome: data['nome'] as String?,
        url: data['url'] as String?,
      );

  static FotoAcaoStruct? maybeFromMap(dynamic data) =>
      data is Map ? FotoAcaoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static FotoAcaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FotoAcaoStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FotoAcaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FotoAcaoStruct && nome == other.nome && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, url]);
}

FotoAcaoStruct createFotoAcaoStruct({
  String? nome,
  String? url,
}) =>
    FotoAcaoStruct(
      nome: nome,
      url: url,
    );
