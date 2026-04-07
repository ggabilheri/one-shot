import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  Future<UserProfile?> getById(Session session, UuidValue id) async {
    final profile = await sl.userProfileRepository.findById(session, id);
    if (profile == null) {
      throw AppException(message: 'Usuário não encontrado.', code: 'NOT_FOUND');
    }
    return profile;
  }

  Future<UserProfile?> getByCpf(Session session, String cpf) async {
    return await sl.userProfileRepository.findByCpf(session, cpf);
  }

  Future<UserProfile> create(Session session, UserProfile user) async {
    // Validar CPF único
    if (user.cpf != null && user.cpf!.isNotEmpty) {
      final existing = await sl.userProfileRepository.findByCpf(session, user.cpf!);
      if (existing != null) {
        throw AppException(
          message: 'Já existe um cadastro com este CPF.',
          code: 'CONFLICT',
        );
      }
    }
    return await sl.userProfileRepository.create(session, user);
  }

  Future<UserProfile> update(Session session, UserProfile user) async {
    return await sl.userProfileRepository.update(session, user);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.userProfileRepository.delete(session, id);
  }

  Future<List<UserProfile>> list(Session session,
      {int? limit, int? offset}) async {
    return await sl.userProfileRepository
        .list(session, limit: limit, offset: offset);
  }

  Future<List<SecurityRole>> getRoles(Session session, UuidValue userId) async {
    return await sl.userProfileRepository.getRolesForUser(session, userId);
  }

  Future<void> updateRoles(
      Session session, UuidValue userId, List<UuidValue> roleIds) async {
    await sl.userProfileRepository.updateUserRoles(session, userId, roleIds);
  }
}
