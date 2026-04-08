import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart';

abstract class IBrasilApiRepository {
  Future<List<Bank>> getBanks();
}

class BrasilApiRepository implements IBrasilApiRepository {
  @override
  Future<List<Bank>> getBanks() async {
    try {
      return await client.brasilApiGateway.getBanks();
    } catch (e) {
      throw Exception('Falha ao buscar bancos: $e');
    }
  }
}
