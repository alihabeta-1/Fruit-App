import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/signin_cubit.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'SigninView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninCubit>(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: const SigninViewBodyBlocConsumer(),
    );
  }
}
