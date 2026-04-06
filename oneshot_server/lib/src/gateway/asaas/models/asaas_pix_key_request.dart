/// DTO de requisição para criar chave Pix no Asaas.
class AsaasPixKeyRequest {
  /// Tipo da chave. Atualmente a API suporta apenas 'EVP' (chave aleatória).
  final String type;

  const AsaasPixKeyRequest({this.type = 'EVP'});

  Map<String, dynamic> toJson() => {'type': type};
}
