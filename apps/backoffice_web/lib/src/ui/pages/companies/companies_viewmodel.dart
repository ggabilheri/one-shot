import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/domain/repositories/company_repository.dart';
import 'package:backoffice_web/src/domain/repositories/user_repository.dart';

abstract class ICompaniesViewmodel extends IViewmodel {
  List<Company> get companies;
  bool get isLoading;
  Future<void> loadCompanies();
  Future<void> saveCompany(Company company, {bool isEditing = false});
  Future<void> deleteCompany(String id);
  Future<List<UserProfile>> searchUsers(String query);
  Future<UserProfile?> getUserById(String id);
  Future<Address?> getAddressByCep(String cep);
  Future<Company?> fetchCompanyInfo(String cnpj);
}

class CompaniesViewmodel extends Viewmodel implements ICompaniesViewmodel {
  final ICompanyRepository _repository;
  final IUserRepository _userRepository;
  
  bool _isLoading = false;
  List<Company> _companies = [];

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
  Future<Company?> fetchCompanyInfo(String cnpj) async {
    try {
      return await _repository.fetchCompanyInfo(cnpj);
    } on AppException catch (e) {
      setError(e.message);
      return null;
    } catch (e) {
      setError('Falha ao buscar informações da empresa pelo CNPJ.');
      return null;
    }
  }

  @override
  bool get isLoading => _isLoading;

  @override
  List<Company> get companies => _companies;

  CompaniesViewmodel(this._repository, this._userRepository) {
    loadCompanies();
  }

  @override
  Future<void> loadCompanies() async {
    setLoading(true);
    _isLoading = true;
    notifyListeners();

    try {
      _companies = await _repository.listCompanies();
      setError(null);
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao carregar empresas.');
    } finally {
      _isLoading = false;
      setLoading(false);
      notifyListeners();
    }
  }

  @override
  Future<void> saveCompany(Company company, {bool isEditing = false}) async {
    setLoading(true);
    setError(null);
    try {
      if (!isEditing) {
        await _repository.createCompany(company);
      } else {
        await _repository.updateCompany(company);
      }
      await loadCompanies(); // Atualizar a listagem logo em seguida
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao salvar empresa.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteCompany(String id) async {
    setLoading(true);
    setError(null);
    try {
      await _repository.deleteCompany(id);
      await loadCompanies(); // Atualizar a listagem após exclusão "soft-delete"
    } on AppException catch (e) {
      setError(e.message);
    } catch (e) {
      setError('Falha ao excluir empresa.');
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<List<UserProfile>> searchUsers(String query) async {
    try {
      return await _userRepository.searchUsers(query);
    } catch (e) {
      setError('Falha ao buscar usuários.');
      return [];
    }
  }

  @override
  Future<UserProfile?> getUserById(String id) async {
    try {
      final users = await _userRepository.listUsers();
      return users.firstWhere((u) => u.id.toString() == id);
    } catch (e) {
      return null;
    }
  }
}
