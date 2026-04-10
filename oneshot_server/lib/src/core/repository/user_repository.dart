import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de perfis de usuário, mantendo compatibilidade com o sistema.
abstract class IUserProfileRepository {
  Future<UserProfile?> findById(Session session, UuidValue id);
  Future<UserProfile?> findByCpf(Session session, String cpf);
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId);
  Future<UserProfile> create(Session session, UserProfile user);
  Future<UserProfile> update(Session session, UserProfile user);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<UserProfile>> list(Session session, {int? limit, int? offset});
  Future<List<UserProfile>> search(Session session, String query);

  // RBAC methods
  Future<List<SecurityRole>> getRolesForUser(Session session, UuidValue userId);
  Future<void> updateUserRoles(
      Session session, UuidValue userId, List<UuidValue> roleIds);
  Future<List<Company>> listUserCompanies(
      Session session, UuidValue userId, CompanyType? type);
}

class UserProfileRepository implements IUserProfileRepository {
  @override
  Future<UserProfile?> findById(Session session, UuidValue id) async {
    return await UserProfile.db.findById(session, id,
        include: UserProfile.include(address: Address.include()));
  }

  @override
  Future<UserProfile?> findByCpf(Session session, String cpf) async {
    return await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.cpf.equals(cpf),
      include: UserProfile.include(address: Address.include()),
    );
  }

  @override
  Future<UserProfile?> findByUserInfoId(Session session, int userInfoId) async {
    return await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userInfoId.equals(userInfoId),
      include: UserProfile.include(address: Address.include()),
    );
  }

  @override
  Future<UserProfile> create(Session session, UserProfile user) async {
    if (user.address != null) {
      final existing = await Address.db.findById(session, user.address!.id);
      if (existing == null) {
        await Address.db.insertRow(session, user.address!);
      } else {
        await Address.db.updateRow(session, user.address!);
      }
      user.addressId = user.address!.id;
    }
    return await UserProfile.db.insertRow(session, user);
  }

  @override
  Future<UserProfile> update(Session session, UserProfile user) async {
    if (user.address != null) {
      final existing = await Address.db.findById(session, user.address!.id);
      if (existing != null) {
        await Address.db.updateRow(session, user.address!);
      } else {
        await Address.db.insertRow(session, user.address!);
      }
      user.addressId = user.address!.id;
    }
    return await UserProfile.db.updateRow(session, user);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final user = await findById(session, id);
    if (user == null) return false;
    await UserProfile.db.deleteRow(session, user);
    return true;
  }

  @override
  Future<List<UserProfile>> list(Session session,
      {int? limit, int? offset}) async {
    return await UserProfile.db.find(
      session,
      limit: limit,
      offset: offset,
      orderBy: (t) => t.name,
      include: UserProfile.include(address: Address.include()),
    );
  }

  @override
  Future<List<UserProfile>> search(Session session, String query) async {
    final cleanQuery = query.trim();
    if (cleanQuery.isEmpty) return [];

    return await UserProfile.db.find(
      session,
      where: (t) =>
          t.name.ilike('%$cleanQuery%') |
          t.cpf.ilike('%$cleanQuery%') |
          t.email.ilike('%$cleanQuery%') |
          t.phone.ilike('%$cleanQuery%'),
      orderBy: (t) => t.name,
      include: UserProfile.include(address: Address.include()),
    );
  }

  @override
  Future<List<SecurityRole>> getRolesForUser(
      Session session, UuidValue userId) async {
    final userRoles = await UserRole.db.find(
      session,
      where: (t) => t.userProfileId.equals(userId),
      include: UserRole.include(securityRole: SecurityRole.include()),
    );
    return userRoles
        .where((ur) => ur.securityRole != null)
        .map((ur) => ur.securityRole!)
        .toList();
  }

  @override
  Future<void> updateUserRoles(
      Session session, UuidValue userId, List<UuidValue> roleIds) async {
    // Transactional update of roles
    await session.db.transaction((transaction) async {
      // 1. Delete current associations
      await UserRole.db.deleteWhere(
        session,
        where: (t) => t.userProfileId.equals(userId),
        transaction: transaction,
      );

      // 2. Insert new associations
      for (final roleId in roleIds) {
        await UserRole.db.insertRow(
          session,
          UserRole(
            userProfileId: userId,
            securityRoleId: roleId,
          ),
          transaction: transaction,
        );
      }
    });
  }

  @override
  Future<List<Company>> listUserCompanies(
      Session session, UuidValue userId, CompanyType? type) async {
    final userRoles = await UserRole.db.find(
      session,
      where: (t) =>
          t.userProfileId.equals(userId) &
          t.companyId.notEquals(null) &
          t.company.type.equals(type),
      include: UserRole.include(
          company: Company.include(address: Address.include())),
    );

    return userRoles
        .where((ur) => ur.company != null)
        .map((ur) => ur.company!)
        .toList();
  }
}
