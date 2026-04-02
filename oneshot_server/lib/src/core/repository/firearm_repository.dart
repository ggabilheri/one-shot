import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class IFirearmRepository {
  Future<Firearm?> findById(Session session, UuidValue id);
  Future<Firearm?> findBySerialNumber(Session session, String serialNumber);
  Future<Firearm> create(Session session, Firearm firearm);
  Future<Firearm> update(Session session, Firearm firearm);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<Firearm>> listByUser(Session session, UuidValue userId, {int? limit, int? offset});
}

class FirearmRepository implements IFirearmRepository {
  @override
  Future<Firearm?> findById(Session session, UuidValue id) async {
    return await Firearm.db.findById(session, id);
  }

  @override
  Future<Firearm?> findBySerialNumber(Session session, String serialNumber) async {
    return await Firearm.db.findFirstRow(
      session,
      where: (t) => t.serialNumber.equals(serialNumber),
    );
  }

  @override
  Future<Firearm> create(Session session, Firearm firearm) async {
    return await Firearm.db.insertRow(session, firearm);
  }

  @override
  Future<Firearm> update(Session session, Firearm firearm) async {
    return await Firearm.db.updateRow(session, firearm);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final firearm = await findById(session, id);
    if (firearm == null) return false;
    await Firearm.db.deleteRow(session, firearm);
    return true;
  }

  @override
  Future<List<Firearm>> listByUser(Session session, UuidValue userId, {int? limit, int? offset}) async {
    return await Firearm.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      limit: limit,
      offset: offset,
      orderBy: (t) => t.id,
    );
  }
}
