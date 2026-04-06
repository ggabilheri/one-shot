/// DTO de requisição para criação/atualização de cliente no Asaas.
class AsaasCustomerRequest {
  final String name;
  final String cpfCnpj;
  final String? email;
  final String? phone;
  final String? mobilePhone;
  final String? address;
  final String? addressNumber;
  final String? complement;
  final String? province;
  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;
  final String? externalReference;
  final bool? notificationDisabled;

  const AsaasCustomerRequest({
    required this.name,
    required this.cpfCnpj,
    this.email,
    this.phone,
    this.mobilePhone,
    this.address,
    this.addressNumber,
    this.complement,
    this.province,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.externalReference,
    this.notificationDisabled,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'cpfCnpj': cpfCnpj,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        if (mobilePhone != null) 'mobilePhone': mobilePhone,
        if (address != null) 'address': address,
        if (addressNumber != null) 'addressNumber': addressNumber,
        if (complement != null) 'complement': complement,
        if (province != null) 'province': province,
        if (city != null) 'city': city,
        if (state != null) 'state': state,
        if (country != null) 'country': country,
        if (postalCode != null) 'postalCode': postalCode,
        if (externalReference != null) 'externalReference': externalReference,
        if (notificationDisabled != null)
          'notificationDisabled': notificationDisabled,
      };
}
