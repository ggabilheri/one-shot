import 'package:qlevar_router/qlevar_router.dart';
import 'package:oneshot_flutter/src/ui/pages/home/home_page.dart';

class AppRoutes {
  static final routes = [
    QRoute(path: '/', builder: () => const HomePage()),
  ];
}
