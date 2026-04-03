import 'package:oneshot_server/src/core/repository/user_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

/// Interface para garantir a existência de um perfil de usuário.
abstract class IGetOrCreateProfileUseCase {
  Future<UserProfile> execute(Session session);
}

/// Implementação da lógica de vinculação Auth -> Domínio.
class GetOrCreateProfileUseCase implements IGetOrCreateProfileUseCase {
  final IUserProfileRepository _userProfileRepository;

  GetOrCreateProfileUseCase(this._userProfileRepository);

  @override
  Future<UserProfile> execute(Session session) async {
    final authInfo = await session.authenticated;
    if (authInfo == null) throw Exception('Não autorizado.');
    final userId = authInfo.userId;

    // 1. Verificar se o perfil já existe para este Auth ID.
    var profile =
        await _userProfileRepository.findByUserInfoId(session, userId);

    if (profile == null) {
      // 2. Se não existir, buscar dados do UserInfo do módulo auth.
      final userInfo = await auth.UserInfo.db.findById(session, userId);

      // 3. Criar o novo perfil básico.
      profile = UserProfile(
        userInfoId: userId,
        name: userInfo?.userName ?? 'Novo Atirador',
        types: [UserType.shooter], // Default para todo novo usuário.
        status: UserStatus.active,
      );

      profile = await _userProfileRepository.create(session, profile);
    }

    return profile;
  }
}
