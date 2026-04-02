import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class ProfileEndpoint extends Endpoint {
  /// Garante que o perfil do usuário logado exista no domínio OneShot.
  Future<UserProfile> getOrCreateMyProfile(Session session) async {
    return await sl.getOrCreateProfileUseCase.execute(session);
  }

  /// Atualiza os dados do perfil (CPF, CR, etc).
  Future<UserProfile> updateMyProfile(
      Session session, UserProfile profile) async {
    final userId = (await session.authenticated)?.userId;
    if (userId == null) throw Exception('Não autorizado.');

    // Segurança: Garantir que o perfil pertence ao usuário logado.
    final existing =
        await sl.userProfileRepository.findByUserInfoId(session, userId);
    if (existing == null || existing.id != profile.id) {
      throw Exception('Perfil não pertence a este usuário.');
    }

    return await sl.userProfileRepository.update(session, profile);
  }

  /// Busca o perfil pelo ID (para visualização de outros administradores ou clubes).
  Future<UserProfile?> getProfileById(Session session, UuidValue id) async {
    return await sl.userProfileRepository.findById(session, id);
  }
}
