import 'package:flutter/widgets.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0x4169E1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Image.asset('assets/strong.png'),
    );
  }
}
