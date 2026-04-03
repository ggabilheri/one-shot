import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IUsersViewmodel extends Viewmodel {
  List<UserProfile> get users;
  Future<void> loadUsers();
  Future<void> createUser(UserProfile user);
  Future<void> updateUser(UserProfile user);
  Future<void> deleteUser(String id);
  Future<Address?> getAddressByCep(String cep);
}

class UsersViewmodel extends Viewmodel implements IUsersViewmodel {
  final IUserRepository _userRepository;

  UsersViewmodel(this._userRepository) {
    loadUsers();
  }

  List<UserProfile> _users = [];
  @override
  List<UserProfile> get users => _users;

  @override
  Future<void> loadUsers() async {
    setLoading(true);
    try {
      _users = await _userRepository.listUsers();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> createUser(UserProfile user) async {
    setLoading(true);
    try {
      final newUser = await _userRepository.createUser(user);
      _users.add(newUser);
      notifyListeners();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> updateUser(UserProfile user) async {
    setLoading(true);
    try {
      final updatedUser = await _userRepository.updateUser(user);
      final index = _users.indexWhere((c) => c.id == updatedUser.id);
      if (index != -1) {
        _users[index] = updatedUser;
        notifyListeners();
      }
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteUser(String id) async {
    setLoading(true);
    try {
      final success = await _userRepository.deleteUser(id);
      if (success) {
        _users.removeWhere((c) => c.id.toString() == id);
        notifyListeners();
      }
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<Address?> getAddressByCep(String cep) async {
    setLoading(true);
    try {
      return await _userRepository.fetchAddressByCep(cep);
    } catch (e) {
      setError('Erro ao buscar o CEP');
      return null;
    } finally {
      setLoading(false);
    }
  }
}
