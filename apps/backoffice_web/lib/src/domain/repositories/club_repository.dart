import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/main.dart'; // import client

abstract class IClubRepository {
  Future<List<Club>> listClubs();
  Future<Club> createClub(Club club);
  Future<Club> updateClub(Club club);
  Future<Club> deleteClub(String clubId);
  Future<Address?> fetchAddressByCep(String cep);
}

class ClubRepository implements IClubRepository {
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
  Future<List<Club>> listClubs() async {
    try {
      return await client.club.listClubs();
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar os clubes.');
    }
  }

  @override
  Future<Club> createClub(Club club) async {
    try {
      return await client.club.createClub(club);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao registrar novo clube.');
    }
  }

  @override
  Future<Club> updateClub(Club club) async {
    try {
      return await client.club.updateClub(club);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar o clube.');
    }
  }

  @override
  Future<Club> deleteClub(String clubId) async {
    try {
      return await client.club.deleteClub(UuidValue.fromString(clubId));
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao desativar o clube.');
    }
  }
}
