import 'package:get_it/get_it.dart';
import 'package:oneshot_flutter/src/core/repository/accessory_repository.dart';
import 'package:oneshot_flutter/src/core/repository/document_repository.dart';
import 'package:oneshot_flutter/src/core/repository/firearm_repository.dart';
import 'package:oneshot_flutter/src/core/repository/user_repository.dart';

final getIt = GetIt.instance;

void setupRepositoryInjections() {
  getIt.registerLazySingleton<IUserRepository>(() => UserRepository());
  getIt.registerLazySingleton<IFirearmRepository>(() => FirearmRepository());
  getIt.registerLazySingleton<IAccessoryRepository>(() => AccessoryRepository());
  getIt.registerLazySingleton<IDocumentRepository>(() => DocumentRepository());
}
