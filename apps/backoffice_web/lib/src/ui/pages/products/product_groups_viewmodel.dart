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
    try {
      _groups = await _groupRepo.listGroups(originModule: _originModule);
      notifyListeners();
    } catch (e) {
      setError(e.toString());
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
    } catch (e) {
      setError(e.toString());
    }
  }

  @override
  Future<void> saveGroup(ProductGroup group) async {
    setLoading(true);
    try {
      if (_isNew) {
        await _groupRepo.create(group);
      } else {
        await _groupRepo.update(group);
      }
      await loadGroups();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteGroup(UuidValue id) async {
    setLoading(true);
    try {
      await _groupRepo.delete(id);
      if (_selectedGroup?.id == id) _selectedGroup = null;
      await loadGroups();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteProduct(UuidValue id) async {
    try {
      await _productRepo.deleteProduct(id);
      await loadProducts();
    } catch (e) {
      setError(e.toString());
    }
  }

  @override
  bool get isNew => _isNew;

  @override
  void setIsNew(bool isNew) {
    _isNew = isNew;
  }
}
