import 'package:flutter/material.dart';
import 'package:fruithub/features/Splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'SplashView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: const SplashViewBody()),
    );
  }
}
