import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de perfis de usuário, mantendo compatibilidade com o sistema.
abstract class IUserProfileRepository {
  Future<UserProfile?> findById(Session session, UuidValue id);
  Future<UserProfile?> findByCpf(Session session, String cpf);
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId);
  Future<UserProfile> create(Session session, UserProfile user);
  Future<UserProfile> update(Session session, UserProfile user);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<UserProfile>> list(Session session, {int? limit, int? offset});
}

class UserProfileRepository implements IUserProfileRepository {
  @override
  Future<UserProfile?> findById(Session session, UuidValue id) async {
    return await UserProfile.db.findById(session, id);
  }

  @override
  Future<UserProfile?> findByCpf(Session session, String cpf) async {
    return await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.cpf.equals(cpf),
    );
  }

  @override
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId) async {
    return await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userInfoId.equals(userInfoId),
    );
  }

  @override
  Future<UserProfile> create(Session session, UserProfile user) async {
    return await UserProfile.db.insertRow(session, user);
  }

  @override
  Future<UserProfile> update(Session session, UserProfile user) async {
    return await UserProfile.db.updateRow(session, user);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final user = await findById(session, id);
    if (user == null) return false;
    await UserProfile.db.deleteRow(session, user);
    return true;
  }

  @override
  Future<List<UserProfile>> list(Session session, {int? limit, int? offset}) async {
    return await UserProfile.db.find(
      session,
      limit: limit,
      offset: offset,
      orderBy: (t) => t.name,
    );
  }
}
