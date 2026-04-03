import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';

abstract class IClubsViewmodel extends IViewmodel {
  List<Club> get clubs;
  bool get isLoading;
  Future<void> loadClubs();
  Future<void> saveClub(Club club, {bool isEditing = false});
  Future<void> deleteClub(String id);
}

class ClubsViewmodel extends Viewmodel implements IClubsViewmodel {
  final IClubRepository _repository;
  
  bool _isLoading = false;
  List<Club> _clubs = [];

  @override
  bool get isLoading => _isLoading;

  @override
  List<Club> get clubs => _clubs;

  ClubsViewmodel(this._repository) {
    loadClubs();
  }

  @override
  Future<void> loadClubs() async {
    setLoading(true);
    _isLoading = true;
    notifyListeners();

    try {
      _clubs = await _repository.listClubs();
      setError(null);
    } catch (e) {
      setError(e.toString());
    } finally {
      _isLoading = false;
      setLoading(false);
      notifyListeners();
    }
  }

  @override
  Future<void> saveClub(Club club, {bool isEditing = false}) async {
    setLoading(true);
    try {
      if (!isEditing) {
        await _repository.createClub(club);
      } else {
        await _repository.updateClub(club);
      }
      setError(null);
      await loadClubs(); // Atualizar a listagem logo em seguida
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteClub(String id) async {
    setLoading(true);
    try {
      await _repository.deleteClub(id);
      setError(null);
      await loadClubs(); // Atualizar a listagem após exclusão "soft-delete"
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}

