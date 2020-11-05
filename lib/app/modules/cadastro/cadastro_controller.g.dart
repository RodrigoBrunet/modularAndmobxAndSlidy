// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadastroController = BindInject(
  (i) => CadastroController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$dadosClienteAtom = Atom(name: '_CadastroControllerBase.dadosCliente');

  @override
  DadosCliente get dadosCliente {
    _$dadosClienteAtom.reportRead();
    return super.dadosCliente;
  }

  @override
  set dadosCliente(DadosCliente value) {
    _$dadosClienteAtom.reportWrite(value, super.dadosCliente, () {
      super.dadosCliente = value;
    });
  }

  final _$nomeInformadoAtom =
      Atom(name: '_CadastroControllerBase.nomeInformado');

  @override
  bool get nomeInformado {
    _$nomeInformadoAtom.reportRead();
    return super.nomeInformado;
  }

  @override
  set nomeInformado(bool value) {
    _$nomeInformadoAtom.reportWrite(value, super.nomeInformado, () {
      super.nomeInformado = value;
    });
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  void setDadosCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setDadosCliente');
    try {
      return super.setDadosCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNomeCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setNomeCliente');
    try {
      return super.setNomeCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTelefoneCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setTelefoneCliente');
    try {
      return super.setTelefoneCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmailCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEmailCliente');
    try {
      return super.setEmailCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDataNascimentoCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setDataNascimentoCliente');
    try {
      return super.setDataNascimentoCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmailTelefoneCliente(String telefone, String email) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setEmailTelefoneCliente');
    try {
      return super.setEmailTelefoneCliente(telefone, email);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCpfCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setCpfCliente');
    try {
      return super.setCpfCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNomeMaeCliente(dynamic value) {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.setNomeMaeCliente');
    try {
      return super.setNomeMaeCliente(value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dadosCliente: ${dadosCliente},
nomeInformado: ${nomeInformado}
    ''';
  }
}
