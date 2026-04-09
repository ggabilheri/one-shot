import 'package:company_portal/main.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class ISubscriptionPlanRepository {
  Future<SubscriptionPlan> createPlan(SubscriptionPlan plan);
  Future<SubscriptionPlan?> readPlan(UuidValue id);
  Future<SubscriptionPlan> updatePlan(SubscriptionPlan plan);
  Future<bool> deletePlan(UuidValue id);
  Future<List<SubscriptionPlan>> listPlans({
    PlanType? planType,
    PlanStatus? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  });
}

class SubscriptionPlanRepository implements ISubscriptionPlanRepository {
  @override
  Future<SubscriptionPlan> createPlan(SubscriptionPlan plan) async {
    try {
      return await client.subscriptionPlan.createPlan(plan);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao criar plano de assinatura.');
    }
  }

  @override
  Future<SubscriptionPlan?> readPlan(UuidValue id) async {
    try {
      return await client.subscriptionPlan.readPlan(id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao ler plano de assinatura.');
    }
  }

  @override
  Future<SubscriptionPlan> updatePlan(SubscriptionPlan plan) async {
    try {
      return await client.subscriptionPlan.updatePlan(plan);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao atualizar plano de assinatura.');
    }
  }

  @override
  Future<bool> deletePlan(UuidValue id) async {
    try {
      return await client.subscriptionPlan.deletePlan(id);
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao deletar plano de assinatura.');
    }
  }

  @override
  Future<List<SubscriptionPlan>> listPlans({
    PlanType? planType,
    PlanStatus? status,
    UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    try {
      return await client.subscriptionPlan.listPlans(
        planType: planType,
        status: status,
        companyId: companyId,
        limit: limit,
        offset: offset,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw Exception('Falha ao listar planos de assinatura.');
    }
  }
}
