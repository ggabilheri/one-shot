import 'package:oneshot_server/src/domain/repositories/i_reload_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_ammunition_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para orquestrar a execução de uma sessão de recarga.
abstract class IExecuteReloadSessionUseCase {
  Future<ReloadSession> execute(Session session, ReloadSession reloadSession);
}

/// Implementação com lógica de débito de insumos e entrada de estoque de munição.
class ExecuteReloadSessionUseCase implements IExecuteReloadSessionUseCase {
  final IReloadRepository _reloadRepository;
  final IAmmunitionRepository _ammunitionRepository;

  ExecuteReloadSessionUseCase(
      this._reloadRepository, this._ammunitionRepository);

  @override
  Future<ReloadSession> execute(
      Session session, ReloadSession reloadSession) async {
    // 1. Validar e Debitar Insumos (Dentro de uma transação do Serverpod)
    final totalReloads = reloadSession.reloadsCompleted;

    // Projetil
    await _reloadRepository.adjustSupplyQuantity(
        session, reloadSession.projectileId, -totalReloads.toDouble());

    // Espoleta
    await _reloadRepository.adjustSupplyQuantity(
        session, reloadSession.primerId, -totalReloads.toDouble());

    // Pólvora (Debitamos: grains per shot * total shots)
    final grainsToDebit = reloadSession.powderGrains * totalReloads;
    await _reloadRepository.adjustSupplyQuantity(
        session, reloadSession.powderId, -grainsToDebit);

    // 2. Persistir a Sessão
    final savedSession =
        await _reloadRepository.createSession(session, reloadSession);

    // 3. Adicionar automaticamente ao estoque de munições prontas correspondente
    // Busca um estoque de munição recarregada para este calibre
    final existingAmmos = await _ammunitionRepository.findByUserId(
        session, reloadSession.userId!);

    AmmunitionStock? targetAmmo;
    for (var a in existingAmmos) {
      if (a.caliber == reloadSession.caliber && a.type == 'Reloaded') {
        targetAmmo = a;
        break;
      }
    }

    if (targetAmmo == null) {
      targetAmmo = AmmunitionStock(
        userId: reloadSession.userId!,
        userInfoId: reloadSession.userInfoId,
        type: 'Reloaded',
        manufacturer: 'Self Reload',
        caliber: reloadSession.caliber,
        projectileType: 'Reloaded',
        quantity: totalReloads,
        acquisitionDate: DateTime.now(),
      );
      await _ammunitionRepository.create(session, targetAmmo);
    } else {
      await _ammunitionRepository.adjustQuantity(
          session, targetAmmo.id!, totalReloads);
    }

    return savedSession;
  }
}
