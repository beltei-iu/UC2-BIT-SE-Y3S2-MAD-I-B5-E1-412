import 'package:flutter/material.dart';
import 'package:mad/screens/splash_screen.dart';

void main() {
  final splashScreen = SplashScreen();

  // root
  final app = MaterialApp(
    theme: ThemeData(primaryColor: Colors.red, useMaterial3: false),
    home: splashScreen,
  );

  // run
  runApp(app);
}
