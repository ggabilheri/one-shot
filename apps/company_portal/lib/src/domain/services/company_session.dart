import 'package:oneshot_client/oneshot_client.dart';

abstract class ICompanySession {
  Company? get currentCompany;
  void updateCompany(Company company);
}

class CompanySession implements ICompanySession {
  Company? _currentCompany;

  @override
  Company? get currentCompany => _currentCompany;

  @override
  void updateCompany(Company company) {
    _currentCompany = company;
  }
}
