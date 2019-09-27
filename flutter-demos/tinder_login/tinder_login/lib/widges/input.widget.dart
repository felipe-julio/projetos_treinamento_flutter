import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  var inputType = TextInputType.text;
  var labelText = "Input";
  var obscureText = false;

  Input({@required this.inputType, @required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 60,
      child: TextFormField(
        keyboardType: inputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        style: TextStyle(color: Colors.white.withOpacity(0.5)),
      ),
    );
  }
}
