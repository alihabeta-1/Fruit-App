import 'package:fruithub/core/services/firebase_auth_service.dart';
import 'package:fruithub/features/auth/data/repos/repo_impl.dart';
import 'package:fruithub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(getIt<FirebaseAuthService>()),
  );
}
