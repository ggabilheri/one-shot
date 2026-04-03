import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  Future<UserProfile?> getById(Session session, UuidValue id) async {
    return await sl.userProfileRepository.findById(session, id);
  }

  Future<UserProfile?> getByCpf(Session session, String cpf) async {
    return await sl.userProfileRepository.findByCpf(session, cpf);
  }

  Future<UserProfile> create(Session session, UserProfile user) async {
    return await sl.userProfileRepository.create(session, user);
  }

  Future<UserProfile> update(Session session, UserProfile user) async {
    return await sl.userProfileRepository.update(session, user);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.userProfileRepository.delete(session, id);
  }

  Future<List<UserProfile>> list(Session session, {int? limit, int? offset}) async {
    return await sl.userProfileRepository.list(session, limit: limit, offset: offset);
  }

  Future<List<SecurityRole>> getRoles(Session session, UuidValue userId) async {
    return await sl.userProfileRepository.getRolesForUser(session, userId);
  }

  Future<void> updateRoles(Session session, UuidValue userId, List<UuidValue> roleIds) async {
    await sl.userProfileRepository.updateUserRoles(session, userId, roleIds);
  }
}
