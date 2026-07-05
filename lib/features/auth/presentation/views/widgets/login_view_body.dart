import 'package:flutter/material.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/utils/app_colors.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_button.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              hintStyle: TextStyles.cairoBold13.copyWith(
                color: Color(0xff949D9E),
              ),
              keyboardType: TextInputType.emailAddress,
              suffixIcon: null,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              hintStyle: TextStyles.cairoBold13.copyWith(
                color: Color(0xff949D9E),
              ),
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.cairoSemiBold13
                      .copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            SizedBox(height: 33),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لا تمتلك حساب؟',
                    style: TextStyles.cairoSemiBold16
                        .copyWith(color: Color(0xff949D9E)),
                  ),
                  TextSpan(
                    text: 'قم بإنشاء حساب ',
                    style: TextStyles.cairoSemiBold13
                        .copyWith(
                          color:
                              AppColors.lightPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
