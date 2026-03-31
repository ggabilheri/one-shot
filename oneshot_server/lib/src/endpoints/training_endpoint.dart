import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TrainingEndpoint extends Endpoint {
  /// Registro de um novo treino.
  /// O userId será validado dentro do caso de uso.
  Future<Training> register(Session session, Training training) async {
    // No Serverpod Auth, o authId é tipicamente um int.
    // A lógica de vinculação com o UserProfile (UuidValue) deve ser tratada no UseCase.
    return await sl.registerTrainingUseCase.execute(session, training);
  }

  /// Lista todos os treinos do usuário logado.
  Future<List<Training>> getMyTrainings(Session session) async {
    final authId = session.authenticated!.authId;

    // Busca direta via repositório (ou use case de listagem se houver regras complexas)
    // Por simplicidade inicial, usamos o repositório diretamente via SL.
    // Nota: O ideal é que o repositório lide com o mapeamento de authId se necessário.
    return await sl.trainingRepository
        .findByUserId(session, UuidValue.fromString(authId.toString()));
  }

  /// Busca um treino específico.
  Future<Training?> getTraining(Session session, UuidValue id) async {
    return await sl.trainingRepository.findById(session, id);
  }
}
