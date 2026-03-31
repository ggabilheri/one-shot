import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para repositório de recarga.
/// Gerencia Sessões de Recarga, Testes de Cronógrafo e Insumos (SupplyStock).
abstract class IReloadRepository {
  // Sessões de Recarga
  Future<ReloadSession> createSession(Session session, ReloadSession reloadSession);
  Future<ReloadSession?> findSessionById(Session session, UuidValue id);
  Future<List<ReloadSession>> listSessionsByUser(Session session, UuidValue userId);

  // Testes de Cronógrafo
  Future<ReloadTest> createTest(Session session, ReloadTest test);
  Future<List<ReloadTest>> listTestsBySession(Session session, UuidValue sessionId);

  // Insumos (SupplyStock)
  Future<SupplyStock> createSupply(Session session, SupplyStock supply);
  Future<SupplyStock?> findSupplyById(Session session, UuidValue id);
  Future<List<SupplyStock>> listSuppliesByUser(Session session, UuidValue userId);
  Future<SupplyStock> updateSupply(Session session, SupplyStock supply);
  
  /// Ajusta a quantidade de um insumo (ex: debita 50 espoletas ou 4.5 grains de pólvora).
  Future<SupplyStock> adjustSupplyQuantity(Session session, UuidValue id, double change);
}
