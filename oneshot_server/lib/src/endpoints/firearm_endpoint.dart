import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FirearmEndpoint extends Endpoint {
  Future<Firearm?> getById(Session session, UuidValue id) async {
    return await sl.firearmRepository.findById(session, id);
  }

  Future<Firearm?> getBySerialNumber(Session session, String serialNumber) async {
    return await sl.firearmRepository.findBySerialNumber(session, serialNumber);
  }

  Future<Firearm> create(Session session, Firearm firearm) async {
    return await sl.firearmRepository.create(session, firearm);
  }

  Future<Firearm> update(Session session, Firearm firearm) async {
    return await sl.firearmRepository.update(session, firearm);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.firearmRepository.delete(session, id);
  }

  Future<List<Firearm>> listByUser(Session session, UuidValue userId, {int? limit, int? offset}) async {
    return await sl.firearmRepository.listByUser(session, userId, limit: limit, offset: offset);
  }
}
