import 'package:company_portal/src/domain/services/company_session.dart';
import 'package:company_portal/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:company_portal/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'package:company_portal/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:company_portal/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:company_portal/src/ui/pages/login/login_viewmodel.dart';
import 'package:company_portal/src/ui/pages/register/register_viewmodel.dart';
import 'package:company_portal/src/ui/pages/subscriptions/subscription_plans_viewmodel.dart';
import 'package:company_portal/src/domain/repositories/user_repository.dart';
import 'package:company_portal/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:company_portal/src/domain/repositories/company_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:company_portal/src/domain/repositories/auth_repository.dart';
import 'package:company_portal/src/domain/repositories/bank_account_repository.dart';
import 'package:company_portal/src/domain/repositories/financial_entry_repository.dart';
import 'package:company_portal/src/domain/repositories/brasil_api_repository.dart';
import 'package:company_portal/src/domain/repositories/subscription_plan_repository.dart';

void setupViewModelInjections() {
  final getIt = GetIt.instance;
  getIt.registerFactory<ILoginViewModel>(
    () => LoginViewModel(getIt<IAuthRepository>()),
  );
  getIt.registerFactory<IDashboardViewModel>(
    () => DashboardViewModel(getIt<ICompanySession>()),
  );
  getIt.registerFactory<IRegisterViewModel>(
    () => RegisterViewModel(getIt<IAuthRepository>()),
  );
  getIt.registerFactory<IDashboardSummaryViewModel>(
    () => DashboardSummaryViewModel(),
  );
  getIt.registerFactory<IBankAccountsViewmodel>(
    () => BankAccountsViewmodel(
      getIt<IBankAccountRepository>(),
      getIt<IBrasilApiRepository>(),
      getIt<ICompanySession>(),
    ),
  );
  getIt.registerFactory<IFinancialEntriesViewmodel>(
    () => FinancialEntriesViewmodel(
      getIt<IFinancialEntryRepository>(),
      getIt<IBankAccountRepository>(),
      getIt<ICompanySession>(),
    ),
  );
  getIt.registerFactory<ISubscriptionPlansViewModel>(
    () => SubscriptionPlansViewModel(
      getIt<ISubscriptionPlanRepository>(),
      getIt<ICompanySession>(),
    ),
  );
  getIt.registerFactory<ICompaniesViewmodel>(
    () => CompaniesViewmodel(
      getIt<ICompanyRepository>(),
      getIt<IUserRepository>(),
      getIt<ICompanySession>(),
    ),
  );
}
