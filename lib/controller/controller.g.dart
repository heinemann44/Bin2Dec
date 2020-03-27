// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  final _$decimalAtom = Atom(name: '_ControllerBase.decimal');

  @override
  String get decimal {
    _$decimalAtom.context.enforceReadPolicy(_$decimalAtom);
    _$decimalAtom.reportObserved();
    return super.decimal;
  }

  @override
  set decimal(String value) {
    _$decimalAtom.context.conditionallyRunInAction(() {
      super.decimal = value;
      _$decimalAtom.reportChanged();
    }, _$decimalAtom, name: '${_$decimalAtom.name}_set');
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  void convertNumber(String binary) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.convertNumber(binary);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
