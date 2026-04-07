import 'package:oneshot_server/src/core/repository/user_repository.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_customer_onboarding_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

/// Interface para garantir a existência de um perfil de usuário.
abstract class IGetOrCreateProfileUseCase {
  Future<UserProfile> execute(Session session);
}

/// Implementação da lógica de vinculação Auth → Domínio.
///
/// Ao criar um novo perfil, também cria o customer correspondente no Asaas
/// usando os dados disponíveis. Em caso de falha no Asaas:
/// - O perfil local é mantido (não-bloqueante)
/// - O motivo da falha é salvo em [UserProfile.asaasOnboardingFailureReason]
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

      // 4. Criar customer no Asaas (não-bloqueante).
      //    Somente ao criar o perfil pela primeira vez.
      profile = await _createAsaasCustomer(session, profile);
    }

    return profile;
  }

  /// Tenta criar o customer no Asaas e atualiza o perfil com o ID retornado
  /// ou com o motivo da falha. Nunca lança exceção — garante que o perfil
  /// local sempre é retornado.
  Future<UserProfile> _createAsaasCustomer(
    Session session,
    UserProfile profile,
  ) async {
    try {
      final onboarding = AsaasCustomerOnboardingService();
      final response =
          await onboarding.createCustomerForProfile(session, profile);

      if (response != null) {
        // Sucesso: persiste o asaasCustomerId
        profile = profile.copyWith(
          asaasCustomerId: response.id,
          asaasOnboardingFailureReason: null,
        );
      }
    } on AsaasOnboardingException catch (e) {
      // Falha conhecida: registra o motivo sem falhar o cadastro local
      profile = profile.copyWith(
        asaasOnboardingFailureReason: e.message,
      );
    } catch (e) {
      // Falha inesperada: idem
      profile = profile.copyWith(
        asaasOnboardingFailureReason: 'Erro inesperado: $e',
      );
    }

    // Persiste a atualização (asaasCustomerId ou asaasOnboardingFailureReason)
    try {
      profile = await _userProfileRepository.update(session, profile);
    } catch (e) {
      session.log(
        'GetOrCreateProfileUseCase: falha ao persistir dados Asaas no perfil '
        '${profile.name}: $e',
        level: LogLevel.error,
      );
    }

    return profile;
  }
}
