import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';
import 'package:backoffice_web/src/domain/repositories/product_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IProductGroupsViewmodel extends IViewmodel {
  List<ProductGroup> get groups;
  List<Product> get products;
  String get originModule;
  ProductGroup? get selectedGroup;
  bool get isNew;
  void setIsNew(bool isNew);

  void setOriginModule(String module);
  void selectGroup(ProductGroup? group);

  Future<void> loadGroups();
  Future<void> loadProducts();
  Future<void> saveGroup(ProductGroup group);
  Future<void> deleteGroup(UuidValue id);
  Future<void> deleteProduct(UuidValue id);
}

class ProductGroupsViewmodel extends Viewmodel
    implements IProductGroupsViewmodel {
  final IProductGroupRepository _groupRepo;
  final IProductRepository _productRepo;

  ProductGroupsViewmodel(this._groupRepo, this._productRepo);

  bool _isNew = false;

  List<ProductGroup> _groups = [];
  @override
  List<ProductGroup> get groups => _groups;

  List<Product> _products = [];
  @override
  List<Product> get products => _products;

  String _originModule = 'BACKOFFICE';
  @override
  String get originModule => _originModule;

  ProductGroup? _selectedGroup;
  @override
  ProductGroup? get selectedGroup => _selectedGroup;

  @override
  void setOriginModule(String module) async {
    _originModule = module;
    _selectedGroup = null;
    _products = [];
    notifyListeners();
    loadGroups();
  }

  @override
  void selectGroup(ProductGroup? group) {
    _selectedGroup = group;
    notifyListeners();
    if (group != null) loadProducts();
  }

  @override
  Future<void> loadGroups() async {
    setLoading(true);
    setError(null);
    try {
      _groups = await _groupRepo.listGroups(originModule: _originModule);
      notifyListeners();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar grupos de produtos.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> loadProducts() async {
    if (_selectedGroup == null) return;
    try {
      _products = await _productRepo.listProducts(
        originModule: _originModule,
        groupId: _selectedGroup!.id,
      );
      notifyListeners();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar produtos do grupo.');
    }
  }

  @override
  Future<void> saveGroup(ProductGroup group) async {
    setLoading(true);
    setError(null);
    try {
      if (_isNew) {
        await _groupRepo.create(group);
      } else {
        await _groupRepo.update(group);
      }
      await loadGroups();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao salvar grupo de produtos.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteGroup(UuidValue id) async {
    setLoading(true);
    setError(null);
    try {
      await _groupRepo.delete(id);
      if (_selectedGroup?.id == id) _selectedGroup = null;
      await loadGroups();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao excluir grupo de produtos.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteProduct(UuidValue id) async {
    setError(null);
    try {
      await _productRepo.deleteProduct(id);
      await loadProducts();
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao excluir produto.');
    }
  }

  @override
  bool get isNew => _isNew;

  @override
  void setIsNew(bool isNew) {
    _isNew = isNew;
  }
}
