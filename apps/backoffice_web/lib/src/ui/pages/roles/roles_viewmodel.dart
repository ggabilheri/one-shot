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
    setError(null);
    try {
      _roles = await repository.listRoles();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar papéis de segurança.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveRole(SecurityRole role, List<RolePermission> permissions, {bool isNew = false}) async {
    setLoading(true);
    setError(null);
    try {
      if (isNew) {
        await repository.createRole(role, permissions);
      } else {
        await repository.updateRole(role, permissions);
      }
      await loadRoles();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao salvar papel de segurança.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<bool> deleteRole(SecurityRole role) async {
    setLoading(true);
    setError(null);
    try {
      await repository.deleteRole(role);
      await loadRoles();
      return true;
    } on AppException catch (e) {
      setError(e.message);
      setLoading(false);
      return false;
    } catch (e) {
      setError('Falha ao excluir papel de segurança.');
      setLoading(false);
      return false;
    }
  }
}
