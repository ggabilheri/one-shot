import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

/// Handler responsável por processar eventos de transferência recebidos via webhook do Asaas.
class TransferEventHandler {
  Future<void> handleTransferDone(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final transferId = payload['transfer']?['id'] as String?;
      session.log(
        'TransferEventHandler: transferência $transferId concluída com sucesso.',
        level: LogLevel.info,
      );
    } catch (e) {
      session.log('TransferEventHandler.handleTransferDone error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handleTransferFailed(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final transferId = payload['transfer']?['id'] as String?;
      final failReason = payload['transfer']?['failReason'] as String?;
      session.log(
        'TransferEventHandler: transferência $transferId falhou. Motivo: $failReason',
        level: LogLevel.warning,
      );
    } catch (e) {
      session.log('TransferEventHandler.handleTransferFailed error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handleTransferCancelled(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final transferId = payload['transfer']?['id'] as String?;
      session.log(
        'TransferEventHandler: transferência $transferId cancelada.',
        level: LogLevel.warning,
      );
    } catch (e) {
      session.log('TransferEventHandler.handleTransferCancelled error: $e', level: LogLevel.error);
      rethrow;
    }
  }
}
