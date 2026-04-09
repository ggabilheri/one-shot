import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'package:company_portal/src/ui/pages/dashboard/dashboard_viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';

class DashboardAppBar extends StatelessWidget {
  final IDashboardViewModel vm;
  const DashboardAppBar({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Alinhado com o header da sidebar
      padding: const EdgeInsets.symmetric(horizontal: DSTokens.spacingLg),
      decoration: const BoxDecoration(
        color: DSTokens.surface,
        border: Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Seleção de Empresa
          _buildCompanySelector(context),

          // Ações
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: DSTokens.outline,
                ),
                onPressed: () {},
                splashRadius: 24,
              ),
              const SizedBox(width: DSTokens.spacingSm),
              IconButton(
                icon: const Icon(Icons.settings, color: DSTokens.outline),
                onPressed: () {},
                splashRadius: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCompanySelector(BuildContext context) {
    if (vm.userCompanies.isEmpty) return const SizedBox.shrink();

    if (vm.userCompanies.length == 1) {
      return Row(
        children: [
          const Icon(Icons.business, color: DSTokens.primary, size: 20),
          const SizedBox(width: DSTokens.spacingSm),
          Text(
            vm.userCompanies.first.name.toUpperCase(),
            style: DSTokens.h2.copyWith(color: DSTokens.primary),
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: DSTokens.spacingMd),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        borderRadius: BorderRadius.circular(DSTokens.spacingLg),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Company>(
          value: vm.selectedCompany,
          dropdownColor: DSTokens.surface,
          icon: const Icon(Icons.keyboard_arrow_down, color: DSTokens.primary),
          items: vm.userCompanies.map((company) {
            return DropdownMenuItem<Company>(
              value: company,
              child: Text(
                company.name.toUpperCase(),
                style: DSTokens.body.copyWith(
                  color: company.id == vm.selectedCompany?.id
                      ? DSTokens.primary
                      : DSTokens.onSurface,
                  fontWeight: company.id == vm.selectedCompany?.id
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            );
          }).toList(),
          onChanged: (company) {
            if (company != null) {
              vm.selectCompany(company);
            }
          },
        ),
      ),
    );
  }
}
