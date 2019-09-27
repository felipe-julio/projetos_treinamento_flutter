import 'package:alcoolougasolina/shared/button.widget.dart';
import 'package:alcoolougasolina/shared/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CalculateForm extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var alcoolCtrl = new MoneyMaskedTextController();
  var gasCtrl = new MoneyMaskedTextController();
  Function func;

  CalculateForm({
    @required this.formKey,
    @required this.alcoolCtrl,
    @required this.gasCtrl,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Input(
            ctrl: alcoolCtrl,
            text: "alcool",
          ),
          SizedBox(
            height: 20,
          ),
          Input(
            ctrl: gasCtrl,
            text: "Gasolina",
          ),
          SizedBox(
            height: 20,
          ),
          Button(
            text: "Calcular",
            func: func,
          )
        ],
      ),
    );
  }
}
