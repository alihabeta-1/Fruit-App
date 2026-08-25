import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/widgets/custom_app_bar.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/signin_cubit.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/signin_state.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/custom_progress_hud.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/signin_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('تم تسجيل الدخول بنجاح'),
            ),
          );
        }
        if (state is SigninFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('حدث خطأ أثناء تسجيل الدخول'),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(
            title: 'تسجيل دخول',
            context: context,
          ),
          body: CustomProgressHud(
            isLoading: state is SigninLoading,
            child: SigninViewBody(
              isLoading: state is SigninLoading
                  ? true
                  : false,
            ),
          ),
        );
      },
    );
  }
}
