/// DTO de requisição para criar/atualizar configuração de webhook no Asaas.
class AsaasWebhookConfigRequest {
  final String name;
  final String url;
  final String? email;
  final bool enabled;
  final List<String> events;
  /// SEQUENTIALLY | NON_SEQUENTIALLY
  final String sendType;
  final String? authToken;

  const AsaasWebhookConfigRequest({
    required this.name,
    required this.url,
    this.email,
    this.enabled = true,
    required this.events,
    this.sendType = 'SEQUENTIALLY',
    this.authToken,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
        if (email != null) 'email': email,
        'enabled': enabled,
        'events': events,
        'sendType': sendType,
        'apiVersion': 3,
        if (authToken != null) 'authToken': authToken,
      };
}
