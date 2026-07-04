import 'package:flutter/material.dart';
import 'package:fruithub/features/Splash/presentation/views/splash_view.dart';
import 'package:fruithub/features/auth/presentation/views/login_view.dart';
import 'package:fruithub/features/onboarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'SplashView':
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case 'LoginView':
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

    case 'OnBoardingView':
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
