import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import client

abstract class ISecurityRoleRepository {
  Future<SecurityRole> createRole(SecurityRole role, List<RolePermission> permissions);
  Future<SecurityRole> updateRole(SecurityRole role, List<RolePermission> permissions);
  Future<List<SecurityRole>> listRoles();
  Future<void> deleteRole(SecurityRole role);
}

class SecurityRoleRepository implements ISecurityRoleRepository {
  @override
  Future<SecurityRole> createRole(SecurityRole role, List<RolePermission> permissions) async {
    return await client.securityRole.createRole(role, permissions);
  }

  @override
  Future<SecurityRole> updateRole(SecurityRole role, List<RolePermission> permissions) async {
    return await client.securityRole.updateRole(role, permissions);
  }

  @override
  Future<List<SecurityRole>> listRoles() async {
    return await client.securityRole.listRoles();
  }

  @override
  Future<void> deleteRole(SecurityRole role) async {
    await client.securityRole.deleteRole(role);
  }
}
