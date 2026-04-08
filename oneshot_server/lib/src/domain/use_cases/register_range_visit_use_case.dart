import 'package:oneshot_server/src/domain/repositories/i_company_repositories.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para gerenciar registros de visitas ao estande.
abstract class IRegisterRangeVisitUseCase {
  Future<RangeVisit> checkIn(Session session, RangeVisit visit);
  Future<RangeVisit> checkOut(Session session, UuidValue visitId, int shotsFired);
}

/// Implementação da lógica de visita ao estande.
class RegisterRangeVisitUseCase implements IRegisterRangeVisitUseCase {
  final IRangeVisitRepository _rangeVisitRepository;
  final IMembershipRepository _membershipRepository;

  RegisterRangeVisitUseCase(this._rangeVisitRepository, this._membershipRepository);

  @override
  Future<RangeVisit> checkIn(Session session, RangeVisit visit) async {
    // 1. Validar se o usuário já tem uma visita ativa.
    final active = await _rangeVisitRepository.findActiveVisitByUser(session, visit.userId!);
    if (active != null) {
      throw Exception('Você já possui um check-in ativo nesta ou em outra empresa.');
    }

    // 2. Opcional: Validar se é filiado (ou visitante permitido).
    // Aqui poderíamos logar se é um visitante ou sócio.
    final membership = await _membershipRepository.findByUserAndCompany(session, visit.userId!, visit.companyId!);
    if (membership == null) {
       // Logar como visitante temporário? Por enquanto apenas permitimos.
    }

    // 3. Registrar entrada.
    visit.checkIn = DateTime.now();
    visit.checkOut = null;
    
    return await _rangeVisitRepository.create(session, visit);
  }

  @override
  Future<RangeVisit> checkOut(Session session, UuidValue visitId, int shotsFired) async {
    final visit = await RangeVisit.db.findById(session, visitId);
    if (visit == null) throw Exception('Visita não encontrada.');
    if (visit.checkOut != null) throw Exception('Esta visita já foi finalizada.');

    // Atualizar saída.
    visit.checkOut = DateTime.now();
    visit.shotsFired = shotsFired;
    
    return await _rangeVisitRepository.update(session, visit);
  }
}
