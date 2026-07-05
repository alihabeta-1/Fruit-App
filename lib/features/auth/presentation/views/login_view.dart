import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custom_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: 'تسجيل دخول',
        context: context,
      ),
      body: const LoginViewBody(),
    );
  }
}
