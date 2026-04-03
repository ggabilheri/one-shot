import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/security_role_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IRolesViewmodel implements IViewmodel {
  List<SecurityRole> get roles;
  Future<void> loadRoles();
  Future<void> saveRole(SecurityRole role, List<RolePermission> permissions, {bool isNew = false});
  Future<bool> deleteRole(SecurityRole role);
}

class RolesViewmodel extends Viewmodel implements IRolesViewmodel {
  final ISecurityRoleRepository repository;

  RolesViewmodel(this.repository);

  List<SecurityRole> _roles = [];
  
  @override
  List<SecurityRole> get roles => _roles;

  @override
  Future<void> loadRoles() async {
    setLoading(true);
    try {
      _roles = await repository.listRoles();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveRole(SecurityRole role, List<RolePermission> permissions, {bool isNew = false}) async {
    setLoading(true);
    try {
      if (isNew) {
        await repository.createRole(role, permissions);
      } else {
        await repository.updateRole(role, permissions);
      }
      await loadRoles();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<bool> deleteRole(SecurityRole role) async {
    setLoading(true);
    try {
      await repository.deleteRole(role);
      await loadRoles();
      return true;
    } catch (e) {
      setError(e.toString());
      setLoading(false);
      return false;
    }
  }
}
