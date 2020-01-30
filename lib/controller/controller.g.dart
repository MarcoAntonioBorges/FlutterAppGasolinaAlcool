// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  final _$colorAtom = Atom(name: '_ControllerBase.color');

  @override
  Color get color {
    _$colorAtom.context.enforceReadPolicy(_$colorAtom);
    _$colorAtom.reportObserved();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.context.conditionallyRunInAction(() {
      super.color = value;
      _$colorAtom.reportChanged();
    }, _$colorAtom, name: '${_$colorAtom.name}_set');
  }

  final _$gasCtrlAtom = Atom(name: '_ControllerBase.gasCtrl');

  @override
  MoneyMaskedTextController get gasCtrl {
    _$gasCtrlAtom.context.enforceReadPolicy(_$gasCtrlAtom);
    _$gasCtrlAtom.reportObserved();
    return super.gasCtrl;
  }

  @override
  set gasCtrl(MoneyMaskedTextController value) {
    _$gasCtrlAtom.context.conditionallyRunInAction(() {
      super.gasCtrl = value;
      _$gasCtrlAtom.reportChanged();
    }, _$gasCtrlAtom, name: '${_$gasCtrlAtom.name}_set');
  }

  final _$allCtrlAtom = Atom(name: '_ControllerBase.allCtrl');

  @override
  MoneyMaskedTextController get allCtrl {
    _$allCtrlAtom.context.enforceReadPolicy(_$allCtrlAtom);
    _$allCtrlAtom.reportObserved();
    return super.allCtrl;
  }

  @override
  set allCtrl(MoneyMaskedTextController value) {
    _$allCtrlAtom.context.conditionallyRunInAction(() {
      super.allCtrl = value;
      _$allCtrlAtom.reportChanged();
    }, _$allCtrlAtom, name: '${_$allCtrlAtom.name}_set');
  }

  final _$busyAtom = Atom(name: '_ControllerBase.busy');

  @override
  bool get busy {
    _$busyAtom.context.enforceReadPolicy(_$busyAtom);
    _$busyAtom.reportObserved();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.context.conditionallyRunInAction(() {
      super.busy = value;
      _$busyAtom.reportChanged();
    }, _$busyAtom, name: '${_$busyAtom.name}_set');
  }

  final _$completedAtom = Atom(name: '_ControllerBase.completed');

  @override
  bool get completed {
    _$completedAtom.context.enforceReadPolicy(_$completedAtom);
    _$completedAtom.reportObserved();
    return super.completed;
  }

  @override
  set completed(bool value) {
    _$completedAtom.context.conditionallyRunInAction(() {
      super.completed = value;
      _$completedAtom.reportChanged();
    }, _$completedAtom, name: '${_$completedAtom.name}_set');
  }

  final _$resultTextAtom = Atom(name: '_ControllerBase.resultText');

  @override
  String get resultText {
    _$resultTextAtom.context.enforceReadPolicy(_$resultTextAtom);
    _$resultTextAtom.reportObserved();
    return super.resultText;
  }

  @override
  set resultText(String value) {
    _$resultTextAtom.context.conditionallyRunInAction(() {
      super.resultText = value;
      _$resultTextAtom.reportChanged();
    }, _$resultTextAtom, name: '${_$resultTextAtom.name}_set');
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  Future<dynamic> calculate() {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.calculate();
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
