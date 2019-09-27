import 'dart:io' show Platform;
import 'package:alcoolougasolina/android/android.app.dart';
import 'package:alcoolougasolina/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Platform.isAndroid ? AndroidApp() : IosApp(),
    );
