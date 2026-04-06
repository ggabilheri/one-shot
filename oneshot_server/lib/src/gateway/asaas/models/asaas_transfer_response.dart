/// DTO de resposta de transferência do Asaas.
class AsaasTransferResponse {
  final String id;
  final double value;
  final String transferType;
  final String status;
  final String? dateCreated;
  final String? scheduleDate;
  final String? description;

  const AsaasTransferResponse({
    required this.id,
    required this.value,
    required this.transferType,
    required this.status,
    this.dateCreated,
    this.scheduleDate,
    this.description,
  });

  factory AsaasTransferResponse.fromJson(Map<String, dynamic> json) =>
      AsaasTransferResponse(
        id: json['id'] as String,
        value: (json['value'] as num).toDouble(),
        transferType: json['transferType'] as String? ?? '',
        status: json['status'] as String? ?? '',
        dateCreated: json['dateCreated'] as String?,
        scheduleDate: json['scheduleDate'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'transferType': transferType,
        'status': status,
        if (dateCreated != null) 'dateCreated': dateCreated,
        if (scheduleDate != null) 'scheduleDate': scheduleDate,
        if (description != null) 'description': description,
      };
}

/// DTO de saldo da conta Asaas.
class AsaasBalanceResponse {
  final double balance;

  const AsaasBalanceResponse({required this.balance});

  factory AsaasBalanceResponse.fromJson(Map<String, dynamic> json) =>
      AsaasBalanceResponse(balance: (json['balance'] as num).toDouble());

  Map<String, dynamic> toJson() => {'balance': balance};
}

/// DTO de transação financeira do extrato Asaas.
class AsaasFinancialTransactionResponse {
  final String id;
  final String type;
  final double value;
  final double balance;
  final String? date;
  final String? description;

  const AsaasFinancialTransactionResponse({
    required this.id,
    required this.type,
    required this.value,
    required this.balance,
    this.date,
    this.description,
  });

  factory AsaasFinancialTransactionResponse.fromJson(
          Map<String, dynamic> json) =>
      AsaasFinancialTransactionResponse(
        id: json['id'] as String,
        type: json['type'] as String? ?? '',
        value: (json['value'] as num).toDouble(),
        balance: (json['balance'] as num).toDouble(),
        date: json['date'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'value': value,
        'balance': balance,
        if (date != null) 'date': date,
        if (description != null) 'description': description,
      };
}
