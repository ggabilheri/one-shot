import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/domain/repositories/club_repository.dart';

abstract class IClubsViewmodel extends IViewmodel {
  List<Club> get clubs;
  bool get isLoading;
  Future<void> loadClubs();
  Future<void> saveClub(Club club, {bool isEditing = false});
  Future<void> deleteClub(String id);
  Future<Address?> getAddressByCep(String cep);
}

class ClubsViewmodel extends Viewmodel implements IClubsViewmodel {
  final IClubRepository _repository;
  
  bool _isLoading = false;
  List<Club> _clubs = [];

  @override
  Future<Address?> getAddressByCep(String cep) async {
    try {
      return await _repository.fetchAddressByCep(cep);
    } on AppException catch (e) {
      setError(e.message);
      return null;
    } catch (e) {
      setError('Falha ao buscar endereço pelo CEP.');
      return null;
    }
  }

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
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar clubes.');
    } finally {
      _isLoading = false;
      setLoading(false);
      notifyListeners();
    }
  }

  @override
  Future<void> saveClub(Club club, {bool isEditing = false}) async {
    setLoading(true);
    setError(null);
    try {
      if (!isEditing) {
        await _repository.createClub(club);
      } else {
        await _repository.updateClub(club);
      }
      await loadClubs(); // Atualizar a listagem logo em seguida
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao salvar clube.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteClub(String id) async {
    setLoading(true);
    setError(null);
    try {
      await _repository.deleteClub(id);
      await loadClubs(); // Atualizar a listagem após exclusão "soft-delete"
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao excluir clube.');
    } finally {
      setLoading(false);
    }
  }
}

