import 'dart:convert';

import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:http/http.dart' as http;

class BrasilApiGatewayEndpoint extends Endpoint {
  Future<Company?> getCompanyInfo(Session session, String cnpj) async {
    final url = Uri.parse('https://brasilapi.com.br/api/cnpj/v1/$cnpj');
    Company? company;
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        Company savedCompany = await session.db.transaction((
          transaction,
        ) async {
          Address address = await Address.db.insertRow(
            session,
            Address(
              street:
                  '${data['logradescricao_tipo_de_logradourodouro'] ?? ''} ${data['logradouro'] ?? ''}'
                      .trim(),
              city: data['municipio'] ?? '',
              complement: data['complemento'] ?? '',
              state: data['uf'] ?? '',
              zipCode: data['cep'] ?? '',
              neighborhood: data['bairro'] ?? '',
              number: data['numero'] ?? '',
            ),
          );
          company = Company(
            name: data['razao_social'] ?? '',
            cnpj: data['cnpj'] ?? '',
            type: CompanyType
                .club, // Padrão para busca de CNPJ no contexto OneShot
            address: address,
            addressId: address.id,
          );
          company = await Company.db.insertRow(
            session,
            transaction: transaction,
            company!,
          );
          return company!;
        });
        return savedCompany;
      }
    } catch (e) {
      print('erro ao buscar o cnpj: $e');
    }
    return null;
  }

  Future<Address?> getAddressByCep(Session session, String zipcode) async {
    Address? address;
    final url = Uri.parse('https://brasilapi.com.br/api/cep/v2/$zipcode');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        address = Address(
          zipCode: data["cep"],
          street: data["street"],
          city: data["city"],
          complement: "",
          neighborhood: data["neighborhood"],
          state: data["state"],
          number: "",
        );
      }
    } catch (e) {
      print('erro ao buscar o cep: $e');
    }
    return address;
  }

  Future<List<Bank>> getBanks(Session session) async {
    List<Bank> banks = [];
    final url = Uri.parse('https://brasilapi.com.br/api/banks/v1');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        for (final bank in data.where((b) => b['code'] != null)) {
          banks.add(Bank.fromJson(bank as Map<String, dynamic>));
        }
      }
    } catch (e) {
      print('erro ao buscar os bancos: $e');
    }
    return banks;
  }
}
