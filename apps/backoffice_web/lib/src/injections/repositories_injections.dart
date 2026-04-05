import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';
import 'package:backoffice_web/src/domain/repositories/auth_repository.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';
import 'package:backoffice_web/src/domain/repositories/security_role_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';

void setupRepositoryInjections() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<IClubRepository>(() => ClubRepository());
  getIt.registerLazySingleton<IUserRepository>(() => UserRepository());
  getIt.registerLazySingleton<ISecurityRoleRepository>(() => SecurityRoleRepository());
  getIt.registerLazySingleton<IProductRepository>(() => ProductRepository());
  getIt.registerLazySingleton<IProductGroupRepository>(() => ProductGroupRepository());
}
