import 'package:flutter/material.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_button.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
              hintText: 'الاسم كامل',
              hintStyle: TextStyles.cairoBold13.copyWith(
                color: Color(0xff949D9E),
              ),
              keyboardType: TextInputType.name,
              suffixIcon: null,
            ),
            SizedBox(height: 16),
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
            TermsAndConditions(),
            SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
            ),
            SizedBox(height: 26),

            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
