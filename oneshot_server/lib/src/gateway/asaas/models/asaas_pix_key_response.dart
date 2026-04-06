/// DTO de resposta de chave Pix do Asaas.
class AsaasPixKeyResponse {
  final String id;
  final String key;
  final String type;
  final String status;
  final String? dateCreated;
  final bool canBeDeleted;
  final String? cannotBeDeletedReason;
  final AsaasPixKeyQrCode? qrCode;

  const AsaasPixKeyResponse({
    required this.id,
    required this.key,
    required this.type,
    required this.status,
    this.dateCreated,
    this.canBeDeleted = true,
    this.cannotBeDeletedReason,
    this.qrCode,
  });

  factory AsaasPixKeyResponse.fromJson(Map<String, dynamic> json) =>
      AsaasPixKeyResponse(
        id: json['id'] as String,
        key: json['key'] as String,
        type: json['type'] as String? ?? 'EVP',
        status: json['status'] as String? ?? '',
        dateCreated: json['dateCreated'] as String?,
        canBeDeleted: json['canBeDeleted'] as bool? ?? true,
        cannotBeDeletedReason: json['cannotBeDeletedReason'] as String?,
        qrCode: json['qrCode'] != null
            ? AsaasPixKeyQrCode.fromJson(json['qrCode'] as Map<String, dynamic>)
            : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'type': type,
        'status': status,
        if (dateCreated != null) 'dateCreated': dateCreated,
        'canBeDeleted': canBeDeleted,
        if (cannotBeDeletedReason != null)
          'cannotBeDeletedReason': cannotBeDeletedReason,
        if (qrCode != null) 'qrCode': qrCode!.toJson(),
      };
}

/// QR Code associado à chave Pix.
class AsaasPixKeyQrCode {
  final String? encodedImage;
  final String? payload;

  const AsaasPixKeyQrCode({this.encodedImage, this.payload});

  factory AsaasPixKeyQrCode.fromJson(Map<String, dynamic> json) =>
      AsaasPixKeyQrCode(
        encodedImage: json['encodedImage'] as String?,
        payload: json['payload'] as String?,
      );

  Map<String, dynamic> toJson() => {
        if (encodedImage != null) 'encodedImage': encodedImage,
        if (payload != null) 'payload': payload,
      };
}
