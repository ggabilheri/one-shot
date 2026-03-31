import 'package:oneshot_server/src/domain/repositories/i_reload_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Recarga usando o DB do Serverpod.
class ReloadRepository implements IReloadRepository {
  
  // Sessões de Recarga
  @override
  Future<ReloadSession> createSession(Session session, ReloadSession reloadSession) async {
    return await ReloadSession.db.insertRow(session, reloadSession);
  }

  @override
  Future<ReloadSession?> findSessionById(Session session, UuidValue id) async {
    return await ReloadSession.db.findById(session, id);
  }

  @override
  Future<List<ReloadSession>> listSessionsByUser(Session session, UuidValue userId) async {
    return await ReloadSession.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  // Testes de Cronógrafo
  @override
  Future<ReloadTest> createTest(Session session, ReloadTest test) async {
    return await ReloadTest.db.insertRow(session, test);
  }

  @override
  Future<List<ReloadTest>> listTestsBySession(Session session, UuidValue sessionId) async {
    return await ReloadTest.db.find(
      session,
      where: (t) => t.reloadSessionId.equals(sessionId),
    );
  }

  // Insumos (SupplyStock)
  @override
  Future<SupplyStock> createSupply(Session session, SupplyStock supply) async {
    return await SupplyStock.db.insertRow(session, supply);
  }

  @override
  Future<SupplyStock?> findSupplyById(Session session, UuidValue id) async {
    return await SupplyStock.db.findById(session, id);
  }

  @override
  Future<List<SupplyStock>> listSuppliesByUser(Session session, UuidValue userId) async {
    return await SupplyStock.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  @override
  Future<SupplyStock> updateSupply(Session session, SupplyStock supply) async {
    return await SupplyStock.db.updateRow(session, supply);
  }

  @override
  Future<SupplyStock> adjustSupplyQuantity(Session session, UuidValue id, double change) async {
    final supply = await SupplyStock.db.findById(session, id);
    if (supply == null) throw Exception('Insumo não encontrado no estoque.');
    
    supply.quantity += change;
    if (supply.quantity < 0) supply.quantity = 0; // Evita estoque negativo
    
    return await SupplyStock.db.updateRow(session, supply);
  }
}
