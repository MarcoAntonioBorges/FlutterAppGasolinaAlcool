import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  @observable
  Color color = Colors.deepPurple;

  @observable
  var gasCtrl = MoneyMaskedTextController();

  @observable
  var allCtrl = MoneyMaskedTextController();

  @observable
  var busy = false;

  @observable
  var completed = false;

  @observable
  var resultText = "Compensa utilizar álcool";

  @computed
  String get resultadoFinal =>
      '${resultText.toString()} \n Gasolina: ${gasCtrl.text}, Alcool: ${allCtrl.text}';

  @action
  Future calculate() {
    double alc =
        double.parse(allCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;

    double res = alc / gas;

    color = Colors.purple;
    busy = true;
    completed = false;

    return Future.delayed(const Duration(seconds: 3), () {
      if (res >= 0.7) {
        resultText = "Compensa utilizar Gasolina!";
      } else {
        resultText = "Compensa utilizar Álcool!";
      }

      busy = false;
      completed = true;
    });
  }

  @action
  reset() {
    allCtrl = MoneyMaskedTextController();
    gasCtrl = MoneyMaskedTextController();
    completed = false;
    busy = false;
    color = Colors.deepPurple;
  }
}
