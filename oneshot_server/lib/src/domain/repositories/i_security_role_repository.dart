import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class ISecurityRoleRepository {
  Future<SecurityRole> create(Session session, SecurityRole role, List<RolePermission> permissions);
  Future<SecurityRole> update(Session session, SecurityRole role, List<RolePermission> permissions);
  Future<List<SecurityRole>> listAll(Session session);
  Future<SecurityRole?> findById(Session session, UuidValue id);
  Future<void> delete(Session session, SecurityRole role);
}
