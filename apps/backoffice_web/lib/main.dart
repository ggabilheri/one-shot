import 'package:oneshot_client/oneshot_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:backoffice_web/src/injections/viewmodel_injections.dart';
import 'package:backoffice_web/src/injections/services_injections.dart';
import 'package:backoffice_web/src/injections/repositories_injections.dart';
import 'package:backoffice_web/src/routes/app_routes.dart';

// ignore: avoid_global_state
late final Client client;
// ignore: avoid_global_state
late final SessionManager sessionManager;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Serverpod Client Setup
  const serverUrlFromEnv = String.fromEnvironment('SERVER_URL');
  final serverUrl = serverUrlFromEnv.isEmpty
      ? 'http://192.168.30.190:8080/'
      : serverUrlFromEnv;

  client = Client(
    serverUrl,
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(caller: client.modules.auth);
  await sessionManager.initialize();

  // DI Setup
  setupRepositoryInjections();
  setupServiceInjections();
  setupViewModelInjections();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'OneShot BackOffice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121416),
        primaryColor: const Color(0xFFD3C6A3),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFD3C6A3),
          secondary: Color(0xFFC5C9B3),
          surface: Color(0xFF1A1C1E), // Diferenciado do background
          error: Color(0xFFFFB4AB),
        ),
        dividerTheme: const DividerThemeData(
          color: Color(0xFF282A2C),
          thickness: 1,
          space: 1,
        ),
        useMaterial3: true,
      ),
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppRoutes.routes, initPath: '/login'),
    );
  }
}
