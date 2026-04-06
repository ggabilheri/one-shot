/// DTO de requisição para criar subconta no Asaas.
/// Campos obrigatórios pela API: name, email, cpfCnpj, mobilePhone, incomeValue,
/// address, addressNumber, province, postalCode.
class AsaasAccountRequest {
  final String name;
  final String email;
  final String cpfCnpj;
  final String mobilePhone;
  final double incomeValue;
  final String address;
  final String addressNumber;
  final String province;
  final String postalCode;
  final String? birthDate;
  final String? companyType;
  final String? phone;
  final String? complement;

  const AsaasAccountRequest({
    required this.name,
    required this.email,
    required this.cpfCnpj,
    required this.mobilePhone,
    required this.incomeValue,
    required this.address,
    required this.addressNumber,
    required this.province,
    required this.postalCode,
    this.birthDate,
    this.companyType,
    this.phone,
    this.complement,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'cpfCnpj': cpfCnpj,
        'mobilePhone': mobilePhone,
        'incomeValue': incomeValue,
        'address': address,
        'addressNumber': addressNumber,
        'province': province,
        'postalCode': postalCode,
        if (birthDate != null) 'birthDate': birthDate,
        if (companyType != null) 'companyType': companyType,
        if (phone != null) 'phone': phone,
        if (complement != null) 'complement': complement,
      };
}

/// DTO de resposta de subconta criada no Asaas.
class AsaasAccountResponse {
  final String id;
  final String name;
  final String email;
  final String cpfCnpj;
  final String? walletId;
  final String? status;

  /// API key da subconta — armazenar para uso em chamadas futuras em nome da subconta.
  final String? apiKey;

  const AsaasAccountResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.cpfCnpj,
    this.walletId,
    this.status,
    this.apiKey,
  });

  factory AsaasAccountResponse.fromJson(Map<String, dynamic> json) =>
      AsaasAccountResponse(
        id: json['id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
        cpfCnpj: json['cpfCnpj'] as String? ?? '',
        walletId: json['walletId'] as String?,
        status: json['status'] as String?,
        apiKey: json['apiKey'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'cpfCnpj': cpfCnpj,
        if (walletId != null) 'walletId': walletId,
        if (status != null) 'status': status,
        if (apiKey != null) 'apiKey': apiKey,
      };
}
