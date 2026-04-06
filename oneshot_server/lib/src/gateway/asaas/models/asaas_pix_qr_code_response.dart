/// DTO de resposta do QR Code Pix de um pagamento.
class AsaasPixQrCodeResponse {
  final String encodedImage;
  final String payload;
  final String? expirationDate;
  final bool? allowsMultiplePayments;

  const AsaasPixQrCodeResponse({
    required this.encodedImage,
    required this.payload,
    this.expirationDate,
    this.allowsMultiplePayments,
  });

  factory AsaasPixQrCodeResponse.fromJson(Map<String, dynamic> json) =>
      AsaasPixQrCodeResponse(
        encodedImage: json['encodedImage'] as String? ?? '',
        payload: json['payload'] as String? ?? '',
        expirationDate: json['expirationDate'] as String?,
        allowsMultiplePayments: json['allowsMultiplePayments'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'encodedImage': encodedImage,
        'payload': payload,
        if (expirationDate != null) 'expirationDate': expirationDate,
        if (allowsMultiplePayments != null)
          'allowsMultiplePayments': allowsMultiplePayments,
      };
}
