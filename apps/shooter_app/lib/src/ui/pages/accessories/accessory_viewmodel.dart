import 'package:oneshot_client/oneshot_client.dart';
import '../../../core/repository/accessory_repository.dart';
import '../../../core/viewmodel.dart';

abstract class IAccessoryViewmodel extends IViewmodel {
  List<Accessory> get accessories;
  Future<void> loadAccessories(UuidValue userId);
  Future<void> saveAccessory(Accessory accessory);
  Future<void> deleteAccessory(UuidValue id);
}

abstract class IAccessoryPresenter {
  void goToForm([Accessory? accessory]);
  void back();
}

class AccessoryViewModel extends Viewmodel implements IAccessoryViewmodel {
  final IAccessoryRepository _accessoryRepository;
  final IAccessoryPresenter _presenter;

  AccessoryViewModel(this._accessoryRepository, this._presenter);

  List<Accessory> _accessories = [];
  UuidValue? _lastUserId;

  @override
  List<Accessory> get accessories => _accessories;

  @override
  Future<void> loadAccessories(UuidValue userId) async {
    try {
      setLoading(true);
      setError(null);
      _lastUserId = userId;
      _accessories = await _accessoryRepository.listByUser(userId);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveAccessory(Accessory accessory) async {
    try {
      setLoading(true);
      await _accessoryRepository.create(accessory);
      if (_lastUserId != null) {
        await loadAccessories(_lastUserId!);
      }
      _presenter.back();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteAccessory(UuidValue id) async {
    try {
      setLoading(true);
      await _accessoryRepository.delete(id);
      if (_lastUserId != null) {
        await loadAccessories(_lastUserId!);
      }
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
