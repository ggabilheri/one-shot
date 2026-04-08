import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FinancialEntryEndpoint extends Endpoint {
  /// Cria um novo lançamento financeiro (A Pagar ou A Receber).
  Future<FinancialEntry> createEntry(Session session, FinancialEntry entry) async {
    return await sl.financialEntryRepository.create(session, entry);
  }

  /// Busca um lançamento financeiro pelo ID.
  /// Retorna o lançamento com a [BankAccount] e [Invoice] vinculados (via include).
  Future<FinancialEntry?> readEntry(Session session, UuidValue id) async {
    final entry = await sl.financialEntryRepository.findById(session, id);
    if (entry == null) {
      throw AppException(
        message: 'Lançamento financeiro não encontrado.',
        code: 'NOT_FOUND',
      );
    }
    return entry;
  }

  /// Atualiza um lançamento financeiro existente.
  Future<FinancialEntry> updateEntry(Session session, FinancialEntry entry) async {
    return await sl.financialEntryRepository.update(session, entry);
  }

  /// Remove um lançamento financeiro pelo ID.
  Future<bool> deleteEntry(Session session, UuidValue id) async {
    return await sl.financialEntryRepository.delete(session, id);
  }

  /// Lista lançamentos financeiros com filtros dinâmicos.
  ///
  /// - [originModule]: Filtro **obrigatório**. Isola os dados por módulo (BACKOFFICE, COMPANY, GUNSMITH).
  /// - [type]: Filtro opcional por tipo (`payable` = A Pagar, `receivable` = A Receber).
  /// - [status]: Filtro opcional por status (`pending`, `paid`, `overdue`, etc.).
  /// - [dueDateFrom] e [dueDateTo]: Intervalo opcional de datas de vencimento.
  Future<List<FinancialEntry>> listEntries(
    Session session, {
    required PlatformApp originModule,
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    int? limit,
    int? offset,
  }) async {
    return await sl.financialEntryRepository.list(
      session,
      originModule: originModule,
      type: type,
      status: status,
      dueDateFrom: dueDateFrom,
      dueDateTo: dueDateTo,
      limit: limit,
      offset: offset,
    );
  }
}
