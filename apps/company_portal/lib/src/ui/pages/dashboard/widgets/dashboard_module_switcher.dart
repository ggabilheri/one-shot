import 'package:company_portal/src/ui/pages/finance/bank_accounts/bank_accounts_page.dart';
import 'package:company_portal/src/ui/pages/finance/entries/payable_page.dart';
import 'package:company_portal/src/ui/pages/finance/entries/receivable_page.dart';
import 'package:flutter/material.dart';
import 'package:company_portal/src/domain/models/enums/dashboard_page_type.dart';
import 'package:company_portal/src/ui/pages/dashboard/summary/dashboard_summary_page.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';

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
      case DashboardPageType.bankAccounts:
        return const BankAccountsPage();
      case DashboardPageType.payable:
        return const PayablePage();
      case DashboardPageType.receivable:
        return const ReceivablePage();
      case DashboardPageType.payable:
        return const PayablePage();
      case DashboardPageType.receivable:
        return const ReceivablePage();
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
