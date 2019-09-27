import 'package:eshop/widgets/input.widget.dart';
import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  var type = "email";
  InputContainer({@required this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 60,
        right: 60,
      ),
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            type == "email" ? Icons.email : Icons.lock,
          ),
          SizedBox(
            width: 10,
          ),
          type == "email"
              ? Input(
                  labelText: "E-mail",
                  inputType: TextInputType.emailAddress,
                  // obscureText: false,
                )
              : Input(
                  labelText: "Senha",
                  inputType: TextInputType.text,
                  //obscureText: true,
                ),
        ],
      ),
    );
  }
}
