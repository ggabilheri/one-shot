import '../../../core/repository/user_repository.dart';
import '../../../core/viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class IProfilePresenter {
  void back();
  void onProfileLoaded(UserProfile profile);
}

abstract class IProfileViewmodel extends IViewmodel {
  UserProfile? get profile;
  Future<void> loadProfile();
  Future<void> saveProfile(UserProfile updatedProfile);
}

class ProfileViewModel extends Viewmodel implements IProfileViewmodel {
  final IUserRepository _userRepository;
  // ignore: unused_field
  final IProfilePresenter _presenter;

  ProfileViewModel(this._userRepository, this._presenter);

  UserProfile? _profile;

  @override
  UserProfile? get profile => _profile;

  @override
  Future<void> loadProfile() async {
    try {
      setLoading(true);
      _profile = await _userRepository.getOrCreateProfile();
    } catch (e) {
      setError(e.toString());
    } finally {
      if (_profile != null) {
        _presenter.onProfileLoaded(_profile!);
      }
      setLoading(false);
    }
  }

  @override
  Future<void> saveProfile(UserProfile updatedProfile) async {
    try {
      setLoading(true);
      _profile = await _userRepository.updateProfile(updatedProfile);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
