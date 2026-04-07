import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/domain/repositories/product_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';

abstract class IProductsViewmodel extends IViewmodel {
  List<Product> get products;
  List<ProductGroup> get groups;
  bool get isLoading;
  String get selectedOrigin;
  UuidValue? get selectedGroupId;
  bool get isFilteredByGroup;

  void setOrigin(String origin);
  void setSelectedGroup(UuidValue? groupId);

  Future<void> loadProducts();
  Future<void> loadGroups();
  Future<void> saveProduct(Product product, {bool isEditing = false});
  Future<void> deleteProduct(UuidValue id);

  void setProductGroup(ProductGroup? productGroup);
}

class ProductsViewmodel extends Viewmodel implements IProductsViewmodel {
  final IProductRepository _repository;
  final IProductGroupRepository _groupRepository;

  bool _isLoading = false;
  List<Product> _products = [];
  List<ProductGroup> _groups = [];
  String _selectedOrigin = 'BACKOFFICE';
  UuidValue? _selectedGroupId;
  bool _isFilteredByGroup = false;

  ProductsViewmodel(this._repository, this._groupRepository) {
    loadGroups();
    loadProducts();
  }

  @override
  bool get isLoading => _isLoading;

  @override
  List<Product> get products => _products;

  @override
  List<ProductGroup> get groups => _groups;

  @override
  String get selectedOrigin => _selectedOrigin;

  @override
  UuidValue? get selectedGroupId => _selectedGroupId;

  @override
  bool get isFilteredByGroup => _isFilteredByGroup;

  @override
  void setOrigin(String origin) {
    _selectedOrigin = origin;
    _selectedGroupId = null; // Reset group filter when origin changes
    _isFilteredByGroup = false;
    loadProducts();
  }

  @override
  void setSelectedGroup(UuidValue? groupId) {
    _selectedGroupId = groupId;
    loadProducts();
  }

  @override
  Future<void> loadGroups() async {
    try {
      _groups = await _groupRepository.listGroups(
        originModule: _selectedOrigin,
      );
      notifyListeners();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar grupos.');
    }
  }

  @override
  Future<void> loadProducts() async {
    setLoading(true);
    _isLoading = true;
    notifyListeners();

    try {
      _products = await _repository.listProducts(
        originModule: _selectedOrigin,
        groupId: _selectedGroupId,
      );
      setError(null);
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar produtos.');
    } finally {
      _isLoading = false;
      setLoading(false);
      notifyListeners();
    }
  }

  @override
  Future<void> saveProduct(Product product, {bool isEditing = false}) async {
    setLoading(true);
    setError(null);
    try {
      if (!isEditing) {
        await _repository.createProduct(product);
      } else {
        await _repository.updateProduct(product);
      }
      await loadProducts();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao salvar produto.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteProduct(UuidValue id) async {
    setLoading(true);
    setError(null);
    try {
      await _repository.deleteProduct(id);
      await loadProducts();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao excluir produto.');
    } finally {
      setLoading(false);
    }
  }

  @override
  void setProductGroup(ProductGroup? productGroup) {
    _selectedGroupId = productGroup?.id;
    _isFilteredByGroup = productGroup != null;
    loadProducts();
  }
}
