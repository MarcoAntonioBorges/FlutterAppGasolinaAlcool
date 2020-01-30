import 'package:app_flutter_gasolina_alcool/controller/controller.dart';
import 'package:app_flutter_gasolina_alcool/widgets/logo.widget.dart';
import 'package:app_flutter_gasolina_alcool/widgets/submit-form.widget.dart';
import 'package:app_flutter_gasolina_alcool/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Observer(
        builder: (_) => AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          color: controller.color,
          child: ListView(
            children: <Widget>[
              Logo(),
              controller.completed
                  ? Success(
                      result: controller.resultadoFinal,
                      reset: controller.reset,
                    )
                  : SubmitForm(
                      alcCtrl: controller.allCtrl,
                      gasCtrl: controller.gasCtrl,
                      busy: controller.busy,
                      submitFunc: controller.calculate,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
