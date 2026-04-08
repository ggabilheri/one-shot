import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

class UserSearchDialog extends StatefulWidget {
  final Future<List<UserProfile>> Function(String query) onSearch;
  final Function(UserProfile user) onSelect;

  const UserSearchDialog({
    super.key,
    required this.onSearch,
    required this.onSelect,
  });

  @override
  State<UserSearchDialog> createState() => _UserSearchDialogState();
}

class _UserSearchDialogState extends State<UserSearchDialog> {
  final TextEditingController _searchController = TextEditingController();
  List<UserProfile> _results = [];
  bool _isSearching = false;
  String? _error;

  Future<void> _performSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isSearching = true;
      _error = null;
    });

    try {
      final results = await widget.onSearch(query);
      if (mounted) {
        setState(() {
          _results = results;
          if (results.isEmpty) {
            _error = 'Nenhum usuário encontrado.';
          }
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _error = 'Erro ao buscar usuários.');
      }
    } finally {
      if (mounted) {
        setState(() => _isSearching = false);
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 600,
          height: 500,
          decoration: BoxDecoration(
            color: DSTokens.surface,
            border: Border.all(color: DSTokens.surfaceContainerHigh),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: DSTokens.surfaceContainerHigh),
                  ),
                  color: DSTokens.background,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BUSCAR USUÁRIO',
                      style: DSTokens.headline.copyWith(fontSize: 18),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: DSTokens.outline),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),

              // Search Input
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: DSTokens.background,
                          border: Border.all(color: DSTokens.surfaceContainerHigh),
                        ),
                        child: TextField(
                          controller: _searchController,
                          style: DSTokens.body.copyWith(color: DSTokens.highlight),
                          onSubmitted: (_) => _performSearch(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nome, CPF, E-mail ou Telefone...',
                            hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: _isSearching ? null : _performSearch,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: DSTokens.primary,
                        foregroundColor: DSTokens.onPrimary,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      ),
                      child: _isSearching
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                color: DSTokens.onPrimary,
                                strokeWidth: 2,
                              ),
                            )
                          : const Text('BUSCAR'),
                    ),
                  ],
                ),
              ),

              // Results List
              Expanded(
                child: _error != null
                    ? Center(
                        child: Text(
                          _error!,
                          style: DSTokens.body.copyWith(color: DSTokens.error),
                        ),
                      )
                    : _results.isEmpty && !_isSearching
                        ? Center(
                            child: Text(
                              'Digite algo para buscar...',
                              style: DSTokens.body.copyWith(color: DSTokens.outline),
                            ),
                          )
                        : ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            itemCount: _results.length,
                            separatorBuilder: (_, __) => const Divider(
                              color: DSTokens.surfaceContainerHigh,
                              height: 1,
                            ),
                            itemBuilder: (context, index) {
                              final user = _results[index];
                              return ListTile(
                                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                title: Text(
                                  user.name,
                                  style: DSTokens.body.copyWith(
                                    color: DSTokens.highlight,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'CPF: ${user.cpf ?? "Não informado"} | Email: ${user.email ?? "N/A"}',
                                  style: DSTokens.label.copyWith(color: DSTokens.outline),
                                ),
                                trailing: const Icon(Icons.chevron_right, color: DSTokens.primary),
                                onTap: () {
                                  widget.onSelect(user);
                                  Navigator.of(context).pop();
                                },
                              );
                            },
                          ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
