import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_consultoriaAtual') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_consultoriaAtual') ?? '{}';
          _consultoriaAtual =
              ConsultoriaStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_clienteAtual') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_clienteAtual') ?? '{}';
          _clienteAtual =
              ClienteStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_empreendimentoAtual') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_empreendimentoAtual') ?? '{}';
          _empreendimentoAtual = EmpreendimentoStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _programas = (await secureStorage.getStringList('ff_programas'))
              ?.map((x) {
                try {
                  return ProgramaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _programas;
    });
    await _safeInitAsync(() async {
      _clientes = (await secureStorage.getStringList('ff_clientes'))
              ?.map((x) {
                try {
                  return ClienteStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _clientes;
    });
    await _safeInitAsync(() async {
      _tiposOcorrencia =
          (await secureStorage.getStringList('ff_tiposOcorrencia'))
                  ?.map((x) {
                    try {
                      return TipoOcorrenciaStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _tiposOcorrencia;
    });
    await _safeInitAsync(() async {
      _registrosLocais =
          (await secureStorage.getStringList('ff_registrosLocais'))
                  ?.map((x) {
                    try {
                      return RegistroStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _registrosLocais;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_usuarioLogado') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_usuarioLogado') ?? '{}';
          _usuarioLogado =
              UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _isOnline = await secureStorage.getBool('ff_isOnline') ?? _isOnline;
    });
    await _safeInitAsync(() async {
      _temas = (await secureStorage.getStringList('ff_temas'))
              ?.map((x) {
                try {
                  return TemaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _temas;
    });
    await _safeInitAsync(() async {
      _responsaveisAcao =
          (await secureStorage.getStringList('ff_responsaveisAcao'))
                  ?.map((x) {
                    try {
                      return ResponsavelAcaoStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _responsaveisAcao;
    });
    await _safeInitAsync(() async {
      _areasVistoriadas =
          (await secureStorage.getStringList('ff_areasVistoriadas'))
                  ?.map((x) {
                    try {
                      return AreaVistoriadaStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _areasVistoriadas;
    });
    await _safeInitAsync(() async {
      _niveis = (await secureStorage.getStringList('ff_niveis'))
              ?.map((x) {
                try {
                  return NivelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _niveis;
    });
    await _safeInitAsync(() async {
      _condicoesClima = (await secureStorage.getStringList('ff_condicoesClima'))
              ?.map((x) {
                try {
                  return CondicaoClimaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _condicoesClima;
    });
    await _safeInitAsync(() async {
      _nomesStatusAcao = (await secureStorage
                  .getStringList('ff_nomesStatusAcao'))
              ?.map((x) {
                try {
                  return StatusAcaoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _nomesStatusAcao;
    });
    await _safeInitAsync(() async {
      _AppStateAtualizado =
          await secureStorage.getBool('ff_AppStateAtualizado') ??
              _AppStateAtualizado;
    });
    await _safeInitAsync(() async {
      _opcoesFiltroSelecionadas =
          await secureStorage.getStringList('ff_opcoesFiltroSelecionadas') ??
              _opcoesFiltroSelecionadas;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_escolhasFiltros') != null) {
        try {
          _escolhasFiltros = jsonDecode(
              await secureStorage.getString('ff_escolhasFiltros') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _capsulasFiltro = (await secureStorage.getStringList('ff_capsulasFiltro'))
              ?.map((x) {
                try {
                  return ZItemFiltroStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _capsulasFiltro;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_RegistroSelecionado') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_RegistroSelecionado') ?? '{}';
          _RegistroSelecionado =
              RegistroStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  ConsultoriaStruct _consultoriaAtual = ConsultoriaStruct.fromSerializableMap(
      jsonDecode(
          '{\"id\":\"0\",\"nome\":\"0\",\"logo\":\"0\",\"cor_primaria\":\"0\",\"cor_secundaria\":\"0\"}'));
  ConsultoriaStruct get consultoriaAtual => _consultoriaAtual;
  set consultoriaAtual(ConsultoriaStruct _value) {
    _consultoriaAtual = _value;
    secureStorage.setString('ff_consultoriaAtual', _value.serialize());
  }

  void deleteConsultoriaAtual() {
    secureStorage.delete(key: 'ff_consultoriaAtual');
  }

  void updateConsultoriaAtualStruct(Function(ConsultoriaStruct) updateFn) {
    updateFn(_consultoriaAtual);
    secureStorage.setString(
        'ff_consultoriaAtual', _consultoriaAtual.serialize());
  }

  ClienteStruct _clienteAtual = ClienteStruct.fromSerializableMap(jsonDecode(
      '{\"id\":\"0\",\"nome\":\"0\",\"logo\":\"0\",\"cor_primaria\":\"0\",\"cor_secundaria\":\"0\",\"consultoria\":\"0\",\"is_ativo\":\"false\",\"nome_nivel1\":\"0\",\"nome_nivel2\":\"0\",\"nome_nivel3\":\"0\",\"nome_nivel4\":\"0\"}'));
  ClienteStruct get clienteAtual => _clienteAtual;
  set clienteAtual(ClienteStruct _value) {
    _clienteAtual = _value;
    secureStorage.setString('ff_clienteAtual', _value.serialize());
  }

  void deleteClienteAtual() {
    secureStorage.delete(key: 'ff_clienteAtual');
  }

  void updateClienteAtualStruct(Function(ClienteStruct) updateFn) {
    updateFn(_clienteAtual);
    secureStorage.setString('ff_clienteAtual', _clienteAtual.serialize());
  }

  EmpreendimentoStruct _empreendimentoAtual =
      EmpreendimentoStruct.fromSerializableMap(jsonDecode(
          '{\"id\":\"0\",\"nome\":\"0\",\"logo\":\"0\",\"cor_primaria\":\"0\",\"cor_secundaria\":\"0\",\"consultoria\":\"0\",\"is_ativo\":\"true\",\"nome_nivel1\":\"0\",\"nome_nivel2\":\"0\",\"nome_nivel3\":\"0\",\"nome_nivel4\":\"0\"}'));
  EmpreendimentoStruct get empreendimentoAtual => _empreendimentoAtual;
  set empreendimentoAtual(EmpreendimentoStruct _value) {
    _empreendimentoAtual = _value;
    secureStorage.setString('ff_empreendimentoAtual', _value.serialize());
  }

  void deleteEmpreendimentoAtual() {
    secureStorage.delete(key: 'ff_empreendimentoAtual');
  }

  void updateEmpreendimentoAtualStruct(
      Function(EmpreendimentoStruct) updateFn) {
    updateFn(_empreendimentoAtual);
    secureStorage.setString(
        'ff_empreendimentoAtual', _empreendimentoAtual.serialize());
  }

  List<ProgramaStruct> _programas = [
    ProgramaStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"created_at\":\"Hello World\",\"consultoria\":\"0\",\"consultoria_obj\":\"{\\\"id\\\":\\\"0\\\",\\\"nome\\\":\\\"Hello World\\\",\\\"logo\\\":\\\"https://picsum.photos/seed/581/600\\\",\\\"cor_primaria\\\":\\\"Hello World\\\",\\\"cor_secundaria\\\":\\\"Hello World\\\"}\",\"nome_programa\":\"Hello World\",\"cliente\":\"0\",\"cliente_obj\":\"{\\\"id\\\":\\\"0\\\",\\\"nome\\\":\\\"Hello World\\\",\\\"logo\\\":\\\"https://picsum.photos/seed/114/600\\\",\\\"cor_primaria\\\":\\\"Hello World\\\",\\\"cor_secundaria\\\":\\\"Hello World\\\",\\\"consultoria\\\":\\\"0\\\",\\\"consultoriaObj\\\":\\\"{\\\\\\\"id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"nome\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"logo\\\\\\\":\\\\\\\"https://picsum.photos/seed/638/600\\\\\\\",\\\\\\\"cor_primaria\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"cor_secundaria\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\",\\\"is_ativo\\\":\\\"false\\\",\\\"nome_nivel1\\\":\\\"Hello World\\\",\\\"nome_nivel2\\\":\\\"Hello World\\\",\\\"nome_nivel3\\\":\\\"Hello World\\\",\\\"nome_nivel4\\\":\\\"Hello World\\\"}\"}'))
  ];
  List<ProgramaStruct> get programas => _programas;
  set programas(List<ProgramaStruct> _value) {
    _programas = _value;
    secureStorage.setStringList(
        'ff_programas', _value.map((x) => x.serialize()).toList());
  }

  void deleteProgramas() {
    secureStorage.delete(key: 'ff_programas');
  }

  void addToProgramas(ProgramaStruct _value) {
    _programas.add(_value);
    secureStorage.setStringList(
        'ff_programas', _programas.map((x) => x.serialize()).toList());
  }

  void removeFromProgramas(ProgramaStruct _value) {
    _programas.remove(_value);
    secureStorage.setStringList(
        'ff_programas', _programas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProgramas(int _index) {
    _programas.removeAt(_index);
    secureStorage.setStringList(
        'ff_programas', _programas.map((x) => x.serialize()).toList());
  }

  void updateProgramasAtIndex(
    int _index,
    ProgramaStruct Function(ProgramaStruct) updateFn,
  ) {
    _programas[_index] = updateFn(_programas[_index]);
    secureStorage.setStringList(
        'ff_programas', _programas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProgramas(int _index, ProgramaStruct _value) {
    _programas.insert(_index, _value);
    secureStorage.setStringList(
        'ff_programas', _programas.map((x) => x.serialize()).toList());
  }

  List<ClienteStruct> _clientes = [
    ClienteStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"nome\":\"Hello World\",\"logo\":\"https://picsum.photos/seed/145/600\",\"cor_primaria\":\"Hello World\",\"cor_secundaria\":\"Hello World\",\"consultoria\":\"0\",\"consultoriaObj\":\"{\\\"id\\\":\\\"0\\\",\\\"nome\\\":\\\"Hello World\\\",\\\"logo\\\":\\\"https://picsum.photos/seed/224/600\\\",\\\"cor_primaria\\\":\\\"Hello World\\\",\\\"cor_secundaria\\\":\\\"Hello World\\\"}\",\"is_ativo\":\"false\",\"nome_nivel1\":\"Hello World\",\"nome_nivel2\":\"Hello World\",\"nome_nivel3\":\"Hello World\",\"nome_nivel4\":\"Hello World\"}'))
  ];
  List<ClienteStruct> get clientes => _clientes;
  set clientes(List<ClienteStruct> _value) {
    _clientes = _value;
    secureStorage.setStringList(
        'ff_clientes', _value.map((x) => x.serialize()).toList());
  }

  void deleteClientes() {
    secureStorage.delete(key: 'ff_clientes');
  }

  void addToClientes(ClienteStruct _value) {
    _clientes.add(_value);
    secureStorage.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void removeFromClientes(ClienteStruct _value) {
    _clientes.remove(_value);
    secureStorage.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromClientes(int _index) {
    _clientes.removeAt(_index);
    secureStorage.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void updateClientesAtIndex(
    int _index,
    ClienteStruct Function(ClienteStruct) updateFn,
  ) {
    _clientes[_index] = updateFn(_clientes[_index]);
    secureStorage.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInClientes(int _index, ClienteStruct _value) {
    _clientes.insert(_index, _value);
    secureStorage.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  List<TipoOcorrenciaStruct> _tiposOcorrencia = [
    TipoOcorrenciaStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"created_at\":\"Hello World\",\"consultoriaObj\":\"{\\\"id\\\":\\\"0\\\",\\\"nome\\\":\\\"Hello World\\\",\\\"logo\\\":\\\"https://picsum.photos/seed/346/600\\\",\\\"cor_primaria\\\":\\\"Hello World\\\",\\\"cor_secundaria\\\":\\\"Hello World\\\"}\",\"consultoria\":\"0\",\"nome_tipo_ocorrencia\":\"Hello World\",\"cor\":\"Hello World\",\"enum_tipo_ocorrencia\":\"C\"}'))
  ];
  List<TipoOcorrenciaStruct> get tiposOcorrencia => _tiposOcorrencia;
  set tiposOcorrencia(List<TipoOcorrenciaStruct> _value) {
    _tiposOcorrencia = _value;
    secureStorage.setStringList(
        'ff_tiposOcorrencia', _value.map((x) => x.serialize()).toList());
  }

  void deleteTiposOcorrencia() {
    secureStorage.delete(key: 'ff_tiposOcorrencia');
  }

  void addToTiposOcorrencia(TipoOcorrenciaStruct _value) {
    _tiposOcorrencia.add(_value);
    secureStorage.setStringList('ff_tiposOcorrencia',
        _tiposOcorrencia.map((x) => x.serialize()).toList());
  }

  void removeFromTiposOcorrencia(TipoOcorrenciaStruct _value) {
    _tiposOcorrencia.remove(_value);
    secureStorage.setStringList('ff_tiposOcorrencia',
        _tiposOcorrencia.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTiposOcorrencia(int _index) {
    _tiposOcorrencia.removeAt(_index);
    secureStorage.setStringList('ff_tiposOcorrencia',
        _tiposOcorrencia.map((x) => x.serialize()).toList());
  }

  void updateTiposOcorrenciaAtIndex(
    int _index,
    TipoOcorrenciaStruct Function(TipoOcorrenciaStruct) updateFn,
  ) {
    _tiposOcorrencia[_index] = updateFn(_tiposOcorrencia[_index]);
    secureStorage.setStringList('ff_tiposOcorrencia',
        _tiposOcorrencia.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTiposOcorrencia(int _index, TipoOcorrenciaStruct _value) {
    _tiposOcorrencia.insert(_index, _value);
    secureStorage.setStringList('ff_tiposOcorrencia',
        _tiposOcorrencia.map((x) => x.serialize()).toList());
  }

  List<RegistroStruct> _registrosLocais = [];
  List<RegistroStruct> get registrosLocais => _registrosLocais;
  set registrosLocais(List<RegistroStruct> _value) {
    _registrosLocais = _value;
    secureStorage.setStringList(
        'ff_registrosLocais', _value.map((x) => x.serialize()).toList());
  }

  void deleteRegistrosLocais() {
    secureStorage.delete(key: 'ff_registrosLocais');
  }

  void addToRegistrosLocais(RegistroStruct _value) {
    _registrosLocais.add(_value);
    secureStorage.setStringList('ff_registrosLocais',
        _registrosLocais.map((x) => x.serialize()).toList());
  }

  void removeFromRegistrosLocais(RegistroStruct _value) {
    _registrosLocais.remove(_value);
    secureStorage.setStringList('ff_registrosLocais',
        _registrosLocais.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromRegistrosLocais(int _index) {
    _registrosLocais.removeAt(_index);
    secureStorage.setStringList('ff_registrosLocais',
        _registrosLocais.map((x) => x.serialize()).toList());
  }

  void updateRegistrosLocaisAtIndex(
    int _index,
    RegistroStruct Function(RegistroStruct) updateFn,
  ) {
    _registrosLocais[_index] = updateFn(_registrosLocais[_index]);
    secureStorage.setStringList('ff_registrosLocais',
        _registrosLocais.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInRegistrosLocais(int _index, RegistroStruct _value) {
    _registrosLocais.insert(_index, _value);
    secureStorage.setStringList('ff_registrosLocais',
        _registrosLocais.map((x) => x.serialize()).toList());
  }

  UserStruct _usuarioLogado = UserStruct.fromSerializableMap(jsonDecode(
      '{\"id\":\"0\",\"email\":\"0\",\"consultoria\":\"0\",\"link_bi\":\"0\",\"is_coletor\":\"false\",\"is_cliente\":\"false\",\"is_admin\":\"false\",\"nome\":\"0\",\"fone\":\"0\",\"foto_url\":\"0\",\"is_ativo\":\"false\",\"created_at\":\"0\"}'));
  UserStruct get usuarioLogado => _usuarioLogado;
  set usuarioLogado(UserStruct _value) {
    _usuarioLogado = _value;
    secureStorage.setString('ff_usuarioLogado', _value.serialize());
  }

  void deleteUsuarioLogado() {
    secureStorage.delete(key: 'ff_usuarioLogado');
  }

  void updateUsuarioLogadoStruct(Function(UserStruct) updateFn) {
    updateFn(_usuarioLogado);
    secureStorage.setString('ff_usuarioLogado', _usuarioLogado.serialize());
  }

  bool _isOnline = false;
  bool get isOnline => _isOnline;
  set isOnline(bool _value) {
    _isOnline = _value;
    secureStorage.setBool('ff_isOnline', _value);
  }

  void deleteIsOnline() {
    secureStorage.delete(key: 'ff_isOnline');
  }

  List<TemaStruct> _temas = [];
  List<TemaStruct> get temas => _temas;
  set temas(List<TemaStruct> _value) {
    _temas = _value;
    secureStorage.setStringList(
        'ff_temas', _value.map((x) => x.serialize()).toList());
  }

  void deleteTemas() {
    secureStorage.delete(key: 'ff_temas');
  }

  void addToTemas(TemaStruct _value) {
    _temas.add(_value);
    secureStorage.setStringList(
        'ff_temas', _temas.map((x) => x.serialize()).toList());
  }

  void removeFromTemas(TemaStruct _value) {
    _temas.remove(_value);
    secureStorage.setStringList(
        'ff_temas', _temas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTemas(int _index) {
    _temas.removeAt(_index);
    secureStorage.setStringList(
        'ff_temas', _temas.map((x) => x.serialize()).toList());
  }

  void updateTemasAtIndex(
    int _index,
    TemaStruct Function(TemaStruct) updateFn,
  ) {
    _temas[_index] = updateFn(_temas[_index]);
    secureStorage.setStringList(
        'ff_temas', _temas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTemas(int _index, TemaStruct _value) {
    _temas.insert(_index, _value);
    secureStorage.setStringList(
        'ff_temas', _temas.map((x) => x.serialize()).toList());
  }

  List<ResponsavelAcaoStruct> _responsaveisAcao = [];
  List<ResponsavelAcaoStruct> get responsaveisAcao => _responsaveisAcao;
  set responsaveisAcao(List<ResponsavelAcaoStruct> _value) {
    _responsaveisAcao = _value;
    secureStorage.setStringList(
        'ff_responsaveisAcao', _value.map((x) => x.serialize()).toList());
  }

  void deleteResponsaveisAcao() {
    secureStorage.delete(key: 'ff_responsaveisAcao');
  }

  void addToResponsaveisAcao(ResponsavelAcaoStruct _value) {
    _responsaveisAcao.add(_value);
    secureStorage.setStringList('ff_responsaveisAcao',
        _responsaveisAcao.map((x) => x.serialize()).toList());
  }

  void removeFromResponsaveisAcao(ResponsavelAcaoStruct _value) {
    _responsaveisAcao.remove(_value);
    secureStorage.setStringList('ff_responsaveisAcao',
        _responsaveisAcao.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromResponsaveisAcao(int _index) {
    _responsaveisAcao.removeAt(_index);
    secureStorage.setStringList('ff_responsaveisAcao',
        _responsaveisAcao.map((x) => x.serialize()).toList());
  }

  void updateResponsaveisAcaoAtIndex(
    int _index,
    ResponsavelAcaoStruct Function(ResponsavelAcaoStruct) updateFn,
  ) {
    _responsaveisAcao[_index] = updateFn(_responsaveisAcao[_index]);
    secureStorage.setStringList('ff_responsaveisAcao',
        _responsaveisAcao.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInResponsaveisAcao(
      int _index, ResponsavelAcaoStruct _value) {
    _responsaveisAcao.insert(_index, _value);
    secureStorage.setStringList('ff_responsaveisAcao',
        _responsaveisAcao.map((x) => x.serialize()).toList());
  }

  List<AreaVistoriadaStruct> _areasVistoriadas = [];
  List<AreaVistoriadaStruct> get areasVistoriadas => _areasVistoriadas;
  set areasVistoriadas(List<AreaVistoriadaStruct> _value) {
    _areasVistoriadas = _value;
    secureStorage.setStringList(
        'ff_areasVistoriadas', _value.map((x) => x.serialize()).toList());
  }

  void deleteAreasVistoriadas() {
    secureStorage.delete(key: 'ff_areasVistoriadas');
  }

  void addToAreasVistoriadas(AreaVistoriadaStruct _value) {
    _areasVistoriadas.add(_value);
    secureStorage.setStringList('ff_areasVistoriadas',
        _areasVistoriadas.map((x) => x.serialize()).toList());
  }

  void removeFromAreasVistoriadas(AreaVistoriadaStruct _value) {
    _areasVistoriadas.remove(_value);
    secureStorage.setStringList('ff_areasVistoriadas',
        _areasVistoriadas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAreasVistoriadas(int _index) {
    _areasVistoriadas.removeAt(_index);
    secureStorage.setStringList('ff_areasVistoriadas',
        _areasVistoriadas.map((x) => x.serialize()).toList());
  }

  void updateAreasVistoriadasAtIndex(
    int _index,
    AreaVistoriadaStruct Function(AreaVistoriadaStruct) updateFn,
  ) {
    _areasVistoriadas[_index] = updateFn(_areasVistoriadas[_index]);
    secureStorage.setStringList('ff_areasVistoriadas',
        _areasVistoriadas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAreasVistoriadas(
      int _index, AreaVistoriadaStruct _value) {
    _areasVistoriadas.insert(_index, _value);
    secureStorage.setStringList('ff_areasVistoriadas',
        _areasVistoriadas.map((x) => x.serialize()).toList());
  }

  List<NivelStruct> _niveis = [];
  List<NivelStruct> get niveis => _niveis;
  set niveis(List<NivelStruct> _value) {
    _niveis = _value;
    secureStorage.setStringList(
        'ff_niveis', _value.map((x) => x.serialize()).toList());
  }

  void deleteNiveis() {
    secureStorage.delete(key: 'ff_niveis');
  }

  void addToNiveis(NivelStruct _value) {
    _niveis.add(_value);
    secureStorage.setStringList(
        'ff_niveis', _niveis.map((x) => x.serialize()).toList());
  }

  void removeFromNiveis(NivelStruct _value) {
    _niveis.remove(_value);
    secureStorage.setStringList(
        'ff_niveis', _niveis.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromNiveis(int _index) {
    _niveis.removeAt(_index);
    secureStorage.setStringList(
        'ff_niveis', _niveis.map((x) => x.serialize()).toList());
  }

  void updateNiveisAtIndex(
    int _index,
    NivelStruct Function(NivelStruct) updateFn,
  ) {
    _niveis[_index] = updateFn(_niveis[_index]);
    secureStorage.setStringList(
        'ff_niveis', _niveis.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInNiveis(int _index, NivelStruct _value) {
    _niveis.insert(_index, _value);
    secureStorage.setStringList(
        'ff_niveis', _niveis.map((x) => x.serialize()).toList());
  }

  List<CondicaoClimaStruct> _condicoesClima = [];
  List<CondicaoClimaStruct> get condicoesClima => _condicoesClima;
  set condicoesClima(List<CondicaoClimaStruct> _value) {
    _condicoesClima = _value;
    secureStorage.setStringList(
        'ff_condicoesClima', _value.map((x) => x.serialize()).toList());
  }

  void deleteCondicoesClima() {
    secureStorage.delete(key: 'ff_condicoesClima');
  }

  void addToCondicoesClima(CondicaoClimaStruct _value) {
    _condicoesClima.add(_value);
    secureStorage.setStringList('ff_condicoesClima',
        _condicoesClima.map((x) => x.serialize()).toList());
  }

  void removeFromCondicoesClima(CondicaoClimaStruct _value) {
    _condicoesClima.remove(_value);
    secureStorage.setStringList('ff_condicoesClima',
        _condicoesClima.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCondicoesClima(int _index) {
    _condicoesClima.removeAt(_index);
    secureStorage.setStringList('ff_condicoesClima',
        _condicoesClima.map((x) => x.serialize()).toList());
  }

  void updateCondicoesClimaAtIndex(
    int _index,
    CondicaoClimaStruct Function(CondicaoClimaStruct) updateFn,
  ) {
    _condicoesClima[_index] = updateFn(_condicoesClima[_index]);
    secureStorage.setStringList('ff_condicoesClima',
        _condicoesClima.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCondicoesClima(int _index, CondicaoClimaStruct _value) {
    _condicoesClima.insert(_index, _value);
    secureStorage.setStringList('ff_condicoesClima',
        _condicoesClima.map((x) => x.serialize()).toList());
  }

  List<StatusAcaoStruct> _nomesStatusAcao = [];
  List<StatusAcaoStruct> get nomesStatusAcao => _nomesStatusAcao;
  set nomesStatusAcao(List<StatusAcaoStruct> _value) {
    _nomesStatusAcao = _value;
    secureStorage.setStringList(
        'ff_nomesStatusAcao', _value.map((x) => x.serialize()).toList());
  }

  void deleteNomesStatusAcao() {
    secureStorage.delete(key: 'ff_nomesStatusAcao');
  }

  void addToNomesStatusAcao(StatusAcaoStruct _value) {
    _nomesStatusAcao.add(_value);
    secureStorage.setStringList('ff_nomesStatusAcao',
        _nomesStatusAcao.map((x) => x.serialize()).toList());
  }

  void removeFromNomesStatusAcao(StatusAcaoStruct _value) {
    _nomesStatusAcao.remove(_value);
    secureStorage.setStringList('ff_nomesStatusAcao',
        _nomesStatusAcao.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromNomesStatusAcao(int _index) {
    _nomesStatusAcao.removeAt(_index);
    secureStorage.setStringList('ff_nomesStatusAcao',
        _nomesStatusAcao.map((x) => x.serialize()).toList());
  }

  void updateNomesStatusAcaoAtIndex(
    int _index,
    StatusAcaoStruct Function(StatusAcaoStruct) updateFn,
  ) {
    _nomesStatusAcao[_index] = updateFn(_nomesStatusAcao[_index]);
    secureStorage.setStringList('ff_nomesStatusAcao',
        _nomesStatusAcao.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInNomesStatusAcao(int _index, StatusAcaoStruct _value) {
    _nomesStatusAcao.insert(_index, _value);
    secureStorage.setStringList('ff_nomesStatusAcao',
        _nomesStatusAcao.map((x) => x.serialize()).toList());
  }

  bool _AppStateAtualizado = false;
  bool get AppStateAtualizado => _AppStateAtualizado;
  set AppStateAtualizado(bool _value) {
    _AppStateAtualizado = _value;
    secureStorage.setBool('ff_AppStateAtualizado', _value);
  }

  void deleteAppStateAtualizado() {
    secureStorage.delete(key: 'ff_AppStateAtualizado');
  }

  List<String> _opcoesFiltroSelecionadas = [];
  List<String> get opcoesFiltroSelecionadas => _opcoesFiltroSelecionadas;
  set opcoesFiltroSelecionadas(List<String> _value) {
    _opcoesFiltroSelecionadas = _value;
    secureStorage.setStringList('ff_opcoesFiltroSelecionadas', _value);
  }

  void deleteOpcoesFiltroSelecionadas() {
    secureStorage.delete(key: 'ff_opcoesFiltroSelecionadas');
  }

  void addToOpcoesFiltroSelecionadas(String _value) {
    _opcoesFiltroSelecionadas.add(_value);
    secureStorage.setStringList(
        'ff_opcoesFiltroSelecionadas', _opcoesFiltroSelecionadas);
  }

  void removeFromOpcoesFiltroSelecionadas(String _value) {
    _opcoesFiltroSelecionadas.remove(_value);
    secureStorage.setStringList(
        'ff_opcoesFiltroSelecionadas', _opcoesFiltroSelecionadas);
  }

  void removeAtIndexFromOpcoesFiltroSelecionadas(int _index) {
    _opcoesFiltroSelecionadas.removeAt(_index);
    secureStorage.setStringList(
        'ff_opcoesFiltroSelecionadas', _opcoesFiltroSelecionadas);
  }

  void updateOpcoesFiltroSelecionadasAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _opcoesFiltroSelecionadas[_index] =
        updateFn(_opcoesFiltroSelecionadas[_index]);
    secureStorage.setStringList(
        'ff_opcoesFiltroSelecionadas', _opcoesFiltroSelecionadas);
  }

  void insertAtIndexInOpcoesFiltroSelecionadas(int _index, String _value) {
    _opcoesFiltroSelecionadas.insert(_index, _value);
    secureStorage.setStringList(
        'ff_opcoesFiltroSelecionadas', _opcoesFiltroSelecionadas);
  }

  dynamic _escolhasFiltros = jsonDecode('{}');
  dynamic get escolhasFiltros => _escolhasFiltros;
  set escolhasFiltros(dynamic _value) {
    _escolhasFiltros = _value;
    secureStorage.setString('ff_escolhasFiltros', jsonEncode(_value));
  }

  void deleteEscolhasFiltros() {
    secureStorage.delete(key: 'ff_escolhasFiltros');
  }

  List<ZItemFiltroStruct> _capsulasFiltro = [
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Tipo Ocorr.\",\"tabela\":\"tipo_ocorrencia\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Área Vist.\",\"tabela\":\"area_vistoriada\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Programa\",\"tabela\":\"programa\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Tema\",\"tabela\":\"tema\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Responsável Ação\",\"tabela\":\"responsavel_acao\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Nível\",\"tabela\":\"nivel\",\"escolhida\":\"false\"}')),
    ZItemFiltroStruct.fromSerializableMap(jsonDecode(
        '{\"label\":\"Status\",\"tabela\":\"status_acao\",\"escolhida\":\"false\"}'))
  ];
  List<ZItemFiltroStruct> get capsulasFiltro => _capsulasFiltro;
  set capsulasFiltro(List<ZItemFiltroStruct> _value) {
    _capsulasFiltro = _value;
    secureStorage.setStringList(
        'ff_capsulasFiltro', _value.map((x) => x.serialize()).toList());
  }

  void deleteCapsulasFiltro() {
    secureStorage.delete(key: 'ff_capsulasFiltro');
  }

  void addToCapsulasFiltro(ZItemFiltroStruct _value) {
    _capsulasFiltro.add(_value);
    secureStorage.setStringList('ff_capsulasFiltro',
        _capsulasFiltro.map((x) => x.serialize()).toList());
  }

  void removeFromCapsulasFiltro(ZItemFiltroStruct _value) {
    _capsulasFiltro.remove(_value);
    secureStorage.setStringList('ff_capsulasFiltro',
        _capsulasFiltro.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCapsulasFiltro(int _index) {
    _capsulasFiltro.removeAt(_index);
    secureStorage.setStringList('ff_capsulasFiltro',
        _capsulasFiltro.map((x) => x.serialize()).toList());
  }

  void updateCapsulasFiltroAtIndex(
    int _index,
    ZItemFiltroStruct Function(ZItemFiltroStruct) updateFn,
  ) {
    _capsulasFiltro[_index] = updateFn(_capsulasFiltro[_index]);
    secureStorage.setStringList('ff_capsulasFiltro',
        _capsulasFiltro.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCapsulasFiltro(int _index, ZItemFiltroStruct _value) {
    _capsulasFiltro.insert(_index, _value);
    secureStorage.setStringList('ff_capsulasFiltro',
        _capsulasFiltro.map((x) => x.serialize()).toList());
  }

  RegistroStruct _RegistroSelecionado = RegistroStruct();
  RegistroStruct get RegistroSelecionado => _RegistroSelecionado;
  set RegistroSelecionado(RegistroStruct _value) {
    _RegistroSelecionado = _value;
    secureStorage.setString('ff_RegistroSelecionado', _value.serialize());
  }

  void deleteRegistroSelecionado() {
    secureStorage.delete(key: 'ff_RegistroSelecionado');
  }

  void updateRegistroSelecionadoStruct(Function(RegistroStruct) updateFn) {
    updateFn(_RegistroSelecionado);
    secureStorage.setString(
        'ff_RegistroSelecionado', _RegistroSelecionado.serialize());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
