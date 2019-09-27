import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // var text = TextInputType.text;

  // Button({@required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 60,
        right: 60,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
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
          "Login",
          style: TextStyle(
            color: Colors.red[600],
            fontSize: 20,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
