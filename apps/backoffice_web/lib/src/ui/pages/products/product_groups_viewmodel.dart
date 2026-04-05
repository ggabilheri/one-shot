import 'package:backoffice_web/main.dart';
import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/product_group_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IProductGroupsViewmodel extends IViewmodel {
  List<ProductGroup> get groups;
  String get originModule;
  void setOriginModule(String module);
  Future<void> loadGroups();
  Future<void> saveGroup(ProductGroup group);
  Future<void> deleteGroup(UuidValue id);
}

class ProductGroupsViewmodel extends Viewmodel
    implements IProductGroupsViewmodel {
  final IProductGroupRepository _repository;

  ProductGroupsViewmodel(this._repository);

  List<ProductGroup> _groups = [];
  @override
  List<ProductGroup> get groups => _groups;

  String _originModule = 'BACKOFFICE';
  @override
  String get originModule => _originModule;

  @override
  void setOriginModule(String module) async {
    _originModule = module;
    notifyListeners();
    loadGroups();
  }

  @override
  Future<void> loadGroups() async {
    setLoading(true);
    try {
      _groups = await _repository.listGroups(originModule: _originModule);
      notifyListeners();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveGroup(ProductGroup group) async {
    setLoading(true);
    try {
      if (group.id == null) {
        await _repository.create(group);
      } else {
        await _repository.update(group);
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
      await _repository.delete(id);
      await loadGroups();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
