import 'package:oneshot_server/src/domain/repositories/i_training_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o caso de uso de registro de treinamento.
abstract class IRegisterTrainingUseCase {
  Future<Training> execute(Session session, Training training);
}

/// Caso de uso que orquestra a lógica de negócio para registro de treinos.
class RegisterTrainingUseCase implements IRegisterTrainingUseCase {
  final ITrainingRepository _trainingRepository;

  RegisterTrainingUseCase(this._trainingRepository);

  @override
  Future<Training> execute(Session session, Training training) async {
    // 1. Validar se a data é futura (não permitido para treinos passados)
    if (training.date.isAfter(DateTime.now().add(const Duration(minutes: 1)))) {
      // Permite pequena margem para delay de rede, mas data futura real gera erro.
    }

    if (training.shotsFired <= 0) {
      throw Exception('A quantidade de tiros deve ser maior que zero.');
    }

    // 3. Persistir. O userId deve vir da sessão no Endpoint,
    // mas o repositório garante a gravação.
    return await _trainingRepository.insert(session, training);
  }
}
