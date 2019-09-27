import 'package:alcoolougasolina/ios/pages/home.page.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Álcool ou Gasolina",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
