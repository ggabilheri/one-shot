import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SecurityRoleEndpoint extends Endpoint {
  Future<SecurityRole> createRole(Session session, SecurityRole role, List<RolePermission> permissions) async {
    return await sl.securityRoleRepository.create(session, role, permissions);
  }

  Future<SecurityRole> updateRole(Session session, SecurityRole role, List<RolePermission> permissions) async {
    return await sl.securityRoleRepository.update(session, role, permissions);
  }

  Future<bool> deleteRole(Session session, SecurityRole role) async {
    await sl.securityRoleRepository.delete(session, role);
    return true;
  }

  Future<List<SecurityRole>> listRoles(Session session) async {
    return await sl.securityRoleRepository.listAll(session);
  }

  Future<List<RolePermission>> listRolePermissions(Session session, SecurityRole role) async {
    // Nota: usamos reflection do repo impl, seria bom colocar no contrato se precisarmos fora,
    // Mas para fins do app é OK buscar assim. Se der erro compilação, faremos o find.
    return await RolePermission.db.find(
      session,
      where: (t) => t.securityRoleId.equals(role.id),
    );
  }
}
