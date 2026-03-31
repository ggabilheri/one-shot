import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FirearmEndpoint extends Endpoint {
  
  /// Lista todas as armas do usuário logado.
  Future<List<Firearm>> getMyFirearms(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    return await sl.firearmRepository.findByUserId(session, profile.id!);
  }

  /// Registra uma nova arma de fogo.
  Future<Firearm> registerFirearm(Session session, Firearm firearm) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    firearm.userId = profile.id;
    return await sl.firearmRepository.create(session, firearm);
  }

  /// Atualiza os dados de uma arma existente.
  Future<Firearm> updateFirearm(Session session, Firearm firearm) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    if (firearm.userId != profile.id) throw Exception('Esta arma não pertence ao seu perfil.');
    return await sl.firearmRepository.update(session, firearm);
  }

  /// Remove uma arma de fogo.
  Future<bool> deleteFirearm(Session session, UuidValue id) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    final firearm = await sl.firearmRepository.findById(session, id);
    if (firearm == null) return false;
    if (firearm.userId != profile.id) throw Exception('Esta arma não pertence ao seu perfil.');
    
    return await sl.firearmRepository.delete(session, id);
  }
}
