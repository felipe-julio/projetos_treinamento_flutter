import 'package:flutter/material.dart';

import 'input.widget.dart';

class InputContainer extends StatelessWidget {
  var type = "email";
  InputContainer({@required this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 50,
        right: 60,
      ),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border(
            top: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
            bottom: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
            right: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            ),
            left: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.2),
            )),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            type == "email" ? Icons.person : Icons.lock,
          ),
          SizedBox(
            width: 10,
          ),
          type == "email"
              ? Input(
                  labelText: "Username",
                  inputType: TextInputType.emailAddress,
                  // obscureText: false,
                )
              : Input(
                  labelText: "Password",
                  inputType: TextInputType.text,
                  //obscureText: true,
                ),
        ],
      ),
    );
  }
}
