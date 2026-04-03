import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/ui/pages/login/login_viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/auth_repository.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';
import 'package:backoffice_web/src/ui/pages/register/register_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/users/users_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/roles/roles_viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/security_role_repository.dart';

void setupViewModelInjections() {
  final getIt = GetIt.instance;
  getIt.registerFactory<ILoginViewModel>(() => LoginViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardViewModel>(() => DashboardViewModel());
  getIt.registerFactory<IRegisterViewModel>(() => RegisterViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardSummaryViewModel>(() => DashboardSummaryViewModel());
  getIt.registerFactory<IClubsViewmodel>(() => ClubsViewmodel(getIt<IClubRepository>()));
  getIt.registerFactory<IUsersViewmodel>(() => UsersViewmodel(getIt<IUserRepository>(), getIt<ISecurityRoleRepository>()));
  getIt.registerFactory<IRolesViewmodel>(() => RolesViewmodel(getIt<ISecurityRoleRepository>()));
}
