import 'package:flutter/cupertino.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class IosInput extends StatelessWidget {
  var ctrl = new MoneyMaskedTextController();
  var text = "Text";

  IosInput({
    @required this.ctrl,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField();
  }
}
