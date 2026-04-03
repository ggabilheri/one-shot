import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import client

abstract class IUserRepository {
  Future<List<UserProfile>> listUsers();
  Future<UserProfile> createUser(UserProfile user);
  Future<UserProfile> updateUser(UserProfile user);
  Future<bool> deleteUser(String userId);
  Future<Address?> fetchAddressByCep(String cep);
}

class UserRepository implements IUserRepository {
  @override
  Future<List<UserProfile>> listUsers() async {
    try {
      return await client.user.list();
    } catch (e) {
      throw Exception('Falha ao listar os usuários: \$e');
    }
  }

  @override
  Future<UserProfile> createUser(UserProfile user) async {
    try {
      return await client.user.create(user);
    } catch (e) {
      throw Exception('Falha ao registrar novo usuário: \$e');
    }
  }

  @override
  Future<UserProfile> updateUser(UserProfile user) async {
    try {
      return await client.user.update(user);
    } catch (e) {
      throw Exception('Falha ao atualizar o usuário: \$e');
    }
  }

  @override
  Future<bool> deleteUser(String userId) async {
    try {
      return await client.user.delete(UuidValue.fromString(userId));
    } catch (e) {
      throw Exception('Falha ao deletar o usuário: \$e');
    }
  }

  @override
  Future<Address?> fetchAddressByCep(String cep) async {
    try {
      return await client.viaCepGateway.getAddressByCep(cep);
    } catch (e) {
      return null;
    }
  }
}
