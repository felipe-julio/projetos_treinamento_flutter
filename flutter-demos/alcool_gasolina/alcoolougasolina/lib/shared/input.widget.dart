import 'dart:io' show Platform;
import 'package:alcoolougasolina/android/widgets/android-input.widget.dart';
import 'package:alcoolougasolina/ios/widgets/ios-input.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var ctrl = new MoneyMaskedTextController();
  var text = "Text";

  Input({
    @required this.ctrl,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AndroidInput(
            ctrl: ctrl,
            text: text,
          )
        : IosInput(
            ctrl: ctrl,
            text: text,
          );
  }
}
