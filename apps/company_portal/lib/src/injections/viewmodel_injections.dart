import 'package:company_portal/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:company_portal/src/ui/pages/dashboard/summary/dashboard_summary_viewmodel.dart';
import 'package:company_portal/src/ui/pages/finance/bank_accounts/bank_accounts_viewmodel.dart';
import 'package:company_portal/src/ui/pages/finance/entries/financial_entries_viewmodel.dart';
import 'package:company_portal/src/ui/pages/login/login_viewmodel.dart';
import 'package:company_portal/src/ui/pages/register/register_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:company_portal/src/domain/repositories/auth_repository.dart';
import 'package:company_portal/src/domain/repositories/bank_account_repository.dart';
import 'package:company_portal/src/domain/repositories/financial_entry_repository.dart';
import 'package:company_portal/src/domain/repositories/brasil_api_repository.dart';

void setupViewModelInjections() {
  final getIt = GetIt.instance;
  getIt.registerFactory<ILoginViewModel>(() => LoginViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardViewModel>(() => DashboardViewModel());
  getIt.registerFactory<IRegisterViewModel>(() => RegisterViewModel(getIt<IAuthRepository>()));
  getIt.registerFactory<IDashboardSummaryViewModel>(() => DashboardSummaryViewModel());
  getIt.registerFactory<IBankAccountsViewmodel>(() => BankAccountsViewmodel(getIt<IBankAccountRepository>(), getIt<IBrasilApiRepository>()));
  getIt.registerFactory<IFinancialEntriesViewmodel>(() => FinancialEntriesViewmodel(getIt<IFinancialEntryRepository>(), getIt<IBankAccountRepository>()));
}
