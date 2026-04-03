import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';
import 'package:backoffice_web/src/domain/repositories/auth_repository.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';

void setupRepositoryInjections() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<IClubRepository>(() => ClubRepository());
  getIt.registerLazySingleton<IUserRepository>(() => UserRepository());
}
