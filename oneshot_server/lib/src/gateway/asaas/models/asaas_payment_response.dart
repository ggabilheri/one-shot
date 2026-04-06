/// DTO de resposta de pagamento do Asaas.
class AsaasPaymentResponse {
  final String id;
  final String customer;
  final String billingType;
  final double value;
  final double? netValue;
  final String status;
  final String? dueDate;
  final String? description;
  final String? externalReference;
  final String? invoiceUrl;
  final String? bankSlipUrl;
  final String? invoiceNumber;
  final String? confirmedDate;
  final String? paymentDate;
  final AsaasPixQrCodeData? pixQrCode;

  const AsaasPaymentResponse({
    required this.id,
    required this.customer,
    required this.billingType,
    required this.value,
    this.netValue,
    required this.status,
    this.dueDate,
    this.description,
    this.externalReference,
    this.invoiceUrl,
    this.bankSlipUrl,
    this.invoiceNumber,
    this.confirmedDate,
    this.paymentDate,
    this.pixQrCode,
  });

  factory AsaasPaymentResponse.fromJson(Map<String, dynamic> json) =>
      AsaasPaymentResponse(
        id: json['id'] as String,
        customer: json['customer'] as String,
        billingType: json['billingType'] as String? ?? '',
        value: (json['value'] as num).toDouble(),
        netValue: (json['netValue'] as num?)?.toDouble(),
        status: json['status'] as String? ?? '',
        dueDate: json['dueDate'] as String?,
        description: json['description'] as String?,
        externalReference: json['externalReference'] as String?,
        invoiceUrl: json['invoiceUrl'] as String?,
        bankSlipUrl: json['bankSlipUrl'] as String?,
        invoiceNumber: json['invoiceNumber'] as String?,
        confirmedDate: json['confirmedDate'] as String?,
        paymentDate: json['paymentDate'] as String?,
        pixQrCode: json['pixQrCode'] != null
            ? AsaasPixQrCodeData.fromJson(
                json['pixQrCode'] as Map<String, dynamic>)
            : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'customer': customer,
        'billingType': billingType,
        'value': value,
        'status': status,
        if (netValue != null) 'netValue': netValue,
        if (dueDate != null) 'dueDate': dueDate,
        if (description != null) 'description': description,
        if (externalReference != null) 'externalReference': externalReference,
        if (invoiceUrl != null) 'invoiceUrl': invoiceUrl,
        if (bankSlipUrl != null) 'bankSlipUrl': bankSlipUrl,
        if (invoiceNumber != null) 'invoiceNumber': invoiceNumber,
        if (confirmedDate != null) 'confirmedDate': confirmedDate,
        if (paymentDate != null) 'paymentDate': paymentDate,
        if (pixQrCode != null) 'pixQrCode': pixQrCode!.toJson(),
      };
}

/// Dados do QR Code Pix embutidos na resposta de pagamento.
class AsaasPixQrCodeData {
  final String? encodedImage;
  final String? payload;
  final String? expirationDate;

  const AsaasPixQrCodeData({
    this.encodedImage,
    this.payload,
    this.expirationDate,
  });

  factory AsaasPixQrCodeData.fromJson(Map<String, dynamic> json) =>
      AsaasPixQrCodeData(
        encodedImage: json['encodedImage'] as String?,
        payload: json['payload'] as String?,
        expirationDate: json['expirationDate'] as String?,
      );

  Map<String, dynamic> toJson() => {
        if (encodedImage != null) 'encodedImage': encodedImage,
        if (payload != null) 'payload': payload,
        if (expirationDate != null) 'expirationDate': expirationDate,
      };
}
