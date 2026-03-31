import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para repositório de estoque de munições.
abstract class IAmmunitionRepository {
  Future<AmmunitionStock> create(Session session, AmmunitionStock ammo);
  Future<AmmunitionStock?> findById(Session session, UuidValue id);
  Future<List<AmmunitionStock>> findByUserId(Session session, UuidValue userId);
  Future<AmmunitionStock> update(Session session, AmmunitionStock ammo);
  Future<bool> delete(Session session, UuidValue id);
  
  /// Ajusta a quantidade em estoque (entrada ou saída).
  Future<AmmunitionStock> adjustQuantity(Session session, UuidValue id, int change);
}
