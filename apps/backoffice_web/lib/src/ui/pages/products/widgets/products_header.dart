import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/pages/products/products_viewmodel.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'product_form_dialog.dart';

class ProductsHeader extends StatelessWidget {
  final IProductsViewmodel vm;
  const ProductsHeader({super.key, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CATÁLOGO DE PRODUTOS',
              style: DSTokens.headline,
            ),
            const SizedBox(height: 4),
            Text(
              'Gestão global de munições, insumos e peças.',
              style: DSTokens.body,
            ),
          ],
        ),
        Row(
          children: [
            _buildOriginFilter(),
            const SizedBox(width: DSTokens.spacingMd),
            if (!vm.isFilteredByGroup) ...[
              _buildGroupFilter(),
              const SizedBox(width: DSTokens.spacingMd),
            ],
            _buildActionBtn(context),
          ],
        ),
      ],
    );
  }

  Widget _buildGroupFilter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<UuidValue?>(
          value: vm.selectedGroupId,
          dropdownColor: DSTokens.surface,
          hint: const Text('TODOS OS GRUPOS'),
          items: [
            const DropdownMenuItem(value: null, child: Text('TODOS OS GRUPOS')),
            ...vm.groups.map((g) => DropdownMenuItem(
                  value: g.id,
                  child: Text(g.name.toUpperCase()),
                )),
          ],
          onChanged: (val) {
            vm.setSelectedGroup(val);
          },
        ),
      ),
    );
  }

  Widget _buildOriginFilter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: vm.selectedOrigin,
          dropdownColor: DSTokens.surface,
          items: const [
            DropdownMenuItem(value: 'BACKOFFICE', child: Text('Backoffice')),
            DropdownMenuItem(value: 'CLUB', child: Text('Clubes')),
            DropdownMenuItem(value: 'GUNSMITH', child: Text('Armarias')),
          ],
          onChanged: (val) {
            if (val != null) vm.setOrigin(val);
          },
        ),
      ),
    );
  }

  Widget _buildActionBtn(BuildContext context) {
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
