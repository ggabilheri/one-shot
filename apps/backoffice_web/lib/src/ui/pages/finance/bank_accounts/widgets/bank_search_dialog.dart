import 'package:flutter/material.dart';
import 'package:backoffice_web/src/core/utils/l10n_extension.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';

class BankSearchDialog extends StatefulWidget {
  final Future<List<Bank>> Function(String) onSearch;

  const BankSearchDialog({super.key, required this.onSearch});

  @override
  State<BankSearchDialog> createState() => _BankSearchDialogState();
}

class _BankSearchDialogState extends State<BankSearchDialog> {
  final _searchController = TextEditingController();
  List<Bank> _banks = [];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _performSearch('');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _performSearch(String query) async {
    setState(() => _loading = true);
    try {
      final results = await widget.onSearch(query);
      if (mounted) {
        setState(() => _banks = results);
      }
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: BrutalistCard(
        padding: const EdgeInsets.all(DSTokens.spacingLg),
        backgroundColor: DSTokens.surface,
        borderColor: DSTokens.primary,
        child: SizedBox(
          width: 400,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.bankSearchTitle.toUpperCase(), style: DSTokens.h2),
              const SizedBox(height: DSTokens.spacingMd),
              TextField(
                controller: _searchController,
                style: DSTokens.body,
                decoration: InputDecoration(
                  hintText: l10n.bankSearchHint,
                  hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
                  prefixIcon: const Icon(Icons.search, color: DSTokens.primary),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: DSTokens.outlineVariant,
                      width: 2,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: DSTokens.primary,
                      width: 2,
                    ),
                  ),
                ),
                onChanged: _performSearch,
              ),
              const SizedBox(height: DSTokens.spacingMd),
              Expanded(
                child: _loading
                    ? const Center(child: CircularProgressIndicator())
                    : _banks.isEmpty
                    ? Center(
                        child: Text(
                          l10n.bankSearchEmpty,
                          style: DSTokens.body.copyWith(color: DSTokens.outline),
                        ),
                      )
                    : ListView.separated(
                        itemCount: _banks.length,
                        separatorBuilder: (_, __) => const Divider(),
                        itemBuilder: (context, index) {
                          final bank = _banks[index];
                          return ListTile(
                            title: Text(bank.name, style: DSTokens.body),
                            subtitle: Text(
                              l10n.bankSearchCode(bank.code.toString()),
                              style: DSTokens.label,
                            ),
                            onTap: () => Navigator.pop(context, bank),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
