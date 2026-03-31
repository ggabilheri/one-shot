import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de perfis de usuário.
abstract class IUserProfileRepository {
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId);
  Future<UserProfile?> findById(Session session, UuidValue id);
  Future<UserProfile> create(Session session, UserProfile profile);
  Future<UserProfile> update(Session session, UserProfile profile);
  Future<bool> delete(Session session, UuidValue id);
}
