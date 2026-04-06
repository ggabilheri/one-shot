/// DTO de requisição para criar parcelamento no Asaas.
class AsaasInstallmentRequest {
  final String customer;
  final String billingType;
  final double value;
  final String dueDate;
  final int installmentCount;
  final String? description;
  final String? externalReference;

  const AsaasInstallmentRequest({
    required this.customer,
    required this.billingType,
    required this.value,
    required this.dueDate,
    required this.installmentCount,
    this.description,
    this.externalReference,
  });

  Map<String, dynamic> toJson() => {
        'customer': customer,
        'billingType': billingType,
        'value': value,
        'dueDate': dueDate,
        'installmentCount': installmentCount,
        if (description != null) 'description': description,
        if (externalReference != null) 'externalReference': externalReference,
      };
}
