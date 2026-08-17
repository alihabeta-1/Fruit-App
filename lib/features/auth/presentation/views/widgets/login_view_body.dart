import 'package:flutter/material.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/utils/app_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_button.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/core/widgets/or_divider.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() =>
      _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>();
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled;
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'البريد الإلكتروني',
                  hintStyle: TextStyles.cairoBold13
                      .copyWith(color: Color(0xff949D9E)),
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: null,
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  hintText: 'كلمة المرور',
                  hintStyle: TextStyles.cairoBold13
                      .copyWith(color: Color(0xff949D9E)),
                  keyboardType:
                      TextInputType.visiblePassword,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xffC9CECF),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyles.cairoSemiBold13
                          .copyWith(
                            color:
                                AppColors.lightPrimaryColor,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 33),
                CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // Perform login logic here
                    } else {
                      setState(() {
                        autovalidateMode =
                            AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'تسجيل دخول',
                ),
                SizedBox(height: 33),
                DontHaveAnAccountWidget(),
                SizedBox(height: 33),
                OrDivider(),
                SizedBox(height: 16),
                SocialLoginButton(
                  title: 'تسجيل بواسطة جوجل',
                  image: Assets.resourceGoogleIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 16),
                SocialLoginButton(
                  title: 'تسجيل بواسطة أبل',
                  image: Assets.resourceAppleIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 16),
                SocialLoginButton(
                  title: 'تسجيل بواسطة فيسبوك',
                  image: Assets.resourceFacebookIcon,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
