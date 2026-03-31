import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract interface class ITrainingRepository {
  Future<Training> insert(Session session, Training training);
  Future<Training?> findById(Session session, UuidValue id);
  Future<List<Training>> findByUserId(Session session, UuidValue userId);
  Future<bool> delete(Session session, UuidValue id);
}
