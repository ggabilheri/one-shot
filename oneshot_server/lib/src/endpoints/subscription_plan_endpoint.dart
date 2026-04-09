import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SubscriptionPlanEndpoint extends Endpoint {
  /// Cria um novo plano de assinatura.
  Future<SubscriptionPlan> createPlan(Session session, SubscriptionPlan plan) async {
    // Validação de negócio: totalValue = unitValue * quantity
    final calculatedTotal = plan.unitValue * plan.quantity;
    plan.totalValue = calculatedTotal;
    
    return await sl.subscriptionPlanRepository.create(session, plan);
  }

  /// Busca um plano de assinatura por ID.
  Future<SubscriptionPlan?> readPlan(Session session, UuidValue id) async {
    return await sl.subscriptionPlanRepository.findById(session, id);
  }

  /// Atualiza um plano de assinatura existente.
  Future<SubscriptionPlan> updatePlan(Session session, SubscriptionPlan plan) async {
    // Validação de negócio: totalValue = unitValue * quantity
    final calculatedTotal = plan.unitValue * plan.quantity;
    plan.totalValue = calculatedTotal;

    return await sl.subscriptionPlanRepository.update(session, plan);
  }

  /// Remove um plano de assinatura por ID.
  Future<bool> deletePlan(Session session, UuidValue id) async {
    return await sl.subscriptionPlanRepository.delete(session, id);
  }

  /// Lista planos de assinatura com filtros opcionais.
  Future<List<SubscriptionPlan>> listPlans(
    Session session, {
    PlanType? planType,
    PlanStatus? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    return await sl.subscriptionPlanRepository.list(
      session,
      planType: planType,
      status: status,
      companyId: companyId,
      limit: limit,
      offset: offset,
    );
  }
}
