import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para repositório de armas de fogo.
abstract class IFirearmRepository {
  Future<Firearm> create(Session session, Firearm firearm);
  Future<Firearm?> findById(Session session, UuidValue id);
  Future<List<Firearm>> findByUserId(Session session, int userId);
  Future<Firearm> update(Session session, Firearm firearm);
  Future<bool> delete(Session session, UuidValue id);
}
