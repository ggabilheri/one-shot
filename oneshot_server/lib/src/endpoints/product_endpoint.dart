import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ProductEndpoint extends Endpoint {
  /// Cria um novo produto no sistema.
  Future<Product> createProduct(Session session, Product product) async {
    return await sl.productRepository.create(session, product);
  }

  /// Busca o detalhe de um produto por ID.
  Future<Product?> readProduct(Session session, UuidValue id) async {
    return await sl.productRepository.findById(session, id);
  }

  /// Busca o detalhe de um produto por Código SKU.
  Future<Product?> findByCode(Session session, String code) async {
    return await sl.productRepository.findByCode(session, code);
  }

  /// Atualiza os dados de um produto existente.
  Future<Product> updateProduct(Session session, Product product) async {
    return await sl.productRepository.update(session, product);
  }

  /// Remove um produto por ID.
  Future<bool> deleteProduct(Session session, UuidValue id) async {
    return await sl.productRepository.delete(session, id);
  }

  /// Lista produtos com filtro obrigatório por módulo de origem (ex: BACKOFFICE, COMPANY, GUNSMITH).
  Future<List<Product>> listProducts(
    Session session, {
    required String originModule,
    UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    return await sl.productRepository.list(
      session,
      originModule: originModule,
      groupId: groupId,
      limit: limit,
      offset: offset,
    );
  }
}
