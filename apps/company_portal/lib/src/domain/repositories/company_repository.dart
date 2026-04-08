import 'package:oneshot_client/oneshot_client.dart';
import 'package:company_portal/main.dart'; // import client

abstract class ICompanyRepository {
  Future<List<Company>> listCompanies();
  Future<Company> createCompany(Company company);
  Future<Company> updateCompany(Company company);
  Future<Company> deleteCompany(String companyId);
  Future<Address?> fetchAddressByCep(String cep);
  Future<Company?> fetchCompanyInfo(String cnpj);
}

class CompanyRepository implements ICompanyRepository {
  @override
  Future<Address?> fetchAddressByCep(String cep) async {
    try {
      return await client.viaCepGateway.getAddressByCep(cep);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao buscar CEP.');
    }
  }

  @override
  Future<Company?> fetchCompanyInfo(String cnpj) async {
    try {
      return await client.brasilApiGateway.getCompanyInfo(cnpj);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao buscar informações da empresa pelo CNPJ.');
    }
  }

  @override
  Future<List<Company>> listCompanies() async {
    try {
      return await client.company.listCompanies();
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar as empresas.');
    }
  }

  @override
  Future<Company> createCompany(Company company) async {
    try {
      return await client.company.createCompany(company);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao registrar nova empresa.');
    }
  }

  @override
  Future<Company> updateCompany(Company company) async {
    try {
      return await client.company.updateCompany(company);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar a empresa.');
    }
  }

  @override
  Future<Company> deleteCompany(String companyId) async {
    try {
      return await client.company.deleteCompany(
        UuidValue.fromString(companyId),
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao desativar a empresa.');
    }
  }
}
