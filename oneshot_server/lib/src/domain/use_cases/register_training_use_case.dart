import 'package:oneshot_server/src/domain/repositories/i_training_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract interface class IRegisterTrainingUseCase {
  Future<Training> execute(Session session, Training training);
}

class RegisterTrainingUseCase implements IRegisterTrainingUseCase {
  final ITrainingRepository trainingRepository;

  RegisterTrainingUseCase(this.trainingRepository);

  @override
  Future<Training> execute(Session session, Training training) async {
    // Regras de Negócio:
    // 1. Garantir que o userId esteja preenchido (vindo do auth session tipicamente)
    // 2. Poderia validar se a arma (firearmId) pertence ao usuário.
    // 3. Poderia validar estoque de munição.

    if (training.userId == null) {
      throw Exception('Usuário não identificado para o registro de treino.');
    }

    // Persistência:
    return await trainingRepository.insert(session, training);
  }
}
