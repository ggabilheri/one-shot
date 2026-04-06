import 'package:backoffice_web/src/domain/repositories/subscription_plan_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';
import 'package:backoffice_web/src/domain/repositories/auth_repository.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';
import 'package:backoffice_web/src/domain/repositories/security_role_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';

void setupRepositoryInjections() {
  final sl = GetIt.instance;
  sl.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  sl.registerLazySingleton<IClubRepository>(() => ClubRepository());
  sl.registerLazySingleton<IUserRepository>(() => UserRepository());
  sl.registerLazySingleton<ISecurityRoleRepository>(() => SecurityRoleRepository());
  sl.registerLazySingleton<IProductRepository>(() => ProductRepository());
  sl.registerLazySingleton<IProductGroupRepository>(() => ProductGroupRepository());
  sl.registerLazySingleton<ISubscriptionPlanRepository>(() => SubscriptionPlanRepository());
}
