import 'dart:convert';
import 'package:backoffice_web/src/core/utils/l10n_extension.dart';
import 'package:backoffice_web/src/domain/repositories/bank_transaction_repository.dart';
import 'package:backoffice_web/src/ui/widgets/brutalist_card.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:oneshot_client/oneshot_client.dart';

class ImportOfxDialog extends StatefulWidget {
  final BankAccount account;
  final IBankTransactionRepository? repository;
  final String? initialOfxContent;
  final String? initialFileName;

  const ImportOfxDialog({
    super.key,
    required this.account,
    this.repository,
    this.initialOfxContent,
    this.initialFileName,
  });

  @override
  State<ImportOfxDialog> createState() => _ImportOfxDialogState();
}

class _ImportOfxDialogState extends State<ImportOfxDialog> {
  late final IBankTransactionRepository _repository;
  final NumberFormat _currencyFormat =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  bool _isLoading = false;
  String? _selectedFileName;
  String? _ofxContent;
  OfxPreviewResult? _previewResult;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _repository =
        widget.repository ?? GetIt.instance<IBankTransactionRepository>();
    if (widget.initialOfxContent != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _processOfxContent(
          widget.initialFileName ?? 'extrato.ofx',
          widget.initialOfxContent!,
        );
      });
    }
  }

  Future<void> _pickFile() async {
    setState(() {
      _errorMessage = null;
    });

    try {
      final file = await FilePicker.pickFile(
        type: FileType.custom,
        allowedExtensions: ['ofx'],
      );

      if (file == null) {
        return;
      }

      final bytes = await file.readAsBytes();
      String content;

      // Tentar decodificar UTF-8 com fallback para Latin1 se falhar
      try {
        content = utf8.decode(bytes);
      } catch (_) {
        content = latin1.decode(bytes);
      }

      await _processOfxContent(file.name, content);
    } catch (e) {
      setState(() {
        _errorMessage = 'Falha ao ler arquivo OFX: $e';
      });
    }
  }

  Future<void> _processOfxContent(String fileName, String content) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _selectedFileName = fileName;
      _ofxContent = content;
      _previewResult = null;
    });

    try {
      final preview =
          await _repository.previewOfx(widget.account.id, content);
      setState(() {
        _previewResult = preview;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Falha ao gerar prévia do OFX: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _confirmImport() async {
    if (_ofxContent == null || _previewResult == null) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      await _repository.importOfx(widget.account.id, _ofxContent!);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.l10n.importOfxSuccess,
              style: const TextStyle(color: Colors.black),
            ),
            backgroundColor: DSTokens.success,
          ),
        );
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Erro ao importar extrato: $e';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.escape): const DismissIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          DismissIntent: CallbackAction<DismissIntent>(
            onInvoke: (_) => Navigator.of(context).pop(false),
          ),
        },
        child: Focus(
          autofocus: true,
          child: Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(DSTokens.spacingLg),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 580),
              child: BrutalistCard(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(DSTokens.spacingLg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              l10n.importOfxTitle,
                              style: DSTokens.h2.copyWith(fontSize: 20),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Conta: ${widget.account.name} (Ag: ${widget.account.agency ?? '-'} / Cc: ${widget.account.accountNumber ?? '-'})',
                        style: DSTokens.body.copyWith(
                          color: DSTokens.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: DSTokens.spacingMd),

                      // Botão de seleção de arquivo
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: DSTokens.spacingMd,
                            horizontal: DSTokens.spacingSm,
                          ),
                          side: const BorderSide(
                            color: DSTokens.primary,
                            width: 2,
                          ),
                          shape: const RoundedRectangleBorder(),
                        ),
                        icon: const Icon(Icons.upload_file, color: DSTokens.primary),
                        label: Text(
                          _selectedFileName == null
                              ? l10n.importOfxSelectFile
                              : '${l10n.importOfxChangeFile} ($_selectedFileName)',
                          style: DSTokens.body.copyWith(
                            fontWeight: FontWeight.bold,
                            color: DSTokens.primary,
                          ),
                        ),
                        onPressed: _isLoading ? null : _pickFile,
                      ),

                      if (_isLoading) ...[
                        const SizedBox(height: DSTokens.spacingLg),
                        const Center(
                          child: CircularProgressIndicator(
                            color: DSTokens.primary,
                          ),
                        ),
                      ],

                      // Alerta de erro genérico
                      if (_errorMessage != null) ...[
                        const SizedBox(height: DSTokens.spacingMd),
                        Container(
                          padding: const EdgeInsets.all(DSTokens.spacingSm),
                          decoration: BoxDecoration(
                            color: DSTokens.error.withValues(alpha: 0.15),
                            border: Border.all(color: DSTokens.error, width: 2),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.error_outline,
                                  color: DSTokens.error),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  _errorMessage!,
                                  style: DSTokens.body
                                      .copyWith(color: DSTokens.error),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      // Pré-visualização dos dados do OFX
                      if (_previewResult != null) ...[
                        const SizedBox(height: DSTokens.spacingMd),
                        if (!_previewResult!.isAccountMatched) ...[
                          // Banner vermelho de bloqueio por conta divergente
                          Container(
                            key: const Key('accountMismatchAlert'),
                            padding: const EdgeInsets.all(DSTokens.spacingMd),
                            decoration: BoxDecoration(
                              color: DSTokens.error.withValues(alpha: 0.2),
                              border:
                                  Border.all(color: DSTokens.error, width: 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.warning_amber_rounded,
                                        color: DSTokens.error),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        l10n.importOfxAccountMismatchAlert,
                                        style: DSTokens.body.copyWith(
                                          color: DSTokens.error,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (_previewResult!.accountMatchMessage !=
                                    null) ...[
                                  const SizedBox(height: 6),
                                  Text(
                                    _previewResult!.accountMatchMessage!,
                                    style: DSTokens.label.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ] else ...[
                          // Resumo de totalizadores com sucesso
                          Container(
                            key: const Key('previewSummaryContainer'),
                            padding: const EdgeInsets.all(DSTokens.spacingMd),
                            decoration: BoxDecoration(
                              color: DSTokens.surfaceContainer,
                              border: Border.all(
                                color: DSTokens.outlineVariant,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      l10n.importOfxCredits,
                                      style: DSTokens.body.copyWith(
                                        color: DSTokens.success,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      _currencyFormat.format(
                                        _previewResult!.totalCredits,
                                      ),
                                      style: DSTokens.headline.copyWith(
                                        color: DSTokens.success,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(color: DSTokens.outlineVariant),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      l10n.importOfxDebits,
                                      style: DSTokens.body.copyWith(
                                        color: DSTokens.error,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      _currencyFormat.format(
                                        _previewResult!.totalDebits,
                                      ),
                                      style: DSTokens.headline.copyWith(
                                        color: DSTokens.error,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(color: DSTokens.outlineVariant),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      l10n.importOfxNewCount,
                                      style: DSTokens.body,
                                    ),
                                    Text(
                                      '${_previewResult!.newTransactionsCount}',
                                      style: DSTokens.headline
                                          .copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      l10n.importOfxDuplicatedCount,
                                      style: DSTokens.body.copyWith(
                                        color: DSTokens.onSurfaceVariant,
                                      ),
                                    ),
                                    Text(
                                      '${_previewResult!.duplicatedTransactionsCount}',
                                      style: DSTokens.body.copyWith(
                                        color: DSTokens.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],

                      const SizedBox(height: DSTokens.spacingLg),

                      // Botões de Ação
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: _isLoading
                                ? null
                                : () => Navigator.of(context).pop(false),
                            child: Text(
                              l10n.commonCancel,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: DSTokens.spacingSm),
                          ElevatedButton(
                            key: const Key('confirmImportButton'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: DSTokens.primary,
                              foregroundColor: DSTokens.onPrimary,
                              disabledBackgroundColor: DSTokens.surfaceContainer,
                              disabledForegroundColor:
                                  DSTokens.onSurfaceVariant,
                              padding: const EdgeInsets.symmetric(
                                horizontal: DSTokens.spacingLg,
                                vertical: DSTokens.spacingMd,
                              ),
                              shape: const RoundedRectangleBorder(),
                            ),
                            onPressed: (_previewResult != null &&
                                    _previewResult!.isAccountMatched &&
                                    !_isLoading)
                                ? _confirmImport
                                : null,
                            child: Text(
                              l10n.importOfxConfirm,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
