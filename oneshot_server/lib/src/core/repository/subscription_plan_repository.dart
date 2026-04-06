import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

abstract class ISubscriptionPlanRepository {
  Future<SubscriptionPlan> create(Session session, SubscriptionPlan plan);
  Future<SubscriptionPlan?> findById(Session session, UuidValue id);
  Future<SubscriptionPlan> update(Session session, SubscriptionPlan plan);
  Future<bool> delete(Session session, UuidValue id);
  Future<List<SubscriptionPlan>> list(
    Session session, {
    PlanType? planType,
    PlanStatus? status,
    int? limit,
    int? offset,
  });
}

class SubscriptionPlanRepository implements ISubscriptionPlanRepository {
  @override
  Future<SubscriptionPlan> create(Session session, SubscriptionPlan plan) async {
    return await SubscriptionPlan.db.insertRow(session, plan);
  }

  @override
  Future<SubscriptionPlan?> findById(Session session, UuidValue id) async {
    return await SubscriptionPlan.db.findById(session, id);
  }

  @override
  Future<SubscriptionPlan> update(Session session, SubscriptionPlan plan) async {
    return await SubscriptionPlan.db.updateRow(session, plan);
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final plan = await findById(session, id);
    if (plan == null) return false;
    await SubscriptionPlan.db.deleteRow(session, plan);
    return true;
  }

  @override
  Future<List<SubscriptionPlan>> list(
    Session session, {
    PlanType? planType,
    PlanStatus? status,
    int? limit,
    int? offset,
  }) async {
    return await SubscriptionPlan.db.find(
      session,
      where: (t) {
        Expression filter = Constant.bool(true);
        if (planType != null) {
          filter &= t.planType.equals(planType);
        }
        if (status != null) {
          filter &= t.status.equals(status);
        }
        return filter;
      },
      limit: limit,
      offset: offset,
      orderBy: (t) => t.name,
    );
  }
}
