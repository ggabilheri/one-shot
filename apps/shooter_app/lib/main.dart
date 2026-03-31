import 'package:oneshot_client/oneshot_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:oneshot_flutter/src/injections/viewmodel_injections.dart';
import 'package:oneshot_flutter/src/injections/services_injections.dart';
import 'package:oneshot_flutter/src/injections/repositories_injections.dart';
import 'package:oneshot_flutter/src/routes/app_routes.dart';

// ignore: avoid_global_state
late final Client client;
// ignore: avoid_global_state
late final SessionManager sessionManager;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Serverpod Client Setup
  const serverUrlFromEnv = String.fromEnvironment('SERVER_URL');
  final serverUrl =
      serverUrlFromEnv.isEmpty ? 'http://localhost:8080/' : serverUrlFromEnv;

  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
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
      title: 'OneShot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppRoutes.routes),
    );
  }
}
