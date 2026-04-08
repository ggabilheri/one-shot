import 'package:backoffice_web/src/domain/repositories/bank_account_repository.dart';
import 'package:backoffice_web/src/domain/repositories/financial_entry_repository.dart';
import 'package:backoffice_web/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/brasil_api_repository.dart';
import 'package:backoffice_web/src/ui/pages/subscriptions/subscription_plans_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/domain/repositories/subscription_plan_repository.dart';
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
import 'package:backoffice_web/src/domain/repositories/product_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';
import 'package:backoffice_web/src/ui/pages/products/product_groups_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';

void setupViewModelInjections() {
  final getIt = GetIt.instance;
  getIt.registerFactory<ILoginViewModel>(() => LoginViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardViewModel>(() => DashboardViewModel());
  getIt.registerFactory<IRegisterViewModel>(() => RegisterViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardSummaryViewModel>(() => DashboardSummaryViewModel());
  getIt.registerFactory<IClubsViewmodel>(() => ClubsViewmodel(getIt<IClubRepository>(), getIt<IUserRepository>()));
  getIt.registerFactory<IUsersViewmodel>(() => UsersViewmodel(getIt<IUserRepository>(), getIt<ISecurityRoleRepository>()));
  getIt.registerFactory<IRolesViewmodel>(() => RolesViewmodel(getIt<ISecurityRoleRepository>()));
  getIt.registerFactory<IProductsViewmodel>(() => ProductsViewmodel(getIt<IProductRepository>(), getIt<IProductGroupRepository>()));
  getIt.registerFactory<IProductGroupsViewmodel>(() => ProductGroupsViewmodel(getIt<IProductGroupRepository>(), getIt<IProductRepository>()));
  getIt.registerFactory<ISubscriptionPlansViewModel>(() => SubscriptionPlansViewModel(getIt<ISubscriptionPlanRepository>()));
  getIt.registerFactory<IBankAccountsViewmodel>(() => BankAccountsViewmodel(getIt<IBankAccountRepository>(), getIt<IBrasilApiRepository>()));
  getIt.registerFactory<IFinancialEntriesViewmodel>(() => FinancialEntriesViewmodel(getIt<IFinancialEntryRepository>(), getIt<IBankAccountRepository>()));
}
