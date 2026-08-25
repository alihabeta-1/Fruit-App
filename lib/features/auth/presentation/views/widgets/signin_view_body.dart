import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/utils/app_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_button.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/core/widgets/or_divider.dart';
import 'package:fruithub/core/widgets/password_field.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/signin_cubit.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/social_signin_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;
  @override
  State<SigninViewBody> createState() =>
      _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>();
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled;
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                hintStyle: TextStyles.cairoBold13.copyWith(
                  color: Color(0xff949D9E),
                ),
                keyboardType: TextInputType.emailAddress,
                suffixIcon: null,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                    if (email.isNotEmpty &&
                        password.isNotEmpty) {
                      context.read<SigninCubit>().signin(
                        email,
                        password,
                      );
                    }
                  } else {
                    setState(() {
                      autovalidateMode =
                          AutovalidateMode.always;
                    });
                  }
                },
                text: widget.isLoading
                    ? 'جاري تسجيل الدخول...'
                    : 'تسجيل دخول',
              ),
              SizedBox(height: 33),
              DontHaveAnAccountWidget(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialSigninButton(
                title: 'تسجيل بواسطة جوجل',
                image: Assets.resourceGoogleIcon,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialSigninButton(
                title: 'تسجيل بواسطة أبل',
                image: Assets.resourceAppleIcon,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialSigninButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.resourceFacebookIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
