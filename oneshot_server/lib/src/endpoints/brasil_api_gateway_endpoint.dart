import 'dart:convert';

import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:http/http.dart' as http;

class BrasilApiGatewayEndpoint extends Endpoint {
  Future<Club?> getCompanyInfo(Session session, String cnpj) async {
    final url = Uri.parse('https://brasilapi.com.br/api/cnpj/v1/$cnpj');
    Club? club;
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        Club savedClub = await session.db.transaction((
          transaction,
        ) async {
          Address address = await Address.db.insertRow(
            session,
            Address(
              street:
                  '${data['logradescricao_tipo_de_logradourodouro']} ${data['logradouro']}',
              city: data['municipio'],
              complement: data['complemento'],
              state: data['uf'],
              zipCode: data['cep'],
              neighborhood: data['bairro'],
              number: data['numero'],
            ),
          );
          club = Club(
            name: data['razao_social'],
            cnpj: data['cnpj'],
            address: address,
            addressId: address.id,
          );
          club = await Club.db.insertRow(
            session,
            transaction: transaction,
            club!,
          );
          return club!;
        });
        return savedClub;
      }
    } catch (e) {
      print('erro ao buscar o cep: $e');
    }
    return null;
  }

  Future<Address>? getAddressByCep(Session session, String zipcode) async {
    var address;
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
        List<Map<String, dynamic>> data = jsonDecode(response.body);
        for (final bank in data) {
          banks.add(Bank.fromJson(bank));
        }
      }
    } catch (e) {
      print('erro ao buscar o cep: $e');
    }
    return banks;
  }

  Future<Bank?> getBank(Session session, int code) async {
    final url = Uri.parse('https://brasilapi.com.br/api/banks/v1/$code');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return Bank.fromJson(data);
      }
    } catch (e) {
      print('erro ao buscar o cep: $e');
    }
    return null;
  }
}
