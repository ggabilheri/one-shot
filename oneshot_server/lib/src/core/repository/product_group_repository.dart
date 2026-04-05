import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class IProductGroupRepository {
  Future<List<ProductGroup>> listGroups(
    Session session, {
    required String originModule,
    UuidValue? ownerId,
    int? limit,
    int? offset,
  });
  Future<ProductGroup?> findById(Session session, UuidValue id);
  Future<ProductGroup> create(Session session, ProductGroup group);
  Future<ProductGroup> update(Session session, ProductGroup group);
  Future<bool> delete(Session session, UuidValue id);
}

class ProductGroupRepository implements IProductGroupRepository {
  @override
  Future<List<ProductGroup>> listGroups(
    Session session, {
    required String originModule,
    UuidValue? ownerId,
    int? limit,
    int? offset,
  }) async {
    return await ProductGroup.db.find(
      session,
      where: (t) {
        Expression filter = Constant.bool(true);
        filter &= t.originModule.equals(originModule);
        if (ownerId != null) {
          filter &= t.ownerId.equals(ownerId);
        }
        return filter;
      },
      limit: limit,
      offset: offset,
      orderBy: (t) => t.name,
    );
  }

  @override
  Future<ProductGroup?> findById(Session session, UuidValue id) async {
    return await ProductGroup.db.findById(session, id);
  }

  @override
  Future<ProductGroup> create(Session session, ProductGroup group) async {
    return await ProductGroup.db.insertRow(session, group);
  }

  @override
  Future<ProductGroup> update(Session session, ProductGroup group) async {
    return await ProductGroup.db.updateRow(session, group);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final group = await findById(session, id);
    if (group == null) return false;
    await ProductGroup.db.deleteRow(session, group);
    return true;
  }
}
