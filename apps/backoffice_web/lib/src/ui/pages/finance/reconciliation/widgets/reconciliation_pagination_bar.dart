import 'package:backoffice_web/src/ui/widgets/ds_dropdown.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:flutter/material.dart';

class ReconciliationPaginationBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final int pageSize;
  final int totalCount;
  final List<int> allowedPageSizes;
  final ValueChanged<int> onPageSizeChanged;
  final VoidCallback onPreviousPage;
  final VoidCallback onNextPage;

  const ReconciliationPaginationBar({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.pageSize,
    required this.totalCount,
    required this.allowedPageSizes,
    required this.onPageSizeChanged,
    required this.onPreviousPage,
    required this.onNextPage,
  });

  @override
  Widget build(BuildContext context) {
    final from = totalCount == 0 ? 0 : (currentPage - 1) * pageSize + 1;
    final to = (currentPage * pageSize).clamp(0, totalCount);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DSTokens.spacingMd,
        vertical: DSTokens.spacingSm,
      ),
      decoration: BoxDecoration(
        color: DSTokens.surfaceContainer,
        border: Border.all(color: DSTokens.surfaceContainerHigh, width: 2),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 10,
        children: [
          // Seletor de Itens por Página
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ITENS:',
                style: DSTokens.label.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 85,
                child: DSDropdown<int>.fromValues(
                  key: const Key('reconciliationPageSizeDropdown'),
                  value: pageSize,
                  values: allowedPageSizes,
                  labelBuilder: (size) => '$size',
                  onChanged: (newSize) {
                    if (newSize != null) {
                      onPageSizeChanged(newSize);
                    }
                  },
                ),
              ),
              const SizedBox(width: DSTokens.spacingMd),
              Text(
                '$from - $to de $totalCount transações',
                style: DSTokens.data.copyWith(
                  fontSize: 12,
                  color: DSTokens.onSurfaceVariant,
                ),
              ),
            ],
          ),

          // Controles de Navegação de Página
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                key: const Key('paginationPrevButton'),
                style: OutlinedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  side: BorderSide(
                    color: currentPage > 1
                        ? DSTokens.primary
                        : DSTokens.outlineVariant,
                    width: 1.5,
                  ),
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: currentPage > 1 ? onPreviousPage : null,
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 16,
                      color: currentPage > 1
                          ? DSTokens.primary
                          : DSTokens.outlineVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'ANTERIOR',
                      style: DSTokens.body.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: currentPage > 1
                            ? DSTokens.primary
                            : DSTokens.outlineVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: DSTokens.surface,
                  border: Border.all(color: DSTokens.outlineVariant, width: 1),
                ),
                child: Text(
                  'Página $currentPage de $totalPages',
                  style: DSTokens.data.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: DSTokens.onSurface,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                key: const Key('paginationNextButton'),
                style: OutlinedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  side: BorderSide(
                    color: currentPage < totalPages
                        ? DSTokens.primary
                        : DSTokens.outlineVariant,
                    width: 1.5,
                  ),
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: currentPage < totalPages ? onNextPage : null,
                child: Row(
                  children: [
                    Text(
                      'PRÓXIMA',
                      style: DSTokens.body.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: currentPage < totalPages
                            ? DSTokens.primary
                            : DSTokens.outlineVariant,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: currentPage < totalPages
                          ? DSTokens.primary
                          : DSTokens.outlineVariant,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
