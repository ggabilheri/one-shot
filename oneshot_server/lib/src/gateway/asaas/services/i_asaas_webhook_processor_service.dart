import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

abstract class IAsaasWebhookProcessorService {
  /// Recebe o payload bruto do Asaas, persiste o evento e dispara o processamento.
  Future<void> receive(Session session, Map<String, dynamic> payload);

  /// Processa um evento já persistido, despachando para o handler correto.
  Future<void> processEvent(Session session, AsaasWebhookEvent event);
}
