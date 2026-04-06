import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_config.dart';
import 'package:oneshot_server/src/gateway/asaas/core/asaas_http_client.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_credit_card_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/models/asaas_payment_request.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories_impl/asaas_payment_repository_impl.dart';
import 'package:oneshot_server/src/gateway/asaas/services/asaas_payment_service.dart';

class AsaasPaymentEndpoint extends Endpoint {
  AsaasPaymentService _service(Session session) {
    final config = AsaasConfig.fromSession(session);
    final client = AsaasHttpClient(config);
    final repository = AsaasPaymentRepositoryImpl(client);
    return AsaasPaymentService(repository);
  }

  Future<Map<String, dynamic>> createPayment(
      Session session, Map<String, dynamic> requestData) async {
    final request = AsaasPaymentRequest(
      customer: requestData['customer'] as String,
      billingType: requestData['billingType'] as String,
      value: (requestData['value'] as num).toDouble(),
      dueDate: requestData['dueDate'] as String,
      description: requestData['description'] as String?,
      externalReference: requestData['externalReference'] as String?,
      installmentCount: requestData['installmentCount'] as int?,
      installmentValue: (requestData['installmentValue'] as num?)?.toDouble(),
    );
    final result = await _service(session).createPayment(request);
    return result.toJson();
  }

  Future<List<Map<String, dynamic>>> listPayments(
      Session session, {String? customer, String? status, int? limit, int? offset}) async {
    final result = await _service(session).listPayments(
      customer: customer, status: status, limit: limit, offset: offset,
    );
    return result.map((p) => p.toJson()).toList();
  }

  Future<Map<String, dynamic>> captureAuthorizedPayment(
      Session session, String paymentId) async {
    final result = await _service(session).captureAuthorizedPayment(paymentId);
    return result.toJson();
  }

  Future<Map<String, dynamic>> payWithCreditCard(
      Session session, String paymentId, Map<String, dynamic> requestData) async {
    final cardData = requestData['creditCard'] as Map<String, dynamic>;
    final holderData = requestData['creditCardHolderInfo'] as Map<String, dynamic>;
    final request = AsaasCreditCardPaymentRequest(
      creditCard: AsaasCreditCard(
        holderName: cardData['holderName'] as String,
        number: cardData['number'] as String,
        expiryMonth: cardData['expiryMonth'] as String,
        expiryYear: cardData['expiryYear'] as String,
        ccv: cardData['ccv'] as String,
      ),
      creditCardHolderInfo: AsaasCreditCardHolderInfo(
        name: holderData['name'] as String,
        email: holderData['email'] as String,
        cpfCnpj: holderData['cpfCnpj'] as String,
        postalCode: holderData['postalCode'] as String,
        addressNumber: holderData['addressNumber'] as String,
        phone: holderData['phone'] as String,
      ),
      remoteIp: requestData['remoteIp'] as String?,
    );
    final result = await _service(session).payWithCreditCard(paymentId, request);
    return result.toJson();
  }

  Future<Map<String, dynamic>> getBillingInfo(Session session, String paymentId) async {
    return await _service(session).getBillingInfo(paymentId);
  }

  Future<String> getPaymentStatus(Session session, String paymentId) async {
    return await _service(session).getPaymentStatus(paymentId);
  }

  Future<Map<String, dynamic>> refundPayment(Session session, String paymentId) async {
    final result = await _service(session).refundPayment(paymentId);
    return result.toJson();
  }

  Future<Map<String, dynamic>> getPixQrCode(Session session, String paymentId) async {
    final result = await _service(session).getPixQrCode(paymentId);
    return result.toJson();
  }
}
