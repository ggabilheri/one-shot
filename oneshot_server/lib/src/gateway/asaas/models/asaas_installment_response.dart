/// DTO de resposta de parcelamento do Asaas.
class AsaasInstallmentResponse {
  final String id;
  final String customer;
  final String billingType;
  final double value;
  final int installmentCount;
  final String status;
  final String? description;
  final String? externalReference;
  final String? dueDate;
  final String? dateCreated;

  const AsaasInstallmentResponse({
    required this.id,
    required this.customer,
    required this.billingType,
    required this.value,
    required this.installmentCount,
    required this.status,
    this.description,
    this.externalReference,
    this.dueDate,
    this.dateCreated,
  });

  factory AsaasInstallmentResponse.fromJson(Map<String, dynamic> json) =>
      AsaasInstallmentResponse(
        id: json['id'] as String,
        customer: json['customer'] as String? ?? '',
        billingType: json['billingType'] as String? ?? '',
        value: (json['value'] as num).toDouble(),
        installmentCount: json['installmentCount'] as int? ?? 0,
        status: json['status'] as String? ?? '',
        description: json['description'] as String?,
        externalReference: json['externalReference'] as String?,
        dueDate: json['dueDate'] as String?,
        dateCreated: json['dateCreated'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'customer': customer,
        'billingType': billingType,
        'value': value,
        'installmentCount': installmentCount,
        'status': status,
        if (description != null) 'description': description,
        if (externalReference != null) 'externalReference': externalReference,
        if (dueDate != null) 'dueDate': dueDate,
        if (dateCreated != null) 'dateCreated': dateCreated,
      };
}
