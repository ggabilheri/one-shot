import 'package:company_portal/src/core/viewmodel.dart';
import 'package:company_portal/src/domain/models/enums/dashboard_page_type.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart';
import 'package:company_portal/src/domain/services/company_session.dart';

abstract class IDashboardViewModel extends IViewmodel {
  bool get isSidebarCollapsed;
  DashboardPageType get currentPage;
  List<Company> get userCompanies;
  Company? get selectedCompany;

  void toggleSidebar();
  void changePage(DashboardPageType page);
  Future<void> loadUserCompanies();
  void selectCompany(Company company);
}

class DashboardViewModel extends Viewmodel implements IDashboardViewModel {
  final ICompanySession _session;
  bool _isSidebarCollapsed = false;
  DashboardPageType _currentPage = DashboardPageType.summary;
  List<Company> _userCompanies = [];
  Company? _selectedCompany;

  DashboardViewModel(this._session);

  @override
  bool get isSidebarCollapsed => _isSidebarCollapsed;

  @override
  DashboardPageType get currentPage => _currentPage;

  @override
  List<Company> get userCompanies => _userCompanies;

  @override
  Company? get selectedCompany => _selectedCompany;

  @override
  void toggleSidebar() {
    _isSidebarCollapsed = !_isSidebarCollapsed;
    notifyListeners();
  }

  @override
  void changePage(DashboardPageType page) {
    _currentPage = page;
    notifyListeners();
  }

  @override
  Future<void> loadUserCompanies() async {
    try {
      _userCompanies = await client.user.getMyCompanies();
      if (_userCompanies.isNotEmpty && _selectedCompany == null) {
        _selectedCompany = _userCompanies.first;
        _session.updateCompany(_selectedCompany!);
      }
      notifyListeners();
    } catch (e) {
      setError('Falha ao carregar clubes vinculados.');
    }
  }

  @override
  void selectCompany(Company company) {
    _selectedCompany = company;
    _session.updateCompany(company);
    _currentPage = DashboardPageType.summary; // Reset conforme pedido: volta para a página principal
    notifyListeners();
  }
}
