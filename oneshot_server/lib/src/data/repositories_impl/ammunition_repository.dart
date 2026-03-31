import 'package:oneshot_server/src/domain/repositories/i_ammunition_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Munições usando o DB do Serverpod.
class AmmunitionRepository implements IAmmunitionRepository {
  @override
  Future<AmmunitionStock> create(Session session, AmmunitionStock ammo) async {
    return await AmmunitionStock.db.insertRow(session, ammo);
  }

  @override
  Future<AmmunitionStock?> findById(Session session, UuidValue id) async {
    return await AmmunitionStock.db.findById(session, id);
  }

  @override
  Future<List<AmmunitionStock>> findByUserId(Session session, UuidValue userId) async {
    return await AmmunitionStock.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  @override
  Future<AmmunitionStock> update(Session session, AmmunitionStock ammo) async {
    return await AmmunitionStock.db.updateRow(session, ammo);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final deleted = await AmmunitionStock.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }

  @override
  Future<AmmunitionStock> adjustQuantity(Session session, UuidValue id, int change) async {
    final ammo = await AmmunitionStock.db.findById(session, id);
    if (ammo == null) throw Exception('Estoque de munição não encontrado.');
    
    ammo.quantity += change;
    if (ammo.quantity < 0) ammo.quantity = 0; // Evita estoque negativo
    
    return await AmmunitionStock.db.updateRow(session, ammo);
  }
}
