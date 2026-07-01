import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/features/onboarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() =>
      _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Assets.resourceImagesPlantOnboarding,
              ),
            ],
          ),
          SvgPicture.asset(
            Assets.resourceImagesLogoOnboarding,
          ),
          SvgPicture.asset(
            Assets.resourceImagesOnboardingBottom,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Future<void> excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    Navigator.pushReplacementNamed(
      context,
      OnBoardingView.routname,
    );
  }
}
