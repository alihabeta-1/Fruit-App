import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
}
