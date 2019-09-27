import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc_calculator/shared/logo.widget.dart';

class HomePage extends StatelessWidget {
  Function func;
  var _formKey = GlobalKey<FormState>();
  var _peso = new MoneyMaskedTextController();
  var _altura = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Container(
            child: Logo(),
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _peso,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Peso",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _altura,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Altura",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Calcular",
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor),
                      ),
                      onPressed: func,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Function calculateIMC() {
    double peso =
        double.parse(_alcoolCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
  }
}
