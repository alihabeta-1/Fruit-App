import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/core/widgets/custom_app_bar.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/singup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = 'SignupView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupCubit>(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(
          title: 'حساب جديد',
          context: context,
        ),
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
