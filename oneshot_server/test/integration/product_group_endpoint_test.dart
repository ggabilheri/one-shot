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

  withServerpod('Given ProductGroup endpoint', (sessionBuilder, endpoints) {
    const originModule = 'integration_test_module';

    ProductGroup buildGroup({
      String name = 'Grupo Teste',
      String module = originModule,
    }) {
      return ProductGroup(
        name: name,
        description: 'Grupo criado por teste de integração',
        originModule: module,
      );
    }

    test('when calling `createProductGroup` then the group is persisted',
        () async {
      final group = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(),
      );

      expect(group.id, isNotNull);
      expect(group.name, 'Grupo Teste');
      expect(group.description, 'Grupo criado por teste de integração');
      expect(group.originModule, originModule);
    });

    test('when calling `findById` with a persisted id then the group is returned',
        () async {
      final created = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(),
      );

      final found = await endpoints.productGroup.findById(
        sessionBuilder,
        created.id,
      );

      expect(found, isNotNull);
      expect(found!.id, created.id);
      expect(found.name, created.name);
    });

    test('when calling `findById` with unknown id then null is returned',
        () async {
      final found = await endpoints.productGroup.findById(
        sessionBuilder,
        const Uuid().v4obj(),
      );

      expect(found, isNull);
    });

    test('when calling `updateProductGroup` then changes are persisted',
        () async {
      final created = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(),
      );

      final updated = await endpoints.productGroup.updateProductGroup(
        sessionBuilder,
        created.copyWith(name: 'Grupo Atualizado', description: 'Nova descrição'),
      );

      expect(updated.name, 'Grupo Atualizado');
      expect(updated.description, 'Nova descrição');

      final reloaded = await endpoints.productGroup.findById(
        sessionBuilder,
        created.id,
      );
      expect(reloaded, isNotNull);
      expect(reloaded!.name, 'Grupo Atualizado');
      expect(reloaded.description, 'Nova descrição');
    });

    test('when calling `deleteProductGroup` then the group is removed',
        () async {
      final created = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(),
      );

      final deleted = await endpoints.productGroup.deleteProductGroup(
        sessionBuilder,
        created.id,
      );
      expect(deleted, isTrue);

      final found = await endpoints.productGroup.findById(
        sessionBuilder,
        created.id,
      );
      expect(found, isNull);
    });

    test('when calling `deleteProductGroup` with unknown id then false is returned',
        () async {
      final deleted = await endpoints.productGroup.deleteProductGroup(
        sessionBuilder,
        const Uuid().v4obj(),
      );

      expect(deleted, isFalse);
    });

    test(
        'when calling `listGroups` filtered by originModule then only matching groups are returned',
        () async {
      final matches = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(name: 'Grupo do Módulo'),
      );
      final otherModule = await endpoints.productGroup.createProductGroup(
        sessionBuilder,
        buildGroup(name: 'Grupo de Outro Módulo', module: 'other_module'),
      );

      final groups = await endpoints.productGroup.listGroups(
        sessionBuilder,
        originModule: originModule,
        limit: 100,
      );

      final ids = groups.map((g) => g.id).toSet();
      expect(ids, contains(matches.id));
      expect(ids, isNot(contains(otherModule.id)));
      expect(groups.every((g) => g.originModule == originModule), isTrue);
    });
  });
}
