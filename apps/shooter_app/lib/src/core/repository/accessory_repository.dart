import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/main.dart';

abstract class IAccessoryRepository {
  Future<Accessory> create(Accessory accessory);
  Future<Accessory?> getById(UuidValue id);
  Future<Accessory> update(Accessory accessory);
  Future<bool> delete(UuidValue id);
  Future<List<Accessory>> listByUser(UuidValue userId, {int offset = 0, int limit = 20});
}

class AccessoryRepository implements IAccessoryRepository {
  @override
  Future<Accessory> create(Accessory accessory) async {
    return await client.accessory.create(accessory);
  }

  @override
  Future<Accessory?> getById(UuidValue id) async {
    return await client.accessory.getById(id);
  }

  @override
  Future<Accessory> update(Accessory accessory) async {
    return await client.accessory.update(accessory);
  }

  @override
  Future<bool> delete(UuidValue id) async {
    return await client.accessory.delete(id);
  }

  @override
  Future<List<Accessory>> listByUser(UuidValue userId, {int offset = 0, int limit = 20}) async {
    return await client.accessory.listByUser(userId, offset: offset, limit: limit);
  }
}
