/// DTO de requisição para criar pagamento no Asaas.
class AsaasPaymentRequest {
  final String customer;
  final String billingType; // BOLETO | PIX | CREDIT_CARD | DEBIT_CARD | UNDEFINED
  final double value;
  final String dueDate; // formato: YYYY-MM-DD
  final String? description;
  final String? externalReference;
  final int? installmentCount;
  final double? installmentValue;
  final bool? postalService;

  const AsaasPaymentRequest({
    required this.customer,
    required this.billingType,
    required this.value,
    required this.dueDate,
    this.description,
    this.externalReference,
    this.installmentCount,
    this.installmentValue,
    this.postalService,
  });

  Map<String, dynamic> toJson() => {
        'customer': customer,
        'billingType': billingType,
        'value': value,
        'dueDate': dueDate,
        if (description != null) 'description': description,
        if (externalReference != null) 'externalReference': externalReference,
        if (installmentCount != null) 'installmentCount': installmentCount,
        if (installmentValue != null) 'installmentValue': installmentValue,
        if (postalService != null) 'postalService': postalService,
      };
}
