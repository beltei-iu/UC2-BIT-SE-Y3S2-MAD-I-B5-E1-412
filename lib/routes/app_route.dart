import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/product_detail_screen.dart';
import 'package:mad/screens/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "";

  static const String mainScreen = "/mainScreen";

  static const String productDetailScreen = "/productDetailScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _buildRoute(SplashScreen(), settings);
      case mainScreen:
        return _buildRoute(MainScreen(), settings);
      case productDetailScreen:
        return _buildRoute(ProductDetailScreen(), settings);
      default:
        throw RouteException("Route not found");
    }
  }

  static Route<dynamic> _buildRoute(Widget newRoute, RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => newRoute,
    );
  }
}

class RouteException {
  String message;

  RouteException(this.message);
}
