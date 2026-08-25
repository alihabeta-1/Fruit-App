import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/auth/presentation/cubits/login_cubit/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  final AuthRepo authRepo;

  SigninCubit(this.authRepo) : super(SigninInitial());

  Future<void> signin(String email, String password) async {
    emit(SigninLoading());

    final result = await authRepo.signin(email, password);

    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (user) {
        emit(SigninSuccess(userEntity: user));
      },
    );
  }
}
