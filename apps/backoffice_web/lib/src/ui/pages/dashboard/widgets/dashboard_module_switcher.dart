import 'package:flutter/material.dart';
import 'package:backoffice_web/src/domain/models/enums/dashboard_page_type.dart';
import 'package:backoffice_web/src/ui/pages/dashboard/summary/dashboard_summary_page.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_page.dart';
import 'package:backoffice_web/src/ui/pages/users/users_page.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class DashboardModuleSwitcher extends StatelessWidget {
  final DashboardPageType currentPage;

  const DashboardModuleSwitcher({
    super.key,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    switch (currentPage) {
      case DashboardPageType.summary:
        return const DashboardSummaryPage();
      case DashboardPageType.clubs:
        return const ClubsPage();
      case DashboardPageType.users:
        return const UsersPage();
      case DashboardPageType.stock:
        return Center(child: Text('MÓDULO DE ESTOQUE EM BREVE', style: DSTokens.body));
      case DashboardPageType.serviceOrders:
        return Center(child: Text('MÓDULO DE ORDENS DE SERVIÇO EM BREVE', style: DSTokens.body));
      case DashboardPageType.plans:
        return Center(child: Text('MÓDULO DE PLANOS EM BREVE', style: DSTokens.body));
      default:
        return const DashboardSummaryPage();
    }
  }
}
