import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class SocialSigninButton extends StatelessWidget {
  const SocialSigninButton({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
  });

  final String title;
  final String image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xffC9CECF),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: ListTile(
        visualDensity: VisualDensity(
          vertical: VisualDensity.minimumDensity,
        ),
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.cairoSemiBold16.copyWith(
            color: const Color(0xff0C0D0D),
          ),
        ),
      ),
    );
  }
}
