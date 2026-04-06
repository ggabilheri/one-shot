/// DTO de requisição para pagamento com cartão de crédito no Asaas.
class AsaasCreditCardPaymentRequest {
  final AsaasCreditCard creditCard;
  final AsaasCreditCardHolderInfo creditCardHolderInfo;
  final String? remoteIp;

  const AsaasCreditCardPaymentRequest({
    required this.creditCard,
    required this.creditCardHolderInfo,
    this.remoteIp,
  });

  Map<String, dynamic> toJson() => {
        'creditCard': creditCard.toJson(),
        'creditCardHolderInfo': creditCardHolderInfo.toJson(),
        if (remoteIp != null) 'remoteIp': remoteIp,
      };
}

/// Dados do cartão de crédito (tokenizados para o Asaas).
class AsaasCreditCard {
  final String holderName;
  final String number;
  final String expiryMonth;
  final String expiryYear;
  final String ccv;

  const AsaasCreditCard({
    required this.holderName,
    required this.number,
    required this.expiryMonth,
    required this.expiryYear,
    required this.ccv,
  });

  Map<String, dynamic> toJson() => {
        'holderName': holderName,
        'number': number,
        'expiryMonth': expiryMonth,
        'expiryYear': expiryYear,
        'ccv': ccv,
      };
}

/// Informações do titular do cartão.
class AsaasCreditCardHolderInfo {
  final String name;
  final String email;
  final String cpfCnpj;
  final String postalCode;
  final String addressNumber;
  final String? addressComplement;
  final String phone;

  const AsaasCreditCardHolderInfo({
    required this.name,
    required this.email,
    required this.cpfCnpj,
    required this.postalCode,
    required this.addressNumber,
    this.addressComplement,
    required this.phone,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'cpfCnpj': cpfCnpj,
        'postalCode': postalCode,
        'addressNumber': addressNumber,
        if (addressComplement != null) 'addressComplement': addressComplement,
        'phone': phone,
      };
}
