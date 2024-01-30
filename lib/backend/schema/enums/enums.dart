import 'package:collection/collection.dart';

enum DiasDaSemana {
  Segunda,
  Terca,
  Quarta,
  Quinta,
  Sexta,
  Sabado,
  Domingo,
}

enum EnumTipoOcorrencia {
  C,
  NC,
  NCE,
  OE,
  OEE,
  OM,
  OME,
  RA,
  D,
  DE,
  RAE,
}

enum EnumStatusAcao {
  Pendente,
  EmAndamento,
  Concluido,
  NaoIniciado,
}

enum EnumTipoMidia {
  Foto,
  Video,
}

enum EnumCondicaoClima {
  Aberto,
  Nublado,
  ChuvaLeve,
  ChuvaIntensa,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (DiasDaSemana):
      return DiasDaSemana.values.deserialize(value) as T?;
    case (EnumTipoOcorrencia):
      return EnumTipoOcorrencia.values.deserialize(value) as T?;
    case (EnumStatusAcao):
      return EnumStatusAcao.values.deserialize(value) as T?;
    case (EnumTipoMidia):
      return EnumTipoMidia.values.deserialize(value) as T?;
    case (EnumCondicaoClima):
      return EnumCondicaoClima.values.deserialize(value) as T?;
    default:
      return null;
  }
}
