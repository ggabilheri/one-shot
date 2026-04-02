import 'package:oneshot_server/src/domain/repositories/i_firearm_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Implementação do Repositório de Armas usando o DB do Serverpod.
class FirearmRepository implements IFirearmRepository {
  @override
  Future<Firearm> create(Session session, Firearm firearm) async {
    return await Firearm.db.insertRow(session, firearm);
  }

  @override
  Future<Firearm?> findById(Session session, UuidValue id) async {
    return await Firearm.db.findById(session, id);
  }

  @override
  Future<List<Firearm>> findByUserId(Session session, int userId) async {
    return await Firearm.db.find(
      session,
      where: (t) => t.userInfoId.equals(userId),
    );
  }

  @override
  Future<Firearm> update(Session session, Firearm firearm) async {
    return await Firearm.db.updateRow(session, firearm);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final result = await Firearm.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return result.isNotEmpty;
  }
}
