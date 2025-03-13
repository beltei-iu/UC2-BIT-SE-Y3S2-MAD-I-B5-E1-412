import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/splash_screen.dart';

void main() {
  final splashScreen = SplashScreen();

  // root
  final app = MaterialApp(
    theme: ThemeData(primaryColor: Colors.red, useMaterial3: false),

    // option 1
    //home: splashScreen,

    // option 2
    initialRoute: AppRoute.splashScreen,
    onGenerateRoute: AppRoute.generateRoute,
    navigatorKey: AppRoute.key,

    // option 2
    // routes: {
    //   '/': (context) => SplashScreen(),
    //   '/mainScreen': (context) => MainScreen()
    // },
  );

  // run
  runApp(app);
}
