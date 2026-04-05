import 'package:oneshot_client/oneshot_client.dart';

abstract class IProductGroupRepository {
  Future<List<ProductGroup>> listGroups({
    required String originModule,
    UuidValue? ownerId,
    UuidValue? groupId,
    int? limit,
    int? offset,
  });
  Future<ProductGroup> create(ProductGroup group);
  Future<ProductGroup> update(ProductGroup group);
  Future<bool> delete(UuidValue id);
}

class ProductGroupRepository implements IProductGroupRepository {
  final Client client;

  ProductGroupRepository(this.client);

  @override
  Future<List<ProductGroup>> listGroups({
    required String originModule,
    UuidValue? ownerId,
    UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    return await client.productGroup.listGroups(
      originModule: originModule,
      ownerId: ownerId,
      limit: limit,
      offset: offset,
    );
  }

  @override
  Future<ProductGroup> create(ProductGroup group) async {
    return await client.productGroup.createProductGroup(group);
  }

  @override
  Future<ProductGroup> update(ProductGroup group) async {
    return await client.productGroup.updateProductGroup(group);
  }

  @override
  Future<bool> delete(UuidValue id) async {
    return await client.productGroup.deleteProductGroup(id);
  }
}
