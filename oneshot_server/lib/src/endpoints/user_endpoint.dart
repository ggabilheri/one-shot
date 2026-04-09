import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  Future<UserProfile?> getById(Session session, UuidValue id) async {
    final profile = await sl.userProfileRepository.findById(session, id);
    if (profile == null) {
      throw AppException(message: 'Usuário não encontrado.', code: 'NOT_FOUND');
    }
    return profile;
  }

  Future<UserProfile?> getByCpf(Session session, String cpf) async {
    return await sl.userProfileRepository.findByCpf(session, cpf);
  }

  Future<UserProfile> create(Session session, UserProfile user) async {
    // Validar CPF único
    if (user.cpf != null && user.cpf!.isNotEmpty) {
      final existing =
          await sl.userProfileRepository.findByCpf(session, user.cpf!);
      if (existing != null) {
        throw AppException(
          message: 'Já existe um cadastro com este CPF.',
          code: 'CONFLICT',
        );
      }
    }
    return await sl.userProfileRepository.create(session, user);
  }

  Future<UserProfile> update(Session session, UserProfile user) async {
    return await sl.userProfileRepository.update(session, user);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.userProfileRepository.delete(session, id);
  }

  Future<List<UserProfile>> list(Session session,
      {int? limit, int? offset}) async {
    return await sl.userProfileRepository
        .list(session, limit: limit, offset: offset);
  }

  Future<List<UserProfile>> search(Session session, String query) async {
    return await sl.userProfileRepository.search(session, query);
  }

  Future<List<SecurityRole>> getRoles(Session session, UuidValue userId) async {
    return await sl.userProfileRepository.getRolesForUser(session, userId);
  }

  Future<void> updateRoles(
      Session session, UuidValue userId, List<UuidValue> roleIds) async {
    await sl.userProfileRepository.updateUserRoles(session, userId, roleIds);
  }

  /// Retorna as empresas as quais o usuário logado tem acesso.
  /// Implementa lógica de auto-admin para proprietários.
  Future<List<Company>> getMyCompanies(Session session) async {
    final profile = await sl.getOrCreateProfileUseCase.execute(session);
    if (profile.id == null) return [];

    // 1. Garantir que o papel "Administrador" existe
    var adminRole = await SecurityRole.db.findFirstRow(
      session,
      where: (t) => t.name.equals('Administrador'),
    );

    adminRole ??= await sl.securityRoleRepository.create(
      session,
      SecurityRole(
        name: 'Administrador',
        description: 'Acesso total ao clube',
        active: true,
      ),
      [],
    );

    // 2. Buscar empresas da qual é dono
    final ownedCompanies =
        await sl.companyRepository.findByOwner(session, profile.id!);

    // 3. Garantir UserRole para cada empresa como Admin
    for (final company in ownedCompanies) {
      final existingRole = await UserRole.db.findFirstRow(
        session,
        where: (t) =>
            t.userProfileId.equals(profile.id) & t.companyId.equals(company.id),
      );

      if (existingRole == null) {
        await UserRole.db.insertRow(
          session,
          UserRole(
            userProfileId: profile.id,
            securityRoleId: adminRole.id,
            companyId: company.id,
          ),
        );
      }
    }

    // 4. Retornar lista de empresas vinculadas (via UserRole)
    return await sl.userProfileRepository
        .listUserCompanies(session, profile.id!);
  }
}
