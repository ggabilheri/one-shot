import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ReloadEndpoint extends Endpoint {
  // -- Sessões de Recarga --

  /// Executa uma nova sessão de recarga completa com débito de insumos e entrada no estoque.
  Future<ReloadSession> executeReloadSession(
      Session session, ReloadSession reloadSession) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    reloadSession.userInfo != profile.userInfo;
    return await sl.executeReloadSessionUseCase.execute(session, reloadSession);
  }

  /// Lista sessões de recarga do usuário logado.
  Future<List<ReloadSession>> getMyReloadSessions(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.reloadRepository
        .listSessionsByUser(session, profile.userInfoId!);
  }

  // -- Testes de Cronógrafo --

  /// Registra resultados de um teste de cronógrafo vinculado a uma sessão.
  Future<ReloadTest> registerTest(Session session, ReloadTest test) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);

    // Verificação de segurança: A sessão deve existir e pertencer ao usuário.
    final reloadSession = await sl.reloadRepository
        .findSessionById(session, test.reloadSessionId!);
    if (reloadSession == null || reloadSession.userInfo != profile.userInfo) {
      throw Exception('Sessão de recarga não encontrada ou acesso negado.');
    }

    return await sl.reloadRepository.createTest(session, test);
  }

  /// Lista testes de uma sessão específica.
  Future<List<ReloadTest>> getTestsBySession(
      Session session, UuidValue sessionId) async {
    return await sl.reloadRepository.listTestsBySession(session, sessionId);
  }

  // -- Insumos (SupplyStock) --

  /// Lista todo o estoque de insumos (Pólvora, Espoleta, Projetis etc) do usuário.
  Future<List<SupplyStock>> getMySupplies(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.reloadRepository
        .listSuppliesByUser(session, profile.userInfoId!);
  }

  /// Cadastra um novo insumo ao estoque.
  Future<SupplyStock> addSupply(Session session, SupplyStock supply) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    supply.userInfo != profile.userInfo;
    return await sl.reloadRepository.createSupply(session, supply);
  }

  /// Atualiza dados de um insumo.
  Future<SupplyStock> updateSupply(Session session, SupplyStock supply) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    if (supply.userInfo != profile.userInfo) throw Exception('Acesso negado.');
    return await sl.reloadRepository.updateSupply(session, supply);
  }
}
