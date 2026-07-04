import 'package:flutter/material.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'OnBoardingView';

  @override
  State<OnBoardingView> createState() =>
      _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingViewBody());
  }
}
