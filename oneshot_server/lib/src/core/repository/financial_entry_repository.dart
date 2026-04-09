import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de lançamentos financeiros (A Pagar / A Receber).
abstract class IFinancialEntryRepository {
  Future<FinancialEntry> create(Session session, FinancialEntry entry);
  Future<FinancialEntry?> findById(Session session, UuidValue id);
  Future<FinancialEntry> update(Session session, FinancialEntry entry);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<FinancialEntry>> list(
    Session session, {
    required PlatformApp originModule,
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  });
}

class FinancialEntryRepositoryImpl implements IFinancialEntryRepository {
  @override
  Future<FinancialEntry> create(Session session, FinancialEntry entry) async {
    try {
      return await FinancialEntry.db.insertRow(session, entry);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao criar lançamento financeiro.',
        code: 'FINANCIAL_ENTRY_CREATE_ERROR',
      );
    }
  }

  @override
  Future<FinancialEntry?> findById(Session session, UuidValue id) async {
    try {
      return await FinancialEntry.db.findById(
        session,
        id,
        include: FinancialEntry.include(
          bankAccount: BankAccount.include(),
          invoice: Invoice.include(),
        ),
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao buscar lançamento financeiro.',
        code: 'FINANCIAL_ENTRY_FIND_ERROR',
      );
    }
  }

  @override
  Future<FinancialEntry> update(Session session, FinancialEntry entry) async {
    try {
      return await FinancialEntry.db.updateRow(session, entry);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao atualizar lançamento financeiro.',
        code: 'FINANCIAL_ENTRY_UPDATE_ERROR',
      );
    }
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    try {
      final entry = await findById(session, id);
      if (entry == null) return false;
      await FinancialEntry.db.deleteRow(session, entry);
      return true;
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao remover lançamento financeiro.',
        code: 'FINANCIAL_ENTRY_DELETE_ERROR',
      );
    }
  }

  /// Lista lançamentos com filtros dinâmicos.
  /// - [originModule] é obrigatório (isola os dados por módulo: BACKOFFICE, COMPANY, GUNSMITH).
  /// - [type] é opcional para filtrar PAYABLE (A Pagar) ou RECEIVABLE (A Receber).
  /// - [status] é opcional para filtrar por estado do lançamento.
  /// - [dueDateFrom] e [dueDateTo] permitem filtrar por intervalo de vencimento.
  @override
  Future<List<FinancialEntry>> list(
    Session session, {
    required PlatformApp originModule,
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    try {
      return await FinancialEntry.db.find(
        session,
        where: (t) {
          Expression where = t.originModule.equals(originModule);

          if (type != null) {
            where = where & t.type.equals(type);
          }
          if (status != null) {
            where = where & t.status.equals(status);
          }
          if (dueDateFrom != null) {
            where = where & (t.dueDate >= dueDateFrom);
          }
          if (dueDateTo != null) {
            where = where & (t.dueDate <= dueDateTo);
          }
          if (companyId != null) {
            where = where & t.companyId.equals(companyId);
          } else {
            where = where & t.companyId.equals(null);
          }

          return where;
        },
        orderBy: (t) => t.dueDate,
        orderDescending: false,
        limit: limit,
        offset: offset,
        include: FinancialEntry.include(
          bankAccount: BankAccount.include(),
          invoice: Invoice.include(),
        ),
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        message: 'Falha ao listar lançamentos financeiros.',
        code: 'FINANCIAL_ENTRY_LIST_ERROR',
      );
    }
  }
}
