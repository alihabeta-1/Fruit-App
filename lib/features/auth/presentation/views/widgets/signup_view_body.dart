import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/constants.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_button.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() =>
      _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>();

  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled;
  late String email, password, userName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: 'الاسم كامل',
                hintStyle: TextStyles.cairoBold13.copyWith(
                  color: Color(0xff949D9E),
                ),
                keyboardType: TextInputType.name,
                suffixIcon: null,
              ),
              SizedBox(height: 16),
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
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignupCubit>().signup(
                      email,
                      password,
                      userName,
                    );
                  } else {
                    setState(() {
                      autovalidateMode =
                          AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              SizedBox(height: 26),

              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
