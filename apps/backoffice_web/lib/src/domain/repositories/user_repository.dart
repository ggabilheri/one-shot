import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import client

abstract class IUserRepository {
  Future<List<UserProfile>> listUsers();
  Future<UserProfile> createUser(UserProfile user);
  Future<UserProfile> updateUser(UserProfile user);
  Future<bool> deleteUser(String userId);
  Future<List<UserProfile>> searchUsers(String query);
  Future<Address?> fetchAddressByCep(String cep);

  // RBAC
  Future<List<SecurityRole>> getRoles(String userId);
  Future<void> updateRoles(String userId, List<String> roleIds);
}

class UserRepository implements IUserRepository {
  @override
  Future<List<UserProfile>> listUsers() async {
    try {
      return await client.user.list();
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar os usuários.');
    }
  }

  @override
  Future<UserProfile> createUser(UserProfile user) async {
    try {
      return await client.user.create(user);
    } on AppException {
      rethrow; // Exibe mensagem real (ex: "Já existe um cadastro com este CPF.")
    } catch (e) {
      throw Exception('Falha ao criar o usuário.');
    }
  }

  @override
  Future<UserProfile> updateUser(UserProfile user) async {
    try {
      return await client.user.update(user);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar o usuário.');
    }
  }

  @override
  Future<bool> deleteUser(String userId) async {
    try {
      return await client.user.delete(UuidValue.fromString(userId));
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao remover o usuário.');
    }
  }

  @override
  Future<List<UserProfile>> searchUsers(String query) async {
    try {
      // @ts-ignore - Este método foi adicionado no endpoint e será gerado pelo serverpod
      return await (client.user as dynamic).search(query);
    } catch (e) {
      throw Exception('Falha ao buscar usuários.');
    }
  }

  @override
  Future<Address?> fetchAddressByCep(String cep) async {
    try {
      return await client.viaCepGateway.getAddressByCep(cep);
    } catch (e) {
      return null; // Falha de CEP não é crítica
    }
  }

  @override
  Future<List<SecurityRole>> getRoles(String userId) async {
    try {
      return await client.user.getRoles(UuidValue.fromString(userId));
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao obter papéis do usuário.');
    }
  }

  @override
  Future<void> updateRoles(String userId, List<String> roleIds) async {
    try {
      await client.user.updateRoles(
        UuidValue.fromString(userId),
        roleIds.map((id) => UuidValue.fromString(id)).toList(),
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar papéis do usuário.');
    }
  }
}
