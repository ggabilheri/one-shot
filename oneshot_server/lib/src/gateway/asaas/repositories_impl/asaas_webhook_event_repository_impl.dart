import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/gateway/asaas/repositories/i_asaas_webhook_event_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

class AsaasWebhookEventRepositoryImpl implements IAsaasWebhookEventRepository {
  @override
  Future<AsaasWebhookEvent> create(Session session, AsaasWebhookEvent event) async {
    try {
      return await AsaasWebhookEvent.db.insertRow(session, event);
    } catch (e) {
      throw Exception('Erro ao persistir evento de webhook Asaas: $e');
    }
  }

  @override
  Future<AsaasWebhookEvent?> findByEventId(Session session, String eventId) async {
    try {
      final results = await AsaasWebhookEvent.db.find(
        session,
        where: (t) => t.eventId.equals(eventId),
        limit: 1,
      );
      return results.firstOrNull;
    } catch (e) {
      throw Exception('Erro ao buscar evento de webhook por ID $eventId: $e');
    }
  }

  @override
  Future<List<AsaasWebhookEvent>> listUnprocessed(Session session, {int limit = 50}) async {
    try {
      return await AsaasWebhookEvent.db.find(
        session,
        where: (t) => t.processed.equals(false),
        orderBy: (t) => t.receivedAt,
        limit: limit,
      );
    } catch (e) {
      throw Exception('Erro ao listar eventos não processados: $e');
    }
  }

  @override
  Future<AsaasWebhookEvent> markAsProcessed(Session session, AsaasWebhookEvent event) async {
    try {
      final updated = event.copyWith(
        processed: true,
        processedAt: DateTime.now().toUtc(),
        error: null,
      );
      return await AsaasWebhookEvent.db.updateRow(session, updated);
    } catch (e) {
      throw Exception('Erro ao marcar evento como processado: $e');
    }
  }

  @override
  Future<AsaasWebhookEvent> markAsError(Session session, AsaasWebhookEvent event, String errorMessage) async {
    try {
      final updated = event.copyWith(
        processed: false,
        error: errorMessage,
      );
      return await AsaasWebhookEvent.db.updateRow(session, updated);
    } catch (e) {
      throw Exception('Erro ao registrar falha no processamento do evento: $e');
    }
  }
}
