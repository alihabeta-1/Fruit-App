import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/widgets/custom_app_bar.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(getIt<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(
          title: 'تسجيل دخول',
          context: context,
        ),
        body: const LoginViewBody(),
      ),
    );
  }
}
