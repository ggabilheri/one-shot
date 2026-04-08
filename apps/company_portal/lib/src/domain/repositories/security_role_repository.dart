import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart'; // import client

abstract class ISecurityRoleRepository {
  Future<SecurityRole> createRole(SecurityRole role, List<RolePermission> permissions);
  Future<SecurityRole> updateRole(SecurityRole role, List<RolePermission> permissions);
  Future<List<SecurityRole>> listRoles();
  Future<void> deleteRole(SecurityRole role);
}

class SecurityRoleRepository implements ISecurityRoleRepository {
  @override
  Future<SecurityRole> createRole(SecurityRole role, List<RolePermission> permissions) async {
    try {
      return await client.securityRole.createRole(role, permissions);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao criar papel de segurança.');
    }
  }

  @override
  Future<SecurityRole> updateRole(SecurityRole role, List<RolePermission> permissions) async {
    try {
      return await client.securityRole.updateRole(role, permissions);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar papel de segurança.');
    }
  }

  @override
  Future<List<SecurityRole>> listRoles() async {
    try {
      return await client.securityRole.listRoles();
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar papéis de segurança.');
    }
  }

  @override
  Future<void> deleteRole(SecurityRole role) async {
    try {
      await client.securityRole.deleteRole(role);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao deletar papel de segurança.');
    }
  }
}
