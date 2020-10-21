// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraController on CalculadoraControllerBase, Store {
  final _$calculadoAtom = Atom(name: 'CalculadoraControllerBase.calculado');

  @override
  bool get calculado {
    _$calculadoAtom.reportRead();
    return super.calculado;
  }

  @override
  set calculado(bool value) {
    _$calculadoAtom.reportWrite(value, super.calculado, () {
      super.calculado = value;
    });
  }

  final _$sinal_onAtom = Atom(name: 'CalculadoraControllerBase.sinal_on');

  @override
  bool get sinal_on {
    _$sinal_onAtom.reportRead();
    return super.sinal_on;
  }

  @override
  set sinal_on(bool value) {
    _$sinal_onAtom.reportWrite(value, super.sinal_on, () {
      super.sinal_on = value;
    });
  }

  final _$numero1Atom = Atom(name: 'CalculadoraControllerBase.numero1');

  @override
  String get numero1 {
    _$numero1Atom.reportRead();
    return super.numero1;
  }

  @override
  set numero1(String value) {
    _$numero1Atom.reportWrite(value, super.numero1, () {
      super.numero1 = value;
    });
  }

  final _$numero2Atom = Atom(name: 'CalculadoraControllerBase.numero2');

  @override
  String get numero2 {
    _$numero2Atom.reportRead();
    return super.numero2;
  }

  @override
  set numero2(String value) {
    _$numero2Atom.reportWrite(value, super.numero2, () {
      super.numero2 = value;
    });
  }

  final _$contadorAtom = Atom(name: 'CalculadoraControllerBase.contador');

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  final _$telaAtom = Atom(name: 'CalculadoraControllerBase.tela');

  @override
  String get tela {
    _$telaAtom.reportRead();
    return super.tela;
  }

  @override
  set tela(String value) {
    _$telaAtom.reportWrite(value, super.tela, () {
      super.tela = value;
    });
  }

  final _$sinalAtom = Atom(name: 'CalculadoraControllerBase.sinal');

  @override
  String get sinal {
    _$sinalAtom.reportRead();
    return super.sinal;
  }

  @override
  set sinal(String value) {
    _$sinalAtom.reportWrite(value, super.sinal, () {
      super.sinal = value;
    });
  }

  final _$CalculadoraControllerBaseActionController =
      ActionController(name: 'CalculadoraControllerBase');

  @override
  void botaoNumerico(String conteudo) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.botaoNumerico');
    try {
      return super.botaoNumerico(conteudo);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void botaoOpera(String conteudo) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.botaoOpera');
    try {
      return super.botaoOpera(conteudo);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void limpaTela() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.limpaTela');
    try {
      return super.limpaTela();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculaTela() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.calculaTela');
    try {
      return super.calculaTela();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
calculado: ${calculado},
sinal_on: ${sinal_on},
numero1: ${numero1},
numero2: ${numero2},
contador: ${contador},
tela: ${tela},
sinal: ${sinal}
    ''';
  }
}
