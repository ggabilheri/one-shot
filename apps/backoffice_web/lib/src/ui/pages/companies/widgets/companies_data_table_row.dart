import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'company_form_dialog.dart';

class CompaniesDataTableRow extends StatelessWidget {
  final ICompaniesViewmodel vm;
  final Company company;
  final int index;

  const CompaniesDataTableRow({
    super.key,
    required this.vm,
    required this.company,
    required this.index,
  });

  String _formatCnpj(String? cnpj) {
    if (cnpj == null || cnpj.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '##.###.###/####-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(cnpj);
  }

  String _formatPhone(String? phone) {
    if (phone == null || phone.isEmpty) return '--';
    var formatter = MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return formatter.maskText(phone);
  }

  @override
  Widget build(BuildContext context) {
    final isEven = index % 2 == 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: isEven ? Colors.transparent : Colors.white.withOpacity(0.01),
        border: const Border(
          bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
        ),
      ),
      child: Row(
        children: [
          // STS
          SizedBox(
            width: 40,
            child: Icon(
              company.active ? Icons.circle : Icons.circle_outlined,
              color: company.active ? DSTokens.primary : DSTokens.outline,
              size: 14,
            ),
          ),
          // NOME
          Expanded(
            flex: 3,
            child: Text(
              company.name,
              style: DSTokens.body.copyWith(
                color: DSTokens.highlight,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // TIPO
          Expanded(
            flex: 1,
            child: Text(
              company.type.name.toUpperCase(),
              style: DSTokens.label.copyWith(
                color: DSTokens.primary,
                fontSize: 10,
              ),
            ),
          ),
          // CNPJ
          Expanded(
            flex: 2,
            child: Text(
              _formatCnpj(company.cnpj),
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // CONTATO
          Expanded(
            flex: 2,
            child: Text(
              _formatPhone(company.phoneNumber),
              style: DSTokens.data.copyWith(
                color: DSTokens.outline,
                fontSize: 14,
              ),
            ),
          ),
          // AÇÕES
          SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: DSTokens.background.withOpacity(0.8),
                        builder: (context) =>
                            CompanyFormDialog(vm: vm, company: company),
                      );
                    },
                    child: const Icon(
                      Icons.edit_outlined,
                      color: DSTokens.outline,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: DSTokens.spacingMd),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => vm.deleteCompany(company.id!.toString()),
                    child: const Icon(
                      Icons.delete_outline,
                      color: DSTokens.alert,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
