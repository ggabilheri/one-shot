import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class IDocumentRepository {
  Future<Document?> findById(Session session, UuidValue id);
  Future<Document> create(Session session, Document document);
  Future<Document> update(Session session, Document document);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<Document>> listByUser(Session session, UuidValue userId, {int? limit, int? offset});
  Future<List<Document>> listByFirearm(Session session, UuidValue firearmId);
  Future<List<Document>> listByAccessory(Session session, UuidValue accessoryId);
}

class DocumentRepository implements IDocumentRepository {
  @override
  Future<Document?> findById(Session session, UuidValue id) async {
    return await Document.db.findById(session, id);
  }

  @override
  Future<Document> create(Session session, Document document) async {
    return await Document.db.insertRow(session, document);
  }

  @override
  Future<Document> update(Session session, Document document) async {
    return await Document.db.updateRow(session, document);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final document = await findById(session, id);
    if (document == null) return false;
    await Document.db.deleteRow(session, document);
    return true;
  }

  @override
  Future<List<Document>> listByUser(Session session, UuidValue userId, {int? limit, int? offset}) async {
    return await Document.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      limit: limit,
      offset: offset,
      orderBy: (t) => t.expirationDate,
    );
  }

  @override
  Future<List<Document>> listByFirearm(Session session, UuidValue firearmId) async {
    return await Document.db.find(
      session,
      where: (t) => t.firearmId.equals(firearmId),
    );
  }

  @override
  Future<List<Document>> listByAccessory(Session session, UuidValue accessoryId) async {
    return await Document.db.find(
      session,
      where: (t) => t.accessoryId.equals(accessoryId),
    );
  }
}
