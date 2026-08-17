import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/exeptions.dart';
import 'package:fruithub/core/errors/failures.dart';
import 'package:fruithub/core/services/firebase_auth_service.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';
import 'package:fruithub/features/auth/domain/entities/user_model.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, UserEntity>>
  createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService
          .createUserWithEmailAndPassword(email, password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        'AuthRepoImplException in createUserWithEmailAndPassword : ${e.toString()}',
      );
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع أثناء إنشاء الحساب. يرجى المحاولة مرة أخرى.',
        ),
      );
    }
  }
}
