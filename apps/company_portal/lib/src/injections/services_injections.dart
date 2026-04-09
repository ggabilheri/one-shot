import 'package:get_it/get_it.dart';
import 'package:company_portal/src/domain/services/company_session.dart';

void setupServiceInjections() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<ICompanySession>(() => CompanySession());
}
