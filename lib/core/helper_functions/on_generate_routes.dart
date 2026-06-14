import 'package:flutter/material.dart';
import 'package:fruithub/features/Splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'SplashView':
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
