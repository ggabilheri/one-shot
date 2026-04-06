/// DTO de requisição para criar subconta no Asaas.
class AsaasAccountRequest {
  final String name;
  final String email;
  final String cpfCnpj;
  final String? birthDate;
  final String? companyType;
  final String? phone;
  final String? mobilePhone;
  final String? address;
  final String? addressNumber;
  final String? province;
  final String? postalCode;

  const AsaasAccountRequest({
    required this.name,
    required this.email,
    required this.cpfCnpj,
    this.birthDate,
    this.companyType,
    this.phone,
    this.mobilePhone,
    this.address,
    this.addressNumber,
    this.province,
    this.postalCode,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'cpfCnpj': cpfCnpj,
        if (birthDate != null) 'birthDate': birthDate,
        if (companyType != null) 'companyType': companyType,
        if (phone != null) 'phone': phone,
        if (mobilePhone != null) 'mobilePhone': mobilePhone,
        if (address != null) 'address': address,
        if (addressNumber != null) 'addressNumber': addressNumber,
        if (province != null) 'province': province,
        if (postalCode != null) 'postalCode': postalCode,
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

  const AsaasAccountResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.cpfCnpj,
    this.walletId,
    this.status,
  });

  factory AsaasAccountResponse.fromJson(Map<String, dynamic> json) =>
      AsaasAccountResponse(
        id: json['id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
        cpfCnpj: json['cpfCnpj'] as String? ?? '',
        walletId: json['walletId'] as String?,
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'cpfCnpj': cpfCnpj,
        if (walletId != null) 'walletId': walletId,
        if (status != null) 'status': status,
      };
}
