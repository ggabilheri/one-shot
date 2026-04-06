import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

abstract class IAsaasWebhookEventRepository {
  Future<AsaasWebhookEvent> create(Session session, AsaasWebhookEvent event);
  Future<AsaasWebhookEvent?> findByEventId(Session session, String eventId);
  Future<List<AsaasWebhookEvent>> listUnprocessed(Session session, {int limit = 50});
  Future<AsaasWebhookEvent> markAsProcessed(Session session, AsaasWebhookEvent event);
  Future<AsaasWebhookEvent> markAsError(Session session, AsaasWebhookEvent event, String errorMessage);
}
