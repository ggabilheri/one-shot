/// DTO de transação Pix retornada pelo Asaas.
class AsaasPixTransactionResponse {
  final String id;
  final String type;
  final double value;
  final String? status;
  final String? dateCreated;
  final String? endToEndIdentifier;
  final String? description;

  const AsaasPixTransactionResponse({
    required this.id,
    required this.type,
    required this.value,
    this.status,
    this.dateCreated,
    this.endToEndIdentifier,
    this.description,
  });

  factory AsaasPixTransactionResponse.fromJson(Map<String, dynamic> json) =>
      AsaasPixTransactionResponse(
        id: json['id'] as String,
        type: json['type'] as String? ?? '',
        value: (json['value'] as num).toDouble(),
        status: json['status'] as String?,
        dateCreated: json['dateCreated'] as String?,
        endToEndIdentifier: json['endToEndIdentifier'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'value': value,
        if (status != null) 'status': status,
        if (dateCreated != null) 'dateCreated': dateCreated,
        if (endToEndIdentifier != null)
          'endToEndIdentifier': endToEndIdentifier,
        if (description != null) 'description': description,
      };
}
