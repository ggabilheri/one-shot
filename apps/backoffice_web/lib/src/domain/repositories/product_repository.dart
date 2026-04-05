import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import global client instance

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
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      throw Exception('Falha ao listar produtos: \$e');
    }
  }

  @override
  Future<Product> createProduct(Product product) async {
    try {
      return await client.product.createProduct(product);
    } catch (e) {
      throw Exception('Falha ao cadastrar produto: \$e');
    }
  }

  @override
  Future<Product> updateProduct(Product product) async {
    try {
      return await client.product.updateProduct(product);
    } catch (e) {
      throw Exception('Falha ao atualizar produto: \$e');
    }
  }

  @override
  Future<bool> deleteProduct(UuidValue id) async {
    try {
      return await client.product.deleteProduct(id);
    } catch (e) {
      throw Exception('Falha ao excluir produto: \$e');
    }
  }

  @override
  Future<Product?> findByCode(String code) async {
    try {
      return await client.product.findByCode(code);
    } catch (e) {
      throw Exception('Falha ao buscar produto por código: \$e');
    }
  }
}
