import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_colors.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/customcheckbox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() =>
      _TermsAndConditionsState();
}

class _TermsAndConditionsState
    extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          isChecked: isTermsAccepted,
          onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
            });

            widget.onChanged(value);
          },
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'من خلال إنشاء حساب ، فإنك توافق على',
                  style: TextStyles.cairoSemiBold13
                      .copyWith(color: Color(0xff949D9E)),
                ),
                TextSpan(text: ' '),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.cairoSemiBold13
                      .copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
