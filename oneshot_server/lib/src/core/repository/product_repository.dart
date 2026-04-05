import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o repositório de produtos, centralizando a lógica de acesso a dados.
abstract class IProductRepository {
  Future<Product?> findById(Session session, UuidValue id);
  Future<Product?> findByCode(Session session, String code);
  Future<Product> create(Session session, Product product);
  Future<Product> update(Session session, Product product);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<Product>> list(
    Session session, {
    String? originModule,
    UuidValue? groupId,
    int? limit,
    int? offset,
  });
}

class ProductRepository implements IProductRepository {
  @override
  Future<Product?> findById(Session session, UuidValue id) async {
    return await Product.db.findById(session, id);
  }

  @override
  Future<Product?> findByCode(Session session, String code) async {
    return await Product.db.findFirstRow(
      session,
      where: (t) => t.code.equals(code),
    );
  }

  @override
  Future<Product> create(Session session, Product product) async {
    return await Product.db.insertRow(session, product);
  }

  @override
  Future<Product> update(Session session, Product product) async {
    return await Product.db.updateRow(session, product);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final product = await findById(session, id);
    if (product == null) return false;
    await Product.db.deleteRow(session, product);
    return true;
  }

  @override
  Future<List<Product>> list(
    Session session, {
    String? originModule,
    UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    return await Product.db.find(
      session,
      where: (t) {
        Expression filter = Constant.bool(true);
        if (originModule != null) {
          filter &= t.originModule.equals(originModule);
        }
        if (groupId != null) {
          filter &= t.groupId.equals(groupId);
        }
        return filter;
      },
      limit: limit,      offset: offset,
      orderBy: (t) => t.description,
    );
  }
}
