import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import global client instance

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
  @override
  Future<List<ProductGroup>> listGroups({
    required String originModule,
    UuidValue? ownerId,
    UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    try {
      return await client.productGroup.listGroups(
        originModule: originModule,
        ownerId: ownerId,
        limit: limit,
        offset: offset,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar grupos de produtos.');
    }
  }

  @override
  Future<ProductGroup> create(ProductGroup group) async {
    try {
      return await client.productGroup.createProductGroup(group);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao criar grupo de produtos.');
    }
  }

  @override
  Future<ProductGroup> update(ProductGroup group) async {
    try {
      return await client.productGroup.updateProductGroup(group);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar grupo de produtos.');
    }
  }

  @override
  Future<bool> delete(UuidValue id) async {
    try {
      return await client.productGroup.deleteProductGroup(id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao deletar grupo de produtos.');
    }
  }
}
