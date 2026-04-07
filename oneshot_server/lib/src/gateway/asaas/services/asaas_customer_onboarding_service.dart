import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_customer_response.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_customer_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_customer_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Serviço de onboarding de customer Asaas para um [UserProfile].
///
/// Cria o customer no Asaas usando os dados do perfil do usuário.
/// A operação é **não-bloqueante**: em caso de falha, o erro é registrado
/// no campo [UserProfile.asaasOnboardingFailureReason] e o perfil local
/// não é revertido.
class AsaasCustomerOnboardingService {
  AsaasCustomerService _buildService(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasCustomerRepositoryImpl(client);
    return AsaasCustomerService(repository);
  }

  /// Cria um customer no Asaas para o [profile] informado.
  ///
  /// Retorna o [AsaasCustomerResponse] em caso de sucesso.
  /// Retorna `null` e registra o motivo em [profile.asaasOnboardingFailureReason]
  /// em caso de falha ou dado obrigatório ausente (cpf).
  ///
  /// O [profile] é passado por referência mas não é salvo aqui — o chamador
  /// é responsável por persistir o objeto atualizado.
  Future<AsaasCustomerResponse?> createCustomerForProfile(
    Session session,
    UserProfile profile,
  ) async {
    // CPF é obrigatório no Asaas
    final cpf = profile.cpf;
    if (cpf == null || cpf.isEmpty) {
      session.log(
        'AsaasCustomerOnboardingService: CPF não preenchido para o perfil '
        '${profile.name} (${profile.id}). Customer Asaas não criado.',
        level: LogLevel.warning,
      );
      return null;
    }

    try {
      final address = profile.address;

      final request = AsaasCustomerRequest(
        name: profile.name,
        cpfCnpj: cpf,
        email: profile.email,
        phone: profile.phone,
        mobilePhone: profile.phone,
        // Endereço — campos opcionais, preenchidos se disponíveis
        address: address?.street,
        addressNumber: address?.number,
        complement: address?.complement,
        province: address?.neighborhood,
        city: address?.city,
        state: address?.state,
        postalCode: address?.zipCode,
        country: 'Brasil',
        // Referência externa para rastrear o perfil local
        externalReference: profile.id.toString(),
      );

      final response = await _buildService(session).createCustomer(request);
      session.log(
        'AsaasCustomerOnboardingService: customer criado para ${profile.name} '
        '— asaasCustomerId: ${response.id}',
        level: LogLevel.info,
      );
      return response;
    } on AsaasException catch (e) {
      session.log(
        'AsaasCustomerOnboardingService: falha ao criar customer para '
        '${profile.name}: ${e.message}',
        level: LogLevel.error,
      );
      // Propaga a mensagem de erro para ser salva no perfil
      throw AsaasOnboardingException(e.message);
    } catch (e) {
      session.log(
        'AsaasCustomerOnboardingService: erro inesperado ao criar customer '
        'para ${profile.name}: $e',
        level: LogLevel.error,
      );
      throw AsaasOnboardingException('Erro inesperado: $e');
    }
  }
}

/// Exceção interna para propagar a mensagem de erro do onboarding Asaas.
class AsaasOnboardingException implements Exception {
  final String message;
  AsaasOnboardingException(this.message);

  @override
  String toString() => 'AsaasOnboardingException: $message';
}
