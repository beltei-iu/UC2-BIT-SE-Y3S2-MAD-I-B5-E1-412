import 'package:flutter/material.dart';

void main() {
  // Control
  final button = ElevatedButton(onPressed: () {}, child: Text("Click Me"));
  final logo = Image.asset("assets/images/logo.png");

  // Layout
  final center = Center(
    child: logo,
  );

  // Screen
  final screen = Scaffold(
    body: center,
  );

  // root
  final app = MaterialApp(
    home: screen,
  );

  // run
  runApp(app);
}
