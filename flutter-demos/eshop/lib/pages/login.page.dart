import 'package:eshop/widgets/button.widget.dart';
import 'package:eshop/widgets/input-container.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5],
            colors: [
              Color(0xFF1c618c),
              Color(0xFF2A1249),
            ],
          ),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(60),
                child: Image.network('http://placehold.it/400x100'),
              ),
              InputContainer(
                type: "email",
              ),
              SizedBox(
                height: 10,
              ),
              InputContainer(
                type: "password",
              ),
              SizedBox(
                height: 40,
              ),
              Button(formKey: _formKey),
            ],
          ),
        ),
      ),
    );
  }
}
