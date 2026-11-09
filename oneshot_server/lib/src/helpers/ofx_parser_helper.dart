import 'package:oneshot_server/src/generated/protocol.dart';

/// Representa uma transação bruta extraída de um arquivo OFX.
class OfxParsedTransaction {
  final String fitId;
  final String transactionType;
  final DateTime date;
  final double amount;
  final String? memo;

  const OfxParsedTransaction({
    required this.fitId,
    required this.transactionType,
    required this.date,
    required this.amount,
    this.memo,
  });
}

/// Representa os dados gerais brutos extraídos do extrato OFX.
class OfxRawData {
  final String? bankId;
  final String? branchId;
  final String? acctId;
  final String? acctType;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? ledgerBalance;
  final List<OfxParsedTransaction> transactions;

  const OfxRawData({
    this.bankId,
    this.branchId,
    this.acctId,
    this.acctType,
    this.startDate,
    this.endDate,
    this.ledgerBalance,
    required this.transactions,
  });
}

/// Helper para parsing e sanitização de arquivos OFX (SGML e XML).
class OfxParserHelper {
  /// Realiza o parse do conteúdo de um arquivo OFX nos formatos SGML ou XML 2.0.
  ///
  /// Lança [FormatException] caso o arquivo não possua identificação da conta
  /// ou não contenha transações válidas.
  static OfxRawData parse(String content) {
    if (content.trim().isEmpty) {
      throw const FormatException('Conteúdo do arquivo OFX está vazio.');
    }

    final acctId = _extractTag(content, 'ACCTID');
    if (acctId == null || acctId.trim().isEmpty) {
      throw const FormatException(
        'O arquivo OFX não contém a identificação da conta bancária (ACCTID).',
      );
    }

    final rawTransactions = _extractTransactions(content);
    if (rawTransactions.isEmpty) {
      throw const FormatException(
        'O arquivo OFX não contém bloco de transações válido ou transações ausentes.',
      );
    }

    final bankId = _extractTag(content, 'BANKID');
    final branchId = _extractTag(content, 'BRANCHID');
    final acctType = _extractTag(content, 'ACCTTYPE');
    final dtStartStr = _extractTag(content, 'DTSTART');
    final dtEndStr = _extractTag(content, 'DTEND');

    // Ledger balance
    final balAmtStr = _extractTagInBlock(content, 'LEDGERBAL', 'BALAMT') ??
        _extractTag(content, 'BALAMT');
    final ledgerBalance = balAmtStr != null ? _parseDouble(balAmtStr) : null;

    return OfxRawData(
      bankId: bankId?.trim(),
      branchId: branchId?.trim(),
      acctId: acctId.trim(),
      acctType: acctType?.trim(),
      startDate: dtStartStr != null ? _parseOfxDate(dtStartStr) : null,
      endDate: dtEndStr != null ? _parseOfxDate(dtEndStr) : null,
      ledgerBalance: ledgerBalance,
      transactions: rawTransactions,
    );
  }

  /// Sanitiza a string de agência, separando o número principal e o dígito verificador.
  /// Remove zeros à esquerda e pontuações.
  static (String number, String? digit) sanitizeAgency(String agency) {
    return _sanitizeNumberAndDigit(agency);
  }

  /// Sanitiza a string de conta, separando o número principal e o dígito verificador.
  /// Remove zeros à esquerda e pontuações.
  static (String number, String? digit) sanitizeAccount(String account) {
    return _sanitizeNumberAndDigit(account);
  }

  /// Verifica se os dados de agência e conta extraídos do OFX correspondem à [BankAccount].
  static bool matchAccount({
    required String? ofxBranch,
    required String? ofxAcct,
    required BankAccount account,
  }) {
    if (ofxAcct == null || ofxAcct.trim().isEmpty) {
      return false;
    }

    // 1. Validar Conta
    final (ofxAccNum, ofxAccDigit) = sanitizeAccount(ofxAcct);
    final (accNum, accDigit) = sanitizeAccount(
      account.accountDigit != null && account.accountDigit!.isNotEmpty
          ? '${account.accountNumber}-${account.accountDigit}'
          : (account.accountNumber ?? ''),
    );

    // Se ambos tiverem dígito explícito, valida número e dígito
    bool accountMatches = false;
    if (ofxAccDigit != null && accDigit != null) {
      accountMatches = (ofxAccNum == accNum && ofxAccDigit.toLowerCase() == accDigit.toLowerCase());
    } else {
      // Comparar somente números inteiros concatenados ou número base
      final fullOfxAcc = '$ofxAccNum${ofxAccDigit ?? ''}';
      final fullTargetAcc = '$accNum${accDigit ?? ''}';

      accountMatches = (ofxAccNum == accNum) ||
          (fullOfxAcc == fullTargetAcc) ||
          (fullOfxAcc == accNum) ||
          (ofxAccNum == fullTargetAcc);
    }

    if (!accountMatches) {
      return false;
    }

    // 2. Validar Agência (se ambos tiverem agência informada)
    if (ofxBranch != null && ofxBranch.trim().isNotEmpty && account.agency != null && account.agency!.trim().isNotEmpty) {
      final (ofxBranchNum, ofxBranchDigit) = sanitizeAgency(ofxBranch);
      final (targetBranchNum, targetBranchDigit) = sanitizeAgency(
        account.agencyDigit != null && account.agencyDigit!.isNotEmpty
            ? '${account.agency}-${account.agencyDigit}'
            : account.agency!,
      );

      if (ofxBranchDigit != null && targetBranchDigit != null) {
        if (ofxBranchNum != targetBranchNum ||
            ofxBranchDigit.toLowerCase() != targetBranchDigit.toLowerCase()) {
          return false;
        }
      } else {
        final fullOfxBranch = '$ofxBranchNum${ofxBranchDigit ?? ''}';
        final fullTargetBranch = '$targetBranchNum${targetBranchDigit ?? ''}';
        final branchMatches = (ofxBranchNum == targetBranchNum) ||
            (fullOfxBranch == fullTargetBranch) ||
            (fullOfxBranch == targetBranchNum) ||
            (ofxBranchNum == fullTargetBranch);

        if (!branchMatches) {
          return false;
        }
      }
    }

    return true;
  }

  static (String number, String? digit) _sanitizeNumberAndDigit(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) {
      return ('', null);
    }

    String numPart = '';
    String? digitPart;

    if (trimmed.contains('-')) {
      final parts = trimmed.split('-');
      numPart = parts[0].replaceAll(RegExp(r'\D'), '');
      if (parts.length > 1 && parts[1].trim().isNotEmpty) {
        digitPart = parts[1].replaceAll(RegExp(r'[^0-9a-zA-Z]'), '').trim();
      }
    } else {
      numPart = trimmed.replaceAll(RegExp(r'\D'), '');
    }

    // Remove zeros à esquerda
    numPart = numPart.replaceFirst(RegExp(r'^0+'), '');
    if (numPart.isEmpty && input.contains('0')) {
      numPart = '0';
    }

    return (numPart, digitPart);
  }

  static List<OfxParsedTransaction> _extractTransactions(String content) {
    final transactions = <OfxParsedTransaction>[];

    // Localizar blocos STMTTRN tanto em SGML quanto em XML
    final regex = RegExp(
      r'<STMTTRN>([\s\S]*?)(?:</STMTTRN>|(?=<STMTTRN>)|(?=</BANKTRANLIST>)|$)',
      caseSensitive: false,
    );

    final matches = regex.allMatches(content);
    for (final match in matches) {
      final block = match.group(1);
      if (block == null || block.trim().isEmpty) continue;

      final fitId = _extractTag(block, 'FITID');
      final trnType = _extractTag(block, 'TRNTYPE') ?? 'OTHER';
      final dtPosted = _extractTag(block, 'DTPOSTED');
      final trnAmt = _extractTag(block, 'TRNAMT');
      final memo = _extractTag(block, 'MEMO');

      if (fitId == null || dtPosted == null || trnAmt == null) {
        continue;
      }

      final amount = _parseDouble(trnAmt);
      final date = _parseOfxDate(dtPosted);

      transactions.add(
        OfxParsedTransaction(
          fitId: fitId.trim(),
          transactionType: trnType.trim().toUpperCase(),
          date: date,
          amount: amount,
          memo: memo?.trim(),
        ),
      );
    }

    return transactions;
  }

  static String? _extractTag(String text, String tag) {
    final regex = RegExp(
      '<$tag>\\s*([^<\\r\\n]+)(?:<\\/$tag>)?',
      caseSensitive: false,
    );
    final match = regex.firstMatch(text);
    return match?.group(1)?.trim();
  }

  static String? _extractTagInBlock(String text, String blockTag, String tag) {
    final blockRegex = RegExp(
      '<$blockTag>([\\s\\S]*?)(?:<\\/$blockTag>|(?=<$blockTag>)|\\\$)',
      caseSensitive: false,
    );
    final match = blockRegex.firstMatch(text);
    if (match == null) return null;
    return _extractTag(match.group(1) ?? '', tag);
  }

  static double _parseDouble(String value) {
    final cleaned = value.replaceAll(',', '.').trim();
    return double.parse(cleaned);
  }

  static DateTime _parseOfxDate(String rawDate) {
    final clean = rawDate.replaceAll(RegExp(r'\[.*?\]'), '').trim();
    if (clean.length < 8) {
      return DateTime.now();
    }

    final year = int.parse(clean.substring(0, 4));
    final month = int.parse(clean.substring(4, 6));
    final day = int.parse(clean.substring(6, 8));

    int hour = 0;
    int minute = 0;
    int second = 0;

    if (clean.length >= 14) {
      hour = int.tryParse(clean.substring(8, 10)) ?? 0;
      minute = int.tryParse(clean.substring(10, 12)) ?? 0;
      second = int.tryParse(clean.substring(12, 14)) ?? 0;
    }

    return DateTime.utc(year, month, day, hour, minute, second);
  }
}
