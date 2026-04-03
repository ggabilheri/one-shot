import 'package:oneshot_server/src/domain/repositories/i_security_role_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SecurityRoleRepository implements ISecurityRoleRepository {
  @override
  Future<SecurityRole> create(Session session, SecurityRole role, List<RolePermission> permissions) async {
    final createdRole = await SecurityRole.db.insertRow(session, role);
    
    // Inserir as permissões atreladas a esse novo Role
    for (var perm in permissions) {
      perm.securityRoleId = createdRole.id;
      await RolePermission.db.insertRow(session, perm);
    }
    
    return createdRole;
  }

  @override
  Future<SecurityRole> update(Session session, SecurityRole role, List<RolePermission> permissions) async {
    final updatedRole = await SecurityRole.db.updateRow(session, role);
    
    // Remove todas as permissoes anteriores para recriar
    await RolePermission.db.deleteWhere(session, where: (t) => t.securityRoleId.equals(role.id));
    
    for (var perm in permissions) {
      final newPerm = RolePermission(
        securityRoleId: role.id,
        platform: perm.platform,
        module: perm.module,
        level: perm.level,
      );
      await RolePermission.db.insertRow(session, newPerm);
    }

    return updatedRole;
  }

  @override
  Future<void> delete(Session session, SecurityRole role) async {
    await RolePermission.db.deleteWhere(session, where: (t) => t.securityRoleId.equals(role.id));
    await SecurityRole.db.deleteRow(session, role);
  }

  @override
  Future<SecurityRole?> findById(Session session, UuidValue id) async {
    // Nota: Como n-to-1 da permissao pro role, precisamos buscar as permissoes explicitamente ou usar Include
    return await SecurityRole.db.findById(session, id);
  }

  @override
  Future<List<SecurityRole>> listAll(Session session) async {
    return await SecurityRole.db.find(
      session,
      where: (t) => t.active.equals(true),
    );
  }

  /// Busca as Permissões de uma Role
  Future<List<RolePermission>> listPermissionsByRole(Session session, UuidValue roleId) async {
     return await RolePermission.db.find(
       session,
       where: (t) => t.securityRoleId.equals(roleId)
     );
  }
}
