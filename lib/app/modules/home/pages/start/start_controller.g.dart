// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartControllerBase, Store {
  final _$saldoAtom = Atom(name: '_StartControllerBase.saldo');

  @override
  double get saldo {
    _$saldoAtom.reportRead();
    return super.saldo;
  }

  @override
  set saldo(double value) {
    _$saldoAtom.reportWrite(value, super.saldo, () {
      super.saldo = value;
    });
  }

  final _$_StartControllerBaseActionController =
      ActionController(name: '_StartControllerBase');

  @override
  String getInvest() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.getInvest');
    try {
      return super.getInvest();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getDebit() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.getDebit');
    try {
      return super.getDebit();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getSaldo() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.getSaldo');
    try {
      return super.getSaldo();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
saldo: ${saldo}
    ''';
  }
}
