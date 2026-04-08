import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'product_form_dialog.dart';

class ProductsHeaderActionButton extends StatelessWidget {
  final IProductsViewmodel vm;

  const ProductsHeaderActionButton({
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
            builder: (context) => ProductFormDialog(
              vm: vm,
              initialGroupId: vm.selectedGroupId,
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: DSTokens.spacingLg,
            vertical: DSTokens.spacingMd,
          ),
          decoration: BoxDecoration(
            color: DSTokens.primary,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Row(
            children: [
              const Icon(Icons.add, color: DSTokens.onPrimary, size: 20),
              const SizedBox(width: DSTokens.spacingSm),
              Text(
                'NOVO PRODUTO',
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
