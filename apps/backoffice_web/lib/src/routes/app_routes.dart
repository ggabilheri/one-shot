import 'package:backoffice_web/src/ui/pages/login/login_page.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/dashboard_page.dart';
import 'package:backoffice_web/src/ui/pages/register/register_page.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_page.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static const String login = 'login';
  static const String dashboard = 'dashboard';
  static const String register = 'register';
  static const String dashboardSummary = 'summary';

  static List<QRoute> get routes => [
    QRoute(path: '/login', name: login, builder: () => const LoginPage()),
    QRoute(
      path: '/register',
      name: register,
      builder: () => const RegisterPage(),
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
