import 'package:oneshot_server/src/core/injections/injections.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart' show Uuid;
import 'package:test/test.dart';

import 'test_tools/serverpod_test_tools.dart';

void main() {
  // Os endpoints acessam os repositórios via service locator (sl), que é
  // inicializado no run() do server.dart. O withServerpod não executa o
  // run(), então inicializamos o sl aqui (init é idempotente).
  setUpAll(sl.init);

  withServerpod('Given SubscriptionPlan endpoint', (sessionBuilder, endpoints) {
    SubscriptionPlan buildPlan({
      String name = 'Plano Teste',
      PlanType planType = PlanType.COMPANY,
      double unitValue = 100.0,
      int quantity = 3,
      PlanPeriodicity periodicity = PlanPeriodicity.MONTHLY,
      PlanStatus status = PlanStatus.ACTIVE,
    }) {
      return SubscriptionPlan(
        name: name,
        planType: planType,
        unitValue: unitValue,
        quantity: quantity,
        totalValue: 0,
        periodicity: periodicity,
        status: status,
      );
    }

    test('when calling `createPlan` then totalValue is unitValue * quantity',
        () async {
      final plan = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(unitValue: 150.0, quantity: 4),
      );

      expect(plan.id, isNotNull);
      expect(plan.totalValue, 600.0);
      expect(plan.unitValue, 150.0);
      expect(plan.quantity, 4);
    });

    test('when calling `readPlan` with a persisted id then the plan is returned',
        () async {
      final created = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(),
      );

      final found = await endpoints.subscriptionPlan.readPlan(
        sessionBuilder,
        created.id,
      );

      expect(found, isNotNull);
      expect(found!.id, created.id);
      expect(found.name, created.name);
    });

    test('when calling `readPlan` with unknown id then null is returned',
        () async {
      final unknownId = const Uuid().v4obj();

      final found = await endpoints.subscriptionPlan.readPlan(
        sessionBuilder,
        unknownId,
      );

      expect(found, isNull);
    });

    test(
        'when calling `updatePlan` then changes are persisted and totalValue is recalculated',
        () async {
      final created = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(),
      );

      final updated = await endpoints.subscriptionPlan.updatePlan(
        sessionBuilder,
        created.copyWith(
          name: 'Plano Atualizado',
          unitValue: 200.0,
          quantity: 2,
          totalValue: 0,
        ),
      );

      expect(updated.name, 'Plano Atualizado');
      expect(updated.totalValue, 400.0);

      final reloaded = await endpoints.subscriptionPlan.readPlan(
        sessionBuilder,
        created.id,
      );
      expect(reloaded, isNotNull);
      expect(reloaded!.name, 'Plano Atualizado');
      expect(reloaded.totalValue, 400.0);
    });

    test('when calling `deletePlan` then the plan is removed', () async {
      final created = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(),
      );

      final deleted = await endpoints.subscriptionPlan.deletePlan(
        sessionBuilder,
        created.id,
      );
      expect(deleted, isTrue);

      final found = await endpoints.subscriptionPlan.readPlan(
        sessionBuilder,
        created.id,
      );
      expect(found, isNull);
    });

    test('when calling `deletePlan` with unknown id then false is returned',
        () async {
      final deleted = await endpoints.subscriptionPlan.deletePlan(
        sessionBuilder,
        const Uuid().v4obj(),
      );

      expect(deleted, isFalse);
    });

    test(
        'when calling `listPlans` filtered by status then only matching plans are returned',
        () async {
      final active = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(name: 'Plano Ativo', status: PlanStatus.ACTIVE),
      );
      final canceled = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(name: 'Plano Cancelado', status: PlanStatus.CANCELED),
      );

      final plans = await endpoints.subscriptionPlan.listPlans(
        sessionBuilder,
        status: PlanStatus.ACTIVE,
        limit: 100,
      );

      final ids = plans.map((p) => p.id).toSet();
      expect(ids, contains(active.id));
      expect(ids, isNot(contains(canceled.id)));
    });

    test(
        'when calling `listPlans` filtered by planType then only matching plans are returned',
        () async {
      final company = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(name: 'Plano Empresa', planType: PlanType.COMPANY),
      );
      final gunsmith = await endpoints.subscriptionPlan.createPlan(
        sessionBuilder,
        buildPlan(name: 'Plano Armeiro', planType: PlanType.GUNSMITH),
      );

      final plans = await endpoints.subscriptionPlan.listPlans(
        sessionBuilder,
        planType: PlanType.GUNSMITH,
        limit: 100,
      );

      final ids = plans.map((p) => p.id).toSet();
      expect(ids, contains(gunsmith.id));
      expect(ids, isNot(contains(company.id)));
    });
  });
}
