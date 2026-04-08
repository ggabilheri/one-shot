import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart'; // import global client instance

abstract class IProductRepository {
  Future<List<Product>> listProducts({
    required String originModule,
    UuidValue? groupId,
    int? limit,
    int? offset,
  });
  Future<Product> createProduct(Product product);
  Future<Product> updateProduct(Product product);
  Future<bool> deleteProduct(UuidValue id);
  Future<Product?> findByCode(String code);
}

class ProductRepository implements IProductRepository {
  @override
  Future<List<Product>> listProducts({
    required String originModule,
    UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    try {
      return await client.product.listProducts(
        originModule: originModule,
        groupId: groupId,
        limit: limit,
        offset: offset,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar produtos.');
    }
  }

  @override
  Future<Product> createProduct(Product product) async {
    try {
      return await client.product.createProduct(product);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao cadastrar produto.');
    }
  }

  @override
  Future<Product> updateProduct(Product product) async {
    try {
      return await client.product.updateProduct(product);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar produto.');
    }
  }

  @override
  Future<bool> deleteProduct(UuidValue id) async {
    try {
      return await client.product.deleteProduct(id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao excluir produto.');
    }
  }

  @override
  Future<Product?> findByCode(String code) async {
    try {
      return await client.product.findByCode(code);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao buscar produto por código.');
    }
  }
}
