import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/models/enums/dashboard_page_type.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/widgets/admin_sidebar_item.dart';
import 'package:backoffice_web/src/ui/widgets/admin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

class FakeDashboardViewModel extends Viewmodel
    implements IDashboardViewModel {
  @override
  bool get autoDispose => false;

  bool _isSidebarCollapsed = false;
  DashboardPageType _currentPage = DashboardPageType.summary;

  @override
  bool get isSidebarCollapsed => _isSidebarCollapsed;

  @override
  DashboardPageType get currentPage => _currentPage;

  @override
  void toggleSidebar() {
    _isSidebarCollapsed = !_isSidebarCollapsed;
    notifyListeners();
  }

  @override
  void changePage(DashboardPageType page) {
    _currentPage = page;
    notifyListeners();
  }
}

void main() {
  late FakeDashboardViewModel fakeVm;

  setUp(() async {
    await GetIt.instance.reset();
    fakeVm = FakeDashboardViewModel();
    GetIt.instance.registerSingleton<IDashboardViewModel>(fakeVm);
  });

  tearDown(() async {
    await GetIt.instance.reset();
  });

  testWidgets(
    'AdminLayout alterna módulos ao clicar nos itens do menu lateral',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedBuilder(
            animation: fakeVm,
            builder: (context, _) {
              return AdminLayout(
                child: Text('MODULO_ATIVO: ${fakeVm.currentPage.name}'),
              );
            },
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('MODULO_ATIVO: summary'), findsOneWidget);

      // Clicar em 'EMPRESAS' no menu lateral
      final empresasItem = find.widgetWithText(AdminSidebarItem, 'EMPRESAS');
      expect(empresasItem, findsOneWidget);
      await tester.tap(empresasItem);
      await tester.pumpAndSettle();

      expect(fakeVm.currentPage, equals(DashboardPageType.companies));
      expect(find.text('MODULO_ATIVO: companies'), findsOneWidget);

      // Clicar em 'USUÁRIOS' no menu lateral
      final usuariosItem = find.widgetWithText(AdminSidebarItem, 'USUÁRIOS');
      expect(usuariosItem, findsOneWidget);
      await tester.tap(usuariosItem);
      await tester.pumpAndSettle();

      expect(fakeVm.currentPage, equals(DashboardPageType.users));
      expect(find.text('MODULO_ATIVO: users'), findsOneWidget);
    },
  );

  testWidgets(
    'AdminLayout com child customizado renderiza o filho fornecido',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AdminLayout(
            child: Center(
              child: Text('CONTEÚDO CUSTOMIZADO'),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('CONTEÚDO CUSTOMIZADO'), findsOneWidget);
      expect(find.widgetWithText(AdminSidebarItem, 'RESUMO'), findsOneWidget);
    },
  );

  testWidgets(
    'AdminLayout preserva ViewModel e não falha após desmontar e remontar (autoDispose: false)',
    (tester) async {
      // 1. Monta DashboardPage
      await tester.pumpWidget(
        const MaterialApp(
          home: AdminLayout(child: Text('TELA 1')),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('TELA 1'), findsOneWidget);

      // 2. Desmonta montando outra tela qualquer
      await tester.pumpWidget(
        const MaterialApp(
          home: Text('OUTRA TELA'),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('OUTRA TELA'), findsOneWidget);

      // 3. Remonta AdminLayout - NÃO deve lançar erro de ViewModel disposed
      await tester.pumpWidget(
        const MaterialApp(
          home: AdminLayout(child: Text('TELA 1 REMONTADA')),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('TELA 1 REMONTADA'), findsOneWidget);
    },
  );
}
