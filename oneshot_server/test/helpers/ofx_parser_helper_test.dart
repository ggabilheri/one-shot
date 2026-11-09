import 'dart:io';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:oneshot_server/src/helpers/ofx_parser_helper.dart';
import 'package:test/test.dart';

void main() {
  group('OfxParserHelper', () {
    test('CT-001: Parser extrai transações e cabeçalho de extrato bancário no formato OFX SGML', () {
      const sgmlContent = '''
OFXHEADER:100
DATA:OFXSGML
VERSION:102
<OFX>
<BANKMSGSRSV1>
<STMTTRNRS>
<STMTRS>
<BANKACCTFROM>
<BANKID>001
<BRANCHID>1234
<ACCTID>56789
<ACCTTYPE>CHECKING
</BANKACCTFROM>
<BANKTRANLIST>
<DTSTART>20231001
<DTEND>20231002
<STMTTRN>
<TRNTYPE>DEBIT
<DTPOSTED>20231001120000
<TRNAMT>-150.00
<FITID>TX001
<MEMO>PAGAMENTO FORNECEDOR
</STMTTRN>
<STMTTRN>
<TRNTYPE>CREDIT
<DTPOSTED>20231002153000
<TRNAMT>500.00
<FITID>TX002
<MEMO>RECEBIMENTO CLIENTE
</STMTTRN>
</BANKTRANLIST>
<LEDGERBAL>
<BALAMT>350.00
</LEDGERBAL>
</STMTRS>
</STMTTRNRS>
</BANKMSGSRSV1>
</OFX>
''';

      final result = OfxParserHelper.parse(sgmlContent);

      expect(result.bankId, equals('001'));
      expect(result.branchId, equals('1234'));
      expect(result.acctId, equals('56789'));
      expect(result.transactions.length, equals(2));

      expect(result.transactions[0].fitId, equals('TX001'));
      expect(result.transactions[0].transactionType, equals('DEBIT'));
      expect(result.transactions[0].amount, equals(-150.00));
      expect(result.transactions[0].memo, equals('PAGAMENTO FORNECEDOR'));

      expect(result.transactions[1].fitId, equals('TX002'));
      expect(result.transactions[1].transactionType, equals('CREDIT'));
      expect(result.transactions[1].amount, equals(500.00));
      expect(result.transactions[1].memo, equals('RECEBIMENTO CLIENTE'));
    });

    test('CT-002: Parser extrai transações e cabeçalho de extrato bancário no formato OFX XML 2.0', () {
      const xmlContent = '''<?xml version="1.0" encoding="utf-8"?>
<OFX>
  <BANKMSGSRSV1>
    <STMTTRNRS>
      <STMTRS>
        <BANKACCTFROM>
          <BANKID>260</BANKID>
          <ACCTID>998877</ACCTID>
        </BANKACCTFROM>
        <BANKTRANLIST>
          <STMTTRN>
            <TRNTYPE>CREDIT</TRNTYPE>
            <DTPOSTED>20231010120000</DTPOSTED>
            <TRNAMT>2500.00</TRNAMT>
            <FITID>NUBANK001</FITID>
            <MEMO>PIX RECEBIDO</MEMO>
          </STMTTRN>
        </BANKTRANLIST>
        <LEDGERBAL>
          <BALAMT>2500.00</BALAMT>
        </LEDGERBAL>
      </STMTRS>
    </STMTTRNRS>
  </BANKMSGSRSV1>
</OFX>
''';

      final result = OfxParserHelper.parse(xmlContent);

      expect(result.bankId, equals('260'));
      expect(result.acctId, equals('998877'));
      expect(result.transactions.length, equals(1));
      expect(result.transactions[0].fitId, equals('NUBANK001'));
      expect(result.transactions[0].amount, equals(2500.00));
      expect(result.ledgerBalance, equals(2500.00));
    });

    test('CT-003: Normalização sanitizada de agência e conta bancária', () {
      final agencyResult = OfxParserHelper.sanitizeAgency('0012-3');
      expect(agencyResult.$1, equals('12'));
      expect(agencyResult.$2, equals('3'));

      final accountResult = OfxParserHelper.sanitizeAccount('000.123.456-7');
      expect(accountResult.$1, equals('123456'));
      expect(accountResult.$2, equals('7'));

      // Teste adicional de matchAccount
      final account = BankAccount(
        name: 'Conta Teste',
        agency: '0012',
        agencyDigit: '3',
        accountNumber: '000123456',
        accountDigit: '7',
        balance: 1000.0,
        status: 'ACTIVE',
        originModule: 'BACKOFFICE',
      );

      final matches = OfxParserHelper.matchAccount(
        ofxBranch: '12-3',
        ofxAcct: '123456-7',
        account: account,
      );
      expect(matches, isTrue);

      final doesNotMatch = OfxParserHelper.matchAccount(
        ofxBranch: '12-3',
        ofxAcct: '999999-9',
        account: account,
      );
      expect(doesNotMatch, isFalse);
    });

    test('CT-004: Parser lança FormatException quando arquivo não possui bloco de transações', () {
      const emptyTransactionsContent = '''
<OFX>
  <BANKMSGSRSV1>
    <STMTTRNRS>
      <STMTRS>
        <BANKACCTFROM>
          <BANKID>001</BANKID>
          <ACCTID>12345</ACCTID>
        </BANKACCTFROM>
        <BANKTRANLIST>
        </BANKTRANLIST>
      </STMTRS>
    </STMTTRNRS>
  </BANKMSGSRSV1>
</OFX>
''';

      expect(
        () => OfxParserHelper.parse(emptyTransactionsContent),
        throwsA(isA<FormatException>()),
      );
    });

    test('CT-005: Parser lança FormatException quando agência ou conta estão ausentes', () {
      const missingAcctContent = '''
<OFX>
  <BANKMSGSRSV1>
    <STMTTRNRS>
      <STMTRS>
        <BANKACCTFROM>
          <BANKID>001</BANKID>
        </BANKACCTFROM>
        <BANKTRANLIST>
          <STMTTRN>
            <TRNTYPE>DEBIT</TRNTYPE>
            <DTPOSTED>20231001120000</DTPOSTED>
            <TRNAMT>-10.00</TRNAMT>
            <FITID>TX001</FITID>
          </STMTTRN>
        </BANKTRANLIST>
      </STMTRS>
    </STMTTRNRS>
  </BANKMSGSRSV1>
</OFX>
''';

      expect(
        () => OfxParserHelper.parse(missingAcctContent),
        throwsA(isA<FormatException>()),
      );
    });

    test('CT-006: Leitura de arquivo fixture real .ofx a partir do disco', () {
      final file = File('test/fixtures/extrato_exemplo.ofx');
      expect(file.existsSync(), isTrue, reason: 'Arquivo fixture deve existir em test/fixtures/extrato_exemplo.ofx');

      final content = file.readAsStringSync();
      final result = OfxParserHelper.parse(content);

      expect(result.bankId, equals('001'));
      expect(result.branchId, equals('1234'));
      expect(result.acctId, equals('56789-0'));
      expect(result.transactions.length, equals(5));
      expect(result.ledgerBalance, equals(1500.50));

      final credits = result.transactions
          .where((t) => t.amount > 0)
          .fold<double>(0.0, (sum, t) => sum + t.amount);
      final debits = result.transactions
          .where((t) => t.amount < 0)
          .fold<double>(0.0, (sum, t) => sum + t.amount.abs());

      expect(credits, equals(1700.00));
      expect(debits, closeTo(199.50, 0.001));
    });
  });
}

