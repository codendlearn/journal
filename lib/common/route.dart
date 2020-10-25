import 'package:flutter/material.dart';
import 'package:journal/pages/homepage.dart';

class AppRoutes {
  static const home = '/';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
            builder: (_) => HomePage(title: "Hello"),
            settings: settings,
            fullscreenDialog: true,
            maintainState: true);
      default:
        return null;
    }
  }
}
