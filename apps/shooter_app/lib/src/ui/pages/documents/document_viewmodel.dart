import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/repository/document_repository.dart';
import '../../../core/viewmodel.dart';

abstract class IDocumentViewmodel extends IViewmodel {
  List<Document> get documents;
  Future<void> loadDocuments(UuidValue userId);
  Future<void> saveDocument(Document document);
  Future<void> deleteDocument(UuidValue id);
}

abstract class IDocumentPresenter {
  void goToForm([Document? document]);
  void back();
}

class DocumentViewModel extends Viewmodel implements IDocumentViewmodel {
  final IDocumentRepository _documentRepository;
  final IDocumentPresenter _presenter;

  DocumentViewModel(this._documentRepository, this._presenter);

  List<Document> _documents = [];
  UuidValue? _lastUserId;

  @override
  List<Document> get documents => _documents;

  @override
  Future<void> loadDocuments(UuidValue userId) async {
    try {
      setLoading(true);
      setError(null);
      _lastUserId = userId;
      _documents = await _documentRepository.listByUser(userId);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveDocument(Document document) async {
    try {
      setLoading(true);
      await _documentRepository.create(document);
      if (_lastUserId != null) {
        await loadDocuments(_lastUserId!);
      }
      _presenter.back();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteDocument(UuidValue id) async {
    try {
      setLoading(true);
      await _documentRepository.delete(id);
      if (_lastUserId != null) {
        await loadDocuments(_lastUserId!);
      }
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
