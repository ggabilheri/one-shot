import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:oneshot_server/src/generated/protocol.dart';

/// Handler responsável por processar eventos de status de conta recebidos via webhook do Asaas.
class AccountEventHandler {
  Future<void> handleAccountApproved(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final accountId = payload['account']?['id'] as String?;
      session.log(
        'AccountEventHandler: conta/documento $accountId aprovado(a) no Asaas.',
        level: LogLevel.info,
      );
    } catch (e) {
      session.log('AccountEventHandler.handleAccountApproved error: $e', level: LogLevel.error);
      rethrow;
    }
  }

  Future<void> handleAccountRejected(Session session, AsaasWebhookEvent event) async {
    try {
      final payload = jsonDecode(event.payload) as Map<String, dynamic>;
      final accountId = payload['account']?['id'] as String?;
      final reason = payload['account']?['observations'] as String?;
      session.log(
        'AccountEventHandler: conta/documento $accountId rejeitado(a) no Asaas. Motivo: $reason',
        level: LogLevel.warning,
      );
    } catch (e) {
      session.log('AccountEventHandler.handleAccountRejected error: $e', level: LogLevel.error);
      rethrow;
    }
  }
}
