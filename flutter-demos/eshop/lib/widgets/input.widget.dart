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
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.white.withOpacity(0.5)),
        validator: (value) {
          if (value.isEmpty) {
            return 'o ' + labelText + 'é inválido';
          }
          return null;
        },
        onSaved: (value) {
          print(value);
        },
      ),
    );
  }
}
