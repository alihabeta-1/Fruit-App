import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custom_app_bar.dart';

import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = 'SignupView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: 'حساب جديد',
        context: context,
      ),
      body: SignupViewBody(),
    );
  }
}
