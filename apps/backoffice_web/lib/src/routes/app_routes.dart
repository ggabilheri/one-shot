import 'package:backoffice_web/src/ui/pages/dashboard/dashboard_page.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_page.dart';
import 'package:backoffice_web/src/ui/pages/finance/reconciliation/bank_reconciliation_page.dart';
import 'package:backoffice_web/src/ui/pages/login/login_page.dart';
import 'package:backoffice_web/src/ui/pages/register/register_page.dart';
import 'package:backoffice_web/src/ui/widgets/admin_layout.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static const String login = 'login';
  static const String dashboard = 'dashboard';
  static const String register = 'register';
  static const String dashboardSummary = 'summary';
  static const String bankReconciliation = 'bank-reconciliation';

  static List<QRoute> get routes => [
        QRoute(path: '/login', name: login, builder: () => const LoginPage()),
        QRoute(
          path: '/register',
          name: register,
          builder: () => const RegisterPage(),
        ),
        QRoute(
          path: '/finance/bank-accounts/:id/reconciliation',
          name: bankReconciliation,
          builder: () {
            final account = QR.params['account']?.value as BankAccount?;
            if (account == null) {
              return const DashboardPage();
            }
            return AdminLayout(
              child: BankReconciliationPage(account: account),
            );
          },
        ),
        QRoute(
          path: '/dashboard',
          name: dashboard,
          builder: () => const DashboardPage(),
          children: [
            QRoute(
              path: '/',
              name: dashboardSummary,
              builder: () => const DashboardSummaryPage(),
            ),
          ],
        ),
      ];
}
