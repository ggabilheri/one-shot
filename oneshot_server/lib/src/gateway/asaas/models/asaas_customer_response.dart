/// DTO de resposta do cliente Asaas.
class AsaasCustomerResponse {
  final String id;
  final String name;
  final String cpfCnpj;
  final String? email;
  final String? phone;
  final String? mobilePhone;
  final String? address;
  final String? addressNumber;
  final String? province;
  final String? city;
  final String? state;
  final String? postalCode;
  final String? externalReference;
  final bool notificationDisabled;
  final bool deleted;
  final String? additionalEmails;

  const AsaasCustomerResponse({
    required this.id,
    required this.name,
    required this.cpfCnpj,
    this.email,
    this.phone,
    this.mobilePhone,
    this.address,
    this.addressNumber,
    this.province,
    this.city,
    this.state,
    this.postalCode,
    this.externalReference,
    this.notificationDisabled = false,
    this.deleted = false,
    this.additionalEmails,
  });

  factory AsaasCustomerResponse.fromJson(Map<String, dynamic> json) =>
      AsaasCustomerResponse(
        id: json['id'] as String,
        name: json['name'] as String,
        cpfCnpj: json['cpfCnpj'] as String? ?? '',
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        mobilePhone: json['mobilePhone'] as String?,
        address: json['address'] as String?,
        addressNumber: json['addressNumber'] as String?,
        province: json['province'] as String?,
        city: json['city'] as String?,
        state: json['state'] as String?,
        postalCode: json['postalCode'] as String?,
        externalReference: json['externalReference'] as String?,
        notificationDisabled: json['notificationDisabled'] as bool? ?? false,
        deleted: json['deleted'] as bool? ?? false,
        additionalEmails: json['additionalEmails'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'cpfCnpj': cpfCnpj,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (mobilePhone != null) 'mobilePhone': mobilePhone,
        if (address != null) 'address': address,
        if (addressNumber != null) 'addressNumber': addressNumber,
        if (province != null) 'province': province,
        if (city != null) 'city': city,
        if (state != null) 'state': state,
        if (postalCode != null) 'postalCode': postalCode,
        if (externalReference != null) 'externalReference': externalReference,
        'notificationDisabled': notificationDisabled,
        'deleted': deleted,
        if (additionalEmails != null) 'additionalEmails': additionalEmails,
      };
}

/// Lista paginada de clientes retornada pelo Asaas.
class AsaasCustomerListResponse {
  final int totalCount;
  final bool hasMore;
  final List<AsaasCustomerResponse> data;

  const AsaasCustomerListResponse({
    required this.totalCount,
    required this.hasMore,
    required this.data,
  });

  factory AsaasCustomerListResponse.fromJson(Map<String, dynamic> json) =>
      AsaasCustomerListResponse(
        totalCount: json['totalCount'] as int? ?? 0,
        hasMore: json['hasMore'] as bool? ?? false,
        data: (json['data'] as List<dynamic>? ?? [])
            .whereType<Map<String, dynamic>>()
            .map(AsaasCustomerResponse.fromJson)
            .toList(),
      );
}
