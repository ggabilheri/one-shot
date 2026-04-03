import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/models/enums/dashboard_page_type.dart';

abstract class IDashboardViewModel extends IViewmodel {
  bool get isSidebarCollapsed;
  DashboardPageType get currentPage;
  void toggleSidebar();
  void changePage(DashboardPageType page);
}

class DashboardViewModel extends Viewmodel implements IDashboardViewModel {
  bool _isSidebarCollapsed = false;
  DashboardPageType _currentPage = DashboardPageType.summary;

  @override
  bool get isSidebarCollapsed => _isSidebarCollapsed;

  @override
  DashboardPageType get currentPage => _currentPage;

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
}
