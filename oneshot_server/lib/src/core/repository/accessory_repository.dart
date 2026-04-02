import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class IAccessoryRepository {
  Future<Accessory?> findById(Session session, UuidValue id);
  Future<Accessory> create(Session session, Accessory accessory);
  Future<Accessory> update(Session session, Accessory accessory);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<Accessory>> listByUser(Session session, UuidValue userId,
      {int? limit, int? offset});
}

class AccessoryRepository implements IAccessoryRepository {
  @override
  Future<Accessory?> findById(Session session, UuidValue id) async {
    return await Accessory.db.findById(session, id);
  }

  @override
  Future<Accessory> create(Session session, Accessory accessory) async {
    return await Accessory.db.insertRow(session, accessory);
  }

  @override
  Future<Accessory> update(Session session, Accessory accessory) async {
    return await Accessory.db.updateRow(session, accessory);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final accessory = await findById(session, id);
    if (accessory == null) return false;
    await Accessory.db.deleteRow(session, accessory);
    return true;
  }

  @override
  Future<List<Accessory>> listByUser(Session session, UuidValue userId,
      {int? limit, int? offset}) async {
    return await Accessory.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      limit: limit,
      offset: offset,
      orderBy: (t) => t.id,
    );
  }
}
