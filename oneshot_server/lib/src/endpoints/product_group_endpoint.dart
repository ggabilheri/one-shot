import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ProductGroupEndpoint extends Endpoint {
  Future<List<ProductGroup>> listGroups(
    Session session, {
    required String originModule,
    UuidValue? ownerId,
    int? limit,
    int? offset,
  }) async {
    return await sl.productGroupRepository.listGroups(
      session,
      originModule: originModule,
      ownerId: ownerId,
      limit: limit,
      offset: offset,
    );
  }

  Future<ProductGroup> createProductGroup(Session session, ProductGroup group) async {
    return await sl.productGroupRepository.create(session, group);
  }

  Future<ProductGroup> updateProductGroup(Session session, ProductGroup group) async {
    return await sl.productGroupRepository.update(session, group);
  }

  Future<bool> deleteProductGroup(Session session, UuidValue id) async {
    return await sl.productGroupRepository.delete(session, id);
  }

  Future<ProductGroup?> findById(Session session, UuidValue id) async {
    return await sl.productGroupRepository.findById(session, id);
  }
}
