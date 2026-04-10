import 'package:flutter/material.dart';
import 'package:company_portal/src/ui/pages/companies/companies_viewmodel.dart';
import 'package:company_portal/src/ui/widgets/ds_tokens.dart';
import 'company_form_dialog.dart';

class CompaniesHeaderActionButton extends StatelessWidget {
  final ICompaniesViewmodel vm;

  const CompaniesHeaderActionButton({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            barrierColor: DSTokens.background.withOpacity(0.8),
            builder: (context) => CompanyFormDialog(vm: vm),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: DSTokens.spacingLg,
            vertical: DSTokens.spacingMd,
          ),
          decoration: BoxDecoration(
            color: DSTokens.primary,
            border: Border.all(color: DSTokens.primary),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Row(
            children: [
              const Icon(Icons.add, color: DSTokens.onPrimary, size: 20),
              const SizedBox(width: DSTokens.spacingSm),
              Text(
                'NOVA EMPRESA',
                style: DSTokens.label.copyWith(
                  color: DSTokens.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
