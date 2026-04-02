import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DocumentEndpoint extends Endpoint {
  Future<Document?> getById(Session session, UuidValue id) async {
    return await sl.documentRepository.findById(session, id);
  }

  Future<Document> create(Session session, Document document) async {
    return await sl.documentRepository.create(session, document);
  }

  Future<Document> update(Session session, Document document) async {
    return await sl.documentRepository.update(session, document);
  }

  Future<bool> delete(Session session, UuidValue id) async {
    return await sl.documentRepository.delete(session, id);
  }

  Future<List<Document>> listByUser(Session session, UuidValue userId, {int? limit, int? offset}) async {
    return await sl.documentRepository.listByUser(session, userId, limit: limit, offset: offset);
  }

  Future<List<Document>> listByFirearm(Session session, UuidValue firearmId) async {
    return await sl.documentRepository.listByFirearm(session, firearmId);
  }

  Future<List<Document>> listByAccessory(Session session, UuidValue accessoryId) async {
    return await sl.documentRepository.listByAccessory(session, accessoryId);
  }

  /// Gera uma descrição de upload para o arquivo.
  Future<String?> getUploadDescription(Session session, String path) async {
    return await session.storage.createDirectFileUploadDescription(
      storageId: 'public',
      path: path,
    );
  }

  /// Verifica se o upload ocorreu e retorna a URL pública.
  Future<String?> verifyUpload(Session session, String path) async {
    final success = await session.storage.verifyDirectFileUpload(
      storageId: 'public',
      path: path,
    );
    if (!success) return null;
    return (await session.storage.getPublicUrl(storageId: 'public', path: path))?.toString();
  }
}
