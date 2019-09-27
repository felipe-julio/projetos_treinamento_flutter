import 'package:flutter/cupertino.dart';

class IosButton extends StatelessWidget {
  Function func;
  var text = "Text";

  IosButton({
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: Text(text),
        onPressed: func,
      ),
    );
  }
}
