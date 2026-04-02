import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/main.dart';

abstract class IDocumentRepository {
  Future<Document> create(Document document);
  Future<Document?> getById(UuidValue id);
  Future<Document> update(Document document);
  Future<bool> delete(UuidValue id);
  Future<List<Document>> listByUser(UuidValue userId, {int offset = 0, int limit = 20});
  Future<List<Document>> listByFirearm(UuidValue firearmId);
  Future<List<Document>> listByAccessory(UuidValue accessoryId);
}

class DocumentRepository implements IDocumentRepository {
  @override
  Future<Document> create(Document document) async {
    return await client.document.create(document);
  }

  @override
  Future<Document?> getById(UuidValue id) async {
    return await client.document.getById(id);
  }

  @override
  Future<Document> update(Document document) async {
    return await client.document.update(document);
  }

  @override
  Future<bool> delete(UuidValue id) async {
    return await client.document.delete(id);
  }

  @override
  Future<List<Document>> listByUser(UuidValue userId, {int offset = 0, int limit = 20}) async {
    return await client.document.listByUser(userId, offset: offset, limit: limit);
  }

  @override
  Future<List<Document>> listByFirearm(UuidValue firearmId) async {
    return await client.document.listByFirearm(firearmId);
  }

  @override
  Future<List<Document>> listByAccessory(UuidValue accessoryId) async {
    return await client.document.listByAccessory(accessoryId);
  }
}
