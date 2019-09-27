import 'package:alcoolougasolina/android/widgets/calculate-form.widget.dart';
import 'package:alcoolougasolina/shared/logo.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  var _alcoolCtrl = new MoneyMaskedTextController();
  var _gasCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF0544F),
      child: ListView(
        children: <Widget>[
          Container(
            child: Logo(),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
