import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // var text = TextInputType.text;
  var formKey = GlobalKey<FormState>();
  // Button({@required this.labelText});

  Button({@required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 60,
        right: 60,
      ),
      decoration: BoxDecoration(
          color: Color(0xFF0096FF),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              offset: new Offset(-2.0, 5.0),
              blurRadius: 7,
            )
          ]),
      child: FlatButton(
        child: Text(
          "Login Seguro",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          if (formKey.currentState.valida te()) {
            formKey.currentState.save();
          }
        },
      ),
    );
  }
}
