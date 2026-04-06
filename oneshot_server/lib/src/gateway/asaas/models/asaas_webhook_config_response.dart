/// DTO de resposta de configuração de webhook do Asaas.
class AsaasWebhookConfigResponse {
  final String id;
  final String name;
  final String url;
  final String? email;
  final bool enabled;
  final bool interrupted;
  final List<String> events;
  final String sendType;
  final bool hasAuthToken;
  final int penalizedRequestsCount;

  const AsaasWebhookConfigResponse({
    required this.id,
    required this.name,
    required this.url,
    this.email,
    required this.enabled,
    required this.interrupted,
    required this.events,
    required this.sendType,
    required this.hasAuthToken,
    required this.penalizedRequestsCount,
  });

  factory AsaasWebhookConfigResponse.fromJson(Map<String, dynamic> json) =>
      AsaasWebhookConfigResponse(
        id: json['id'] as String,
        name: json['name'] as String,
        url: json['url'] as String,
        email: json['email'] as String?,
        enabled: json['enabled'] as bool? ?? true,
        interrupted: json['interrupted'] as bool? ?? false,
        events: (json['events'] as List<dynamic>?)
                ?.map((e) => e.toString())
                .toList() ??
            [],
        sendType: json['sendType'] as String? ?? 'SEQUENTIALLY',
        hasAuthToken: json['hasAuthToken'] as bool? ?? false,
        penalizedRequestsCount: json['penalizedRequestsCount'] as int? ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'url': url,
        if (email != null) 'email': email,
        'enabled': enabled,
        'interrupted': interrupted,
        'events': events,
        'sendType': sendType,
        'hasAuthToken': hasAuthToken,
        'penalizedRequestsCount': penalizedRequestsCount,
      };
}
