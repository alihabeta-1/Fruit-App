import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/failures.dart';
import 'package:fruithub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>>
  createUserWithEmailAndPassword(
    String email,
    String uId,
    String name,
  );

  Future<Either<Failure, UserEntity>> signin(
    String email,
    String password,
  );
}
