import 'package:qlevar_router/qlevar_router.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/src/ui/pages/home/home_page.dart';
import 'package:oneshot_flutter/src/ui/pages/profile/profile_page.dart';
import 'package:oneshot_flutter/src/ui/pages/firearms/firearm_list_page.dart';
import 'package:oneshot_flutter/src/ui/pages/firearms/firearm_form_page.dart';
import 'package:oneshot_flutter/src/ui/pages/accessories/accessory_list_page.dart';
import 'package:oneshot_flutter/src/ui/pages/accessories/accessory_form_page.dart';
import 'package:oneshot_flutter/src/ui/pages/documents/document_list_page.dart';
import 'package:oneshot_flutter/src/ui/pages/documents/document_form_page.dart';

class AppRoutes {
  static final routes = [
    QRoute(path: '/', builder: () => const HomePage()),
    QRoute(path: '/profile', builder: () => const ProfilePage()),

    // Armas
    QRoute(
      path: '/firearms/:userId',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        return FirearmListPage(userId: UuidValue(userIdStr.toString()));
      },
    ),
    QRoute(
      path: '/firearms/:userId/form',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        // Em vez de passar o objeto, o formulário pode recuperar do ViewModel se necessário
        // ou podemos passar o ID via query parameter
        return FirearmFormPage(
          userId: UuidValue(userIdStr.toString()),
        );
      },
    ),

    // Acessórios
    QRoute(
      path: '/accessories/:userId',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        return AccessoryListPage(userId: UuidValue(userIdStr.toString()));
      },
    ),
    QRoute(
      path: '/accessories/:userId/form',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        return AccessoryFormPage(
          userId: UuidValue(userIdStr.toString()),
        );
      },
    ),

    // Documentos
    QRoute(
      path: '/documents/:userId',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        return DocumentListPage(userId: UuidValue(userIdStr.toString()));
      },
    ),
    QRoute(
      path: '/documents/:userId/form',
      builder: () {
        final userIdStr = QR.params['userId']?.value;
        if (userIdStr == null) return const HomePage();
        return DocumentFormPage(
          userId: UuidValue(userIdStr.toString()),
        );
      },
    ),
  ];
}
