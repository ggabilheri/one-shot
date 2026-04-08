import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_exception.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_account.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_account_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_account_service.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Serviço de onboarding do Asaas.
///
/// Responsável por criar subcontas Asaas para Clubes e Armeiros no momento
/// do cadastro, buscando o email do proprietário e montando o request correto.
///
/// A criação é **não-bloqueante**: em caso de falha na API Asaas, o erro é
/// apenas logado e o cadastro local prossegue normalmente.
class AsaasOnboardingService {
  AsaasAccountService _buildService(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasAccountRepositoryImpl(client);
    return AsaasAccountService(repository);
  }

  /// Cria subconta Asaas para um [Club] recém-criado.
  ///
  /// O email é sempre buscado do [UserProfile] do proprietário do clube.
  /// Retorna [AsaasAccountResponse] em caso de sucesso. Lança [AppException] em falha.
  Future<AsaasAccountResponse> createSubaccountForClub(
    Session session,
    Club club,
    UserProfile ownerProfile,
  ) async {
    final email = ownerProfile.email;
    if (email == null || email.isEmpty) {
      final msg = 'AsaasOnboardingService: email do proprietário não encontrado para o clube '
          '${club.name} (${club.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    final address = club.address ?? ownerProfile.address;
    if (address == null) {
      final msg = 'AsaasOnboardingService: endereço não encontrado para o clube '
          '${club.name} (${club.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    final phone = club.phoneNumber ?? ownerProfile.phone ?? '';
    if (phone.isEmpty) {
      final msg = 'AsaasOnboardingService: telefone não encontrado para o clube '
          '${club.name} (${club.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    try {
      final request = AsaasAccountRequest(
        name: club.name,
        email: email,
        cpfCnpj: club.cnpj,
        mobilePhone: phone,
        incomeValue: club.incomeValue,
        address: address.street,
        addressNumber: address.number,
        province: address.neighborhood,
        postalCode: address.zipCode,
        complement: address.complement,
        // Clube sempre CNPJ → companyType obrigatório
        companyType: 'LIMITED',
      );

      final response = await _buildService(session).createSubaccount(request);
      session.log(
        'AsaasOnboardingService: subconta criada para clube ${club.name} '
        '— asaasId: ${response.id}',
        level: LogLevel.info,
      );
      return response;
    } on AsaasException catch (e) {
      final msg = 'AsaasOnboardingService: falha ao criar subconta para clube '
          '${club.name} no Asaas: ${e.message}';
      session.log(msg, level: LogLevel.error);
      throw AppException(message: msg);
    } catch (e) {
      final msg = 'AsaasOnboardingService: erro inesperado ao criar subconta para clube '
          '${club.name}: $e';
      session.log(msg, level: LogLevel.error);
      throw AppException(message: msg);
    }
  }

  /// Cria subconta Asaas para um [Gunsmith] recém-criado.
  ///
  /// O email é sempre buscado do [UserProfile] do proprietário da armaria.
  /// O CPF/CNPJ vem de [Gunsmith.taxId].
  /// Retorna [AsaasAccountResponse] em caso de sucesso. Lança [AppException] em falha.
  Future<AsaasAccountResponse> createSubaccountForGunsmith(
    Session session,
    Gunsmith gunsmith,
    UserProfile ownerProfile,
  ) async {
    final email = ownerProfile.email;
    if (email == null || email.isEmpty) {
      final msg = 'AsaasOnboardingService: email do proprietário não encontrado para o armeiro '
          '${gunsmith.name} (${gunsmith.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    final address = gunsmith.address ?? ownerProfile.address;
    if (address == null) {
      final msg = 'AsaasOnboardingService: endereço não encontrado para o armeiro '
          '${gunsmith.name} (${gunsmith.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    final phone = ownerProfile.phone ?? '';
    if (phone.isEmpty) {
      final msg = 'AsaasOnboardingService: telefone não encontrado para o armeiro '
          '${gunsmith.name} (${gunsmith.id}). Subconta Asaas não criada.';
      session.log(msg, level: LogLevel.warning);
      throw AppException(message: msg);
    }

    // taxId pode ser CPF (11 dígitos) ou CNPJ (14 dígitos)
    final taxIdDigits = gunsmith.taxId.replaceAll(RegExp(r'\D'), '');
    final companyType = taxIdDigits.length == 14 ? 'LIMITED' : null;
    // Pessoa física → birthDate obrigatório — usar do perfil do proprietário
    final birthDate = taxIdDigits.length == 11
        ? _formatDate(ownerProfile.birthDate)
        : null;

    try {
      final request = AsaasAccountRequest(
        name: gunsmith.name,
        email: email,
        cpfCnpj: gunsmith.taxId,
        mobilePhone: phone,
        incomeValue: gunsmith.incomeValue,
        address: address.street,
        addressNumber: address.number,
        province: address.neighborhood,
        postalCode: address.zipCode,
        complement: address.complement,
        companyType: companyType,
        birthDate: birthDate,
      );

      final response = await _buildService(session).createSubaccount(request);
      session.log(
        'AsaasOnboardingService: subconta criada para armeiro ${gunsmith.name} '
        '— asaasId: ${response.id}',
        level: LogLevel.info,
      );
      return response;
    } on AsaasException catch (e) {
      final msg = 'AsaasOnboardingService: falha ao criar subconta para armeiro '
          '${gunsmith.name} no Asaas: ${e.message}';
      session.log(msg, level: LogLevel.error);
      throw AppException(message: msg);
    } catch (e) {
      final msg = 'AsaasOnboardingService: erro inesperado ao criar subconta para armeiro '
          '${gunsmith.name}: $e';
      session.log(msg, level: LogLevel.error);
      throw AppException(message: msg);
    }
  }

  String? _formatDate(DateTime? date) {
    if (date == null) return null;
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }
}
