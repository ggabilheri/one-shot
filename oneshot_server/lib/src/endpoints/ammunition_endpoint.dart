import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AmmunitionEndpoint extends Endpoint {
  /// Lista todo o estoque de munições prontas do usuário logado.
  Future<List<AmmunitionStock>> getMyAmmunition(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.ammunitionRepository
        .findByUserId(session, profile.userInfoId!);
  }

  /// Adiciona uma nova munição ao estoque (ex: compra).
  Future<AmmunitionStock> addAmmunition(
      Session session, AmmunitionStock ammo) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    ammo.userInfo = profile.userInfo;
    return await sl.ammunitionRepository.create(session, ammo);
  }

  /// Ajusta a quantidade manualmente.
  Future<AmmunitionStock?> adjustQuantity(
      Session session, UuidValue id, int change) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    final existing = await sl.ammunitionRepository.findById(session, id);
    if (existing == null || existing.userInfo != profile.userInfo) {
      throw Exception('Munição não encontrada ou acesso negado.');
    }
    return await sl.ammunitionRepository.adjustQuantity(session, id, change);
  }

  /// Deleta um registro de estoque de munição.
  Future<bool> deleteAmmunition(Session session, UuidValue id) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    final existing = await sl.ammunitionRepository.findById(session, id);
    if (existing == null || existing.userInfo != profile.userInfo) {
      return false;
    }
    return await sl.ammunitionRepository.delete(session, id);
  }
}
