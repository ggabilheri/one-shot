import 'package:oneshot_server/src/domain/repositories/i_user_profile_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Perfil usando o DB do Serverpod.
class UserProfileRepository implements IUserProfileRepository {
  @override
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId) async {
    return await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userInfoId.equals(userInfoId),
    );
  }

  @override
  Future<UserProfile?> findById(Session session, UuidValue id) async {
    return await UserProfile.db.findById(session, id);
  }

  @override
  Future<UserProfile> create(Session session, UserProfile profile) async {
    return await UserProfile.db.insertRow(session, profile);
  }

  @override
  Future<UserProfile> update(Session session, UserProfile profile) async {
    return await UserProfile.db.updateRow(session, profile);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final deleted = await UserProfile.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }
}
