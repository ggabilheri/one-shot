import 'package:backoffice_web/main.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class ISubscriptionPlanRepository {
  Future<SubscriptionPlan> createPlan(SubscriptionPlan plan);
  Future<SubscriptionPlan?> readPlan(UuidValue id);
  Future<SubscriptionPlan> updatePlan(SubscriptionPlan plan);
  Future<bool> deletePlan(UuidValue id);
  Future<List<SubscriptionPlan>> listPlans({
    PlanType? planType,
    PlanStatus? status,
    int? limit,
    int? offset,
  });
}

class SubscriptionPlanRepository implements ISubscriptionPlanRepository {
  @override
  Future<SubscriptionPlan> createPlan(SubscriptionPlan plan) async {
    return await client.subscriptionPlan.createPlan(plan);
  }

  @override
  Future<SubscriptionPlan?> readPlan(UuidValue id) async {
    return await client.subscriptionPlan.readPlan(id);
  }

  @override
  Future<SubscriptionPlan> updatePlan(SubscriptionPlan plan) async {
    return await client.subscriptionPlan.updatePlan(plan);
  }

  @override
  Future<bool> deletePlan(UuidValue id) async {
    return await client.subscriptionPlan.deletePlan(id);
  }

  @override
  Future<List<SubscriptionPlan>> listPlans({
    PlanType? planType,
    PlanStatus? status,
    int? limit,
    int? offset,
  }) async {
    return await client.subscriptionPlan.listPlans(
      planType: planType,
      status: status,
      limit: limit,
      offset: offset,
    );
  }
}
