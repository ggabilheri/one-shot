import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AccessoryEndpoint extends Endpoint {
  Future<Accessory?> getById(Session session, UuidValue id) async {
    return await sl.accessoryRepository.findById(session, id);
  }

  Future<Accessory> create(Session session, Accessory accessory) async {
    return await sl.accessoryRepository.create(session, accessory);
  }

  Future<Accessory> update(Session session, Accessory accessory) async {
    return await sl.accessoryRepository.update(session, accessory);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.accessoryRepository.delete(session, id);
  }

  Future<List<Accessory>> listByUser(Session session, UuidValue userId, {int? limit, int? offset}) async {
    return await sl.accessoryRepository.listByUser(session, userId, limit: limit, offset: offset);
  }
}
