import 'package:flutter/material.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/services/shared_preferences_singleton.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/features/auth/presentation/views/signin_view.dart';
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

  void excuteNavigation() {
    bool? isOnBoardingViewShown = Prefs.getBool(
      kIsOnBoardingViewShownKey,
    );

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      if (isOnBoardingViewShown == true) {
        Navigator.of(
          context,
        ).pushReplacementNamed(SigninView.routeName);
      } else {
        Navigator.of(
          context,
        ).pushReplacementNamed(OnBoardingView.routeName);
      }
    });
  }
}
