import 'dart:convert';

import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:http/http.dart' as http;

class ViaCepGatewayEndpoint extends Endpoint {
  Future<Address?> getAddressByCep(Session session, String zipcode) async {
    final url = Uri.parse('https://viacep.com.br/ws/$zipcode/json');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return Address(
          zipCode: data["cep"],
          street: data["logradouro"],
          city: data["localidade"],
          complement: data["complemento"],
          neighborhood: data["bairro"],
          state: data["uf"],
          number: "",
        );
      }
    } catch (e) {
      print('erro ao buscar o cep: $e');
      return null;
    }
    return null;
  }
}
