import 'package:alcoolougasolina/android/widgets/calculate-form.widget.dart';
import 'package:alcoolougasolina/shared/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  var _alcoolCtrl = new MoneyMaskedTextController();
  var _gasCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Container(
            child: Logo(),
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CalculateForm(
              formKey: _formKey,
              alcoolCtrl: _alcoolCtrl,
              gasCtrl: _gasCtrl,
              func: calculate,
            ),
          ),
        ],
      ),
    );
  }

  Function calculate() {
    double alc =
        double.parse(_alcoolCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;

    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    double res = alc / gas;

    var message = "Melhor utilizar Gasolina!";
    if (res >= 0.7) {
      message = 'Melhor utilizar Gasolina!';
    } else {
      message = "Melhor utilizar Álcool!";
    }

    final snackBar = SnackBar(
      content: Text(message),
    );

    _scaffoldKey.currentState.showSnackBar(snackBar);
    return null;
  }
}
