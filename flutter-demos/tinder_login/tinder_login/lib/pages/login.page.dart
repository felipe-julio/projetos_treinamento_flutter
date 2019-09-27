import 'package:flutter/material.dart';
import 'package:tinder_login/widges/button.widget.dart';
import 'package:tinder_login/widges/input-container.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.8],
            colors: [
              Color(0xFFFB7A66),
              Color(0xFFF94A63),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(60),
              child: Image.network(
                  'https://cdn2.iconfinder.com/data/icons/romance-14/64/application-matching-love-dating-128.png'),
            ),
            InputContainer(
              type: "email",
            ),
            SizedBox(
              height: 10,
            ),
            InputContainer(
              type: "senha",
            ),
            SizedBox(
              height: 20,
            ),
            Button(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Dont have an account? Sign Up Now',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
