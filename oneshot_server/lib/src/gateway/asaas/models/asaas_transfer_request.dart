/// DTO de requisição de transferência no Asaas.
class AsaasTransferRequest {
  final double value;
  /// PIX | TED | INTERNAL
  final String transferType;
  final String? pixAddressKey;
  final String? pixAddressKeyType;
  final AsaasTransferBankAccount? bankAccount;
  final String? description;
  final String? scheduleDate;

  const AsaasTransferRequest({
    required this.value,
    required this.transferType,
    this.pixAddressKey,
    this.pixAddressKeyType,
    this.bankAccount,
    this.description,
    this.scheduleDate,
  });

  Map<String, dynamic> toJson() => {
        'value': value,
        'transferType': transferType,
        if (pixAddressKey != null) 'pixAddressKey': pixAddressKey,
        if (pixAddressKeyType != null) 'pixAddressKeyType': pixAddressKeyType,
        if (bankAccount != null) 'bankAccount': bankAccount!.toJson(),
        if (description != null) 'description': description,
        if (scheduleDate != null) 'scheduleDate': scheduleDate,
      };
}

/// Dados da conta bancária de destino para transferência TED.
class AsaasTransferBankAccount {
  final String bank;
  final String accountName;
  final String ownerName;
  final String cpfCnpj;
  final String agency;
  final String account;
  final String accountDigit;
  final String bankAccountType;

  const AsaasTransferBankAccount({
    required this.bank,
    required this.accountName,
    required this.ownerName,
    required this.cpfCnpj,
    required this.agency,
    required this.account,
    required this.accountDigit,
    required this.bankAccountType,
  });

  Map<String, dynamic> toJson() => {
        'bank': bank,
        'accountName': accountName,
        'ownerName': ownerName,
        'cpfCnpj': cpfCnpj,
        'agency': agency,
        'account': account,
        'accountDigit': accountDigit,
        'bankAccountType': bankAccountType,
      };
}
