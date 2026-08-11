import 'package:bloc/bloc.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/auth/presentation/cubits/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> signup(
    String email,
    String password,
    String name,
  ) async {
    emit(SignupLoading());
    final result = await authRepo
        .createUserWithEmailAndPassword(
          email,
          password,
          name,
        );
    result.fold(
      (failure) =>
          emit(SignupFailure(massage: failure.message)),
      (userEntity) =>
          emit(SignupSuccess(userEntity: userEntity)),
    );
  }
}
