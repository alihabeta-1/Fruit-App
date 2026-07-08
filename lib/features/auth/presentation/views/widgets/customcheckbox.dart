import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/utils/app_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked
              ? AppColors.primaryColor
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isChecked
                  ? Colors.transparent
                  : Color(0xffDDDFDF),
              width: 1.50,
            ),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(1.5),
                child: SvgPicture.asset(
                  Assets.resourceCheckedIcon,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
