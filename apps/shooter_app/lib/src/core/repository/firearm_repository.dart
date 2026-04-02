import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/main.dart';

abstract class IFirearmRepository {
  Future<Firearm> create(Firearm firearm);
  Future<Firearm?> getById(UuidValue id);
  Future<Firearm> update(Firearm firearm);
  Future<bool> delete(UuidValue id);
  Future<List<Firearm>> listByUser(UuidValue userId, {int offset = 0, int limit = 20});
}

class FirearmRepository implements IFirearmRepository {
  @override
  Future<Firearm> create(Firearm firearm) async {
    return await client.firearm.create(firearm);
  }

  @override
  Future<Firearm?> getById(UuidValue id) async {
    return await client.firearm.getById(id);
  }

  @override
  Future<Firearm> update(Firearm firearm) async {
    return await client.firearm.update(firearm);
  }

  @override
  Future<bool> delete(UuidValue id) async {
    return await client.firearm.delete(id);
  }

  @override
  Future<List<Firearm>> listByUser(UuidValue userId, {int offset = 0, int limit = 20}) async {
    return await client.firearm.listByUser(userId, offset: offset, limit: limit);
  }
}
