import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart';

abstract class IFinancialEntryRepository {
  Future<List<FinancialEntry>> listEntries({
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  });
  Future<FinancialEntry> create(FinancialEntry entry);
  Future<FinancialEntry> update(FinancialEntry entry);
  Future<bool> delete(UuidValue id);
}

class FinancialEntryRepository implements IFinancialEntryRepository {
  final PlatformApp _originModule = PlatformApp.company_manager;

  @override
  Future<List<FinancialEntry>> listEntries({
    FinancialEntryType? type,
    FinancialEntryStatus? status,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    try {
      final result = await client.financialEntry.listEntries(
        originModule: _originModule,
        type: type,
        status: status,
        dueDateFrom: dueDateFrom,
        dueDateTo: dueDateTo,
        companyId: companyId,
        limit: limit,
        offset: offset,
      );
      return result;
    } catch (e) {
      throw Exception('Falha ao listar lançamentos financeiros: $e');
    }
  }

  @override
  Future<FinancialEntry> create(FinancialEntry entry) async {
    try {
      entry.originModule = _originModule;
      final result = await client.financialEntry.createEntry(entry);
      return result;
    } catch (e) {
      throw Exception('Falha ao criar lançamento financeiro: $e');
    }
  }

  @override
  Future<FinancialEntry> update(FinancialEntry entry) async {
    try {
      final result = await client.financialEntry.updateEntry(entry);
      return result;
    } catch (e) {
      throw Exception('Falha ao atualizar lançamento financeiro: $e');
    }
  }

  @override
  Future<bool> delete(UuidValue id) async {
    try {
      return await client.financialEntry.deleteEntry(id);
    } catch (e) {
      throw Exception('Falha ao excluir lançamento financeiro: $e');
    }
  }
}
