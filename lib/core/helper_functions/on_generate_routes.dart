import 'package:flutter/material.dart';
import 'package:fruithub/features/Splash/presentation/views/splash_view.dart';
import 'package:fruithub/features/auth/presentation/views/signin_view.dart';
import 'package:fruithub/features/auth/presentation/views/signup_view.dart';
import 'package:fruithub/features/onboarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'SplashView':
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case 'SigninView':
      return MaterialPageRoute(
        builder: (context) => const SigninView(),
      );

    case 'OnBoardingView':
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );

    case 'SignupView':
      return MaterialPageRoute(
        builder: (context) => const SignupView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
