/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: no_leading_underscores_for_local_identifiers

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _ida;
import 'dart:io' as _idi;
import 'package:oneshot_server/src/generated/access_control/role_permission.dart'
    as _itb2zhn4;
import 'package:oneshot_server/src/generated/access_control/security_role.dart'
    as _i1xchi60;
import 'package:oneshot_server/src/generated/common/accessory.dart'
    as _ieqpa344;
import 'package:oneshot_server/src/generated/common/address.dart' as _iy1kcvhk;
import 'package:oneshot_server/src/generated/common/document.dart' as _is536eiv;
import 'package:oneshot_server/src/generated/common/supply_stock.dart'
    as _i8gnh98r;
import 'package:oneshot_server/src/generated/common/user_profile.dart'
    as _i2pyoxii;
import 'package:oneshot_server/src/generated/company/company.dart' as _ic0khr1u;
import 'package:oneshot_server/src/generated/company/company_type.dart'
    as _ipib9fv0;
import 'package:oneshot_server/src/generated/company/membership.dart'
    as _i1s6ob71;
import 'package:oneshot_server/src/generated/company/range_visit.dart'
    as _illbufnr;
import 'package:oneshot_server/src/generated/enums/financial_entry_status.dart'
    as _i624tget;
import 'package:oneshot_server/src/generated/enums/financial_entry_type.dart'
    as _iz0ihb5y;
import 'package:oneshot_server/src/generated/enums/invoice_status.enum.dart'
    as _iywvte3n;
import 'package:oneshot_server/src/generated/enums/plan_status.enum.dart'
    as _ijhakeaq;
import 'package:oneshot_server/src/generated/enums/plan_type.enum.dart'
    as _i5bdl2dg;
import 'package:oneshot_server/src/generated/enums/platform_app.enum.dart'
    as _iyj53v39;
import 'package:oneshot_server/src/generated/finance/bank.dart' as _ij8k7xum;
import 'package:oneshot_server/src/generated/finance/bank_account.dart'
    as _ix4lc03l;
import 'package:oneshot_server/src/generated/finance/financial_entry.dart'
    as _ibsfr7x7;
import 'package:oneshot_server/src/generated/finance/invoice.dart' as _i30q017a;
import 'package:oneshot_server/src/generated/finance/invoice_item.dart'
    as _i4dj62ps;
import 'package:oneshot_server/src/generated/finance/payment.dart' as _i2rb000s;
import 'package:oneshot_server/src/generated/future_calls.dart' as _iahu0g5j;
import 'package:oneshot_server/src/generated/greeting.dart' as _ikgv4xca;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith.dart'
    as _icrmzcgd;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith_client.dart'
    as _i3v21vya;
import 'package:oneshot_server/src/generated/gunsmith/service_order.dart'
    as _ilfracgz;
import 'package:oneshot_server/src/generated/gunsmith/service_order_item.dart'
    as _ipjdt3yw;
import 'package:oneshot_server/src/generated/product/product.dart' as _ichcxeb2;
import 'package:oneshot_server/src/generated/product/product_group.dart'
    as _isb7m7oi;
import 'package:oneshot_server/src/generated/shooter/ammunition_stock.dart'
    as _iznitra9;
import 'package:oneshot_server/src/generated/shooter/firearm.dart' as _iv8sr5qk;
import 'package:oneshot_server/src/generated/shooter/reload_session.dart'
    as _ir80yzxg;
import 'package:oneshot_server/src/generated/shooter/reload_test.dart'
    as _ifny91bp;
import 'package:oneshot_server/src/generated/shooter/training.dart'
    as _i8n7svi8;
import 'package:oneshot_server/src/generated/subscription/subscription_plan.dart'
    as _ilwo31st;
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_test/serverpod_test.dart' as _ist;
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:oneshot_server/src/generated/endpoints.dart';
export 'package:serverpod_test/serverpod_test_public_exports.dart';

/// Creates a new test group that takes a callback that can be used to write tests.
/// The callback has two parameters: `sessionBuilder` and `endpoints`.
/// `sessionBuilder` is used to build a `Session` object that represents the server state during an endpoint call and is used to set up scenarios.
/// `endpoints` contains all your Serverpod endpoints and lets you call them:
/// ```dart
/// withServerpod('Given Example endpoint', (sessionBuilder, endpoints) {
///   test('when calling `hello` then should return greeting', () async {
///     final greeting = await endpoints.example.hello(sessionBuilder, 'Michael');
///     expect(greeting, 'Hello Michael');
///   });
/// });
/// ```
///
/// **Configuration options**
///
/// [applyMigrations] Whether pending migrations should be applied when starting Serverpod. Defaults to `true`
///
/// [enableSessionLogging] Whether session logging should be enabled. Defaults to `false`
///
/// [ephemeralDatabase] Whether this group gets its own empty database, created when the group starts and dropped when it finishes. Defaults to `true`.
/// Set this to `false` to use the database configured for [runMode], including a previously seeded database. [configOverride] can still replace that database. The configured database is not created or dropped, so groups that share it cannot run in parallel. [rollbackDatabase] still controls whether writes inside the group are rolled back.
///
/// [rollbackDatabase] Options for when to rollback the database during the test lifecycle.
/// By default `withServerpod` does all database operations inside a transaction that is rolled back after each `test` case.
/// Just like the following enum describes, the behavior of the automatic rollbacks can be configured:
/// ```dart
/// /// Options for when to rollback the database during the test lifecycle.
/// enum RollbackDatabase {
///   /// After each test. This is the default.
///   afterEach,
///
///   /// After all tests.
///   afterAll,
///
///   /// Disable rolling back the database.
///   disabled,
/// }
/// ```
///
/// [runMode] The run mode that Serverpod should be running in. Defaults to `test`.
///
/// [serverpodLoggingMode] The logging mode used when creating Serverpod. Defaults to `ServerpodLoggingMode.normal`
///
/// [serverpodStartTimeout] The timeout to use when starting Serverpod, which connects to the database among other things. Defaults to `Duration(seconds: 120)`.
///
/// [testServerOutputMode] Options for controlling test server output during test execution. Defaults to `TestServerOutputMode.normal`.
/// ```dart
/// /// Options for controlling test server output during test execution.
/// enum TestServerOutputMode {
///   /// Default mode - only stderr is printed (stdout suppressed).
///   /// This hides normal startup/shutdown logs while preserving error messages.
///   normal,
///
///   /// All logging - both stdout and stderr are printed.
///   /// Useful for debugging when you need to see all server output.
///   verbose,
///
///   /// No logging - both stdout and stderr are suppressed.
///   /// Completely silent mode, useful when you don't want any server output.
///   silent,
/// }
/// ```
///
/// [configOverride] A function to override the server configuration. This function is called with
/// the default server configuration after it is loaded from the config/ directory
/// and before it is used to start the server. Use this to override particular
/// settings in the server configuration.
///
/// [databaseInterceptor] Optional interceptor that replaces the default database for each session.
/// See [Serverpod.databaseInterceptor] for more information.
///
/// [testGroupTagsOverride] By default Serverpod test tools tags the `withServerpod` test group with `"integration"`.
/// This is to provide a simple way to only run unit or integration tests.
/// This property allows this tag to be overridden to something else. Defaults to `['integration']`.
///
/// [experimentalFeatures] Optionally specify experimental features. See [Serverpod] for more information.
///
/// [serverDirectory] The server package directory `config/<runMode>.yaml`, `config/passwords.yaml`,
/// and `migrations/<module>/...` are resolved against. Defaults to
/// [Directory.current] at the time the test boots. Pass this when the test
/// isolate's cwd is not the server package root (e.g. running tests from a
/// workspace parent directory) so config and migrations are still loaded
/// from the right place.
@_ist.isTestGroup
void withServerpod(
  String testGroupName,
  _ist.TestClosure<TestEndpoints> testClosure, {
  bool? applyMigrations,
  _is.ServerpodConfig Function(_is.ServerpodConfig)? configOverride,
  _is.DatabaseInterceptor? databaseInterceptor,
  bool? enableSessionLogging,
  bool? ephemeralDatabase,
  _is.ExperimentalFeatures? experimentalFeatures,
  _ist.RollbackDatabase? rollbackDatabase,
  String? runMode,
  _is.RuntimeParametersListBuilder? runtimeParametersBuilder,
  _idi.Directory? serverDirectory,
  _is.ServerpodLoggingMode? serverpodLoggingMode,
  Duration? serverpodStartTimeout,
  List<String>? testGroupTagsOverride,
  _ist.TestServerOutputMode? testServerOutputMode,
}) {
  _ist.buildWithServerpod<_InternalTestEndpoints>(
    testGroupName,
    _ist.TestServerpod(
      testEndpoints: _InternalTestEndpoints(),
      endpoints: Endpoints(),
      serializationManager: Protocol(),
      runMode: runMode,
      applyMigrations: applyMigrations,
      ephemeralDatabase: ephemeralDatabase,
      isDatabaseEnabled: true,
      serverpodLoggingMode: serverpodLoggingMode,
      testServerOutputMode: testServerOutputMode,
      serverDirectory: serverDirectory,
      experimentalFeatures: experimentalFeatures,
      configOverride: configOverride,
      runtimeParametersBuilder: runtimeParametersBuilder,
      databaseInterceptor: databaseInterceptor,
    ),
    maybeRollbackDatabase: rollbackDatabase,
    maybeEnableSessionLogging: enableSessionLogging,
    maybeTestGroupTagsOverride: testGroupTagsOverride,
    maybeServerpodStartTimeout: serverpodStartTimeout,
    maybeTestServerOutputMode: testServerOutputMode,
  )(testClosure);
}

class TestEndpoints {
  late final futureCalls = _FutureCalls();

  late final _AccessoryEndpoint accessory;

  late final _AmmunitionEndpoint ammunition;

  late final _BankAccountEndpoint bankAccount;

  late final _BrasilApiGatewayEndpoint brasilApiGateway;

  late final _CompanyEndpoint company;

  late final _DocumentEndpoint document;

  late final _FinancialEntryEndpoint financialEntry;

  late final _FirearmEndpoint firearm;

  late final _GunsmithEndpoint gunsmith;

  late final _InvoiceEndpoint invoice;

  late final _PaymentEndpoint payment;

  late final _ProductEndpoint product;

  late final _ProductGroupEndpoint productGroup;

  late final _ProfileEndpoint profile;

  late final _ReloadEndpoint reload;

  late final _SecurityRoleEndpoint securityRole;

  late final _SubscriptionPlanEndpoint subscriptionPlan;

  late final _TrainingEndpoint training;

  late final _UserEndpoint user;

  late final _ViaCepGatewayEndpoint viaCepGateway;

  late final _AsaasAccountEndpoint asaasAccount;

  late final _AsaasCustomerEndpoint asaasCustomer;

  late final _AsaasInstallmentEndpoint asaasInstallment;

  late final _AsaasPaymentEndpoint asaasPayment;

  late final _AsaasPixEndpoint asaasPix;

  late final _AsaasTransferEndpoint asaasTransfer;

  late final _AsaasWebhookConfigEndpoint asaasWebhookConfig;

  late final _AsaasWebhookReceiverEndpoint asaasWebhookReceiver;

  late final _GreetingEndpoint greeting;
}

class _InternalTestEndpoints extends TestEndpoints
    implements _ist.InternalTestEndpoints {
  @override
  void initialize(
    _is.SerializationManager serializationManager,
    _is.EndpointDispatch endpoints,
  ) {
    accessory = _AccessoryEndpoint(endpoints, serializationManager);
    ammunition = _AmmunitionEndpoint(endpoints, serializationManager);
    bankAccount = _BankAccountEndpoint(endpoints, serializationManager);
    brasilApiGateway = _BrasilApiGatewayEndpoint(
      endpoints,
      serializationManager,
    );
    company = _CompanyEndpoint(endpoints, serializationManager);
    document = _DocumentEndpoint(endpoints, serializationManager);
    financialEntry = _FinancialEntryEndpoint(endpoints, serializationManager);
    firearm = _FirearmEndpoint(endpoints, serializationManager);
    gunsmith = _GunsmithEndpoint(endpoints, serializationManager);
    invoice = _InvoiceEndpoint(endpoints, serializationManager);
    payment = _PaymentEndpoint(endpoints, serializationManager);
    product = _ProductEndpoint(endpoints, serializationManager);
    productGroup = _ProductGroupEndpoint(endpoints, serializationManager);
    profile = _ProfileEndpoint(endpoints, serializationManager);
    reload = _ReloadEndpoint(endpoints, serializationManager);
    securityRole = _SecurityRoleEndpoint(endpoints, serializationManager);
    subscriptionPlan = _SubscriptionPlanEndpoint(
      endpoints,
      serializationManager,
    );
    training = _TrainingEndpoint(endpoints, serializationManager);
    user = _UserEndpoint(endpoints, serializationManager);
    viaCepGateway = _ViaCepGatewayEndpoint(endpoints, serializationManager);
    asaasAccount = _AsaasAccountEndpoint(endpoints, serializationManager);
    asaasCustomer = _AsaasCustomerEndpoint(endpoints, serializationManager);
    asaasInstallment = _AsaasInstallmentEndpoint(
      endpoints,
      serializationManager,
    );
    asaasPayment = _AsaasPaymentEndpoint(endpoints, serializationManager);
    asaasPix = _AsaasPixEndpoint(endpoints, serializationManager);
    asaasTransfer = _AsaasTransferEndpoint(endpoints, serializationManager);
    asaasWebhookConfig = _AsaasWebhookConfigEndpoint(
      endpoints,
      serializationManager,
    );
    asaasWebhookReceiver = _AsaasWebhookReceiverEndpoint(
      endpoints,
      serializationManager,
    );
    greeting = _GreetingEndpoint(endpoints, serializationManager);
  }
}

class _FutureCalls {
  late final birthdayReminder = _BirthdayReminderFutureCall();
}

class _AccessoryEndpoint {
  _AccessoryEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ieqpa344.Accessory?> getById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'accessory',
            method: 'getById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'accessory',
          methodName: 'getById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ieqpa344.Accessory?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ieqpa344.Accessory> create(
    _ist.TestSessionBuilder sessionBuilder,
    _ieqpa344.Accessory accessory,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'accessory',
            method: 'create',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'accessory',
          methodName: 'create',
          parameters: _ist.testObjectToJson({'accessory': accessory}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ieqpa344.Accessory>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ieqpa344.Accessory> update(
    _ist.TestSessionBuilder sessionBuilder,
    _ieqpa344.Accessory accessory,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'accessory',
            method: 'update',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'accessory',
          methodName: 'update',
          parameters: _ist.testObjectToJson({'accessory': accessory}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ieqpa344.Accessory>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> delete(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'accessory',
            method: 'delete',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'accessory',
          methodName: 'delete',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ieqpa344.Accessory>> listByUser(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue userId, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'accessory',
            method: 'listByUser',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'accessory',
          methodName: 'listByUser',
          parameters: _ist.testObjectToJson({
            'userId': userId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ieqpa344.Accessory>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AmmunitionEndpoint {
  _AmmunitionEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<List<_iznitra9.AmmunitionStock>> getMyAmmunition(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'ammunition',
            method: 'getMyAmmunition',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'ammunition',
          methodName: 'getMyAmmunition',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_iznitra9.AmmunitionStock>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iznitra9.AmmunitionStock> addAmmunition(
    _ist.TestSessionBuilder sessionBuilder,
    _iznitra9.AmmunitionStock ammo,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'ammunition',
            method: 'addAmmunition',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'ammunition',
          methodName: 'addAmmunition',
          parameters: _ist.testObjectToJson({'ammo': ammo}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iznitra9.AmmunitionStock>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iznitra9.AmmunitionStock?> adjustQuantity(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
    int change,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'ammunition',
            method: 'adjustQuantity',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'ammunition',
          methodName: 'adjustQuantity',
          parameters: _ist.testObjectToJson({'id': id, 'change': change}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iznitra9.AmmunitionStock?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteAmmunition(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'ammunition',
            method: 'deleteAmmunition',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'ammunition',
          methodName: 'deleteAmmunition',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _BankAccountEndpoint {
  _BankAccountEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ix4lc03l.BankAccount> createAccount(
    _ist.TestSessionBuilder sessionBuilder,
    _ix4lc03l.BankAccount account,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'bankAccount',
            method: 'createAccount',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'bankAccount',
          methodName: 'createAccount',
          parameters: _ist.testObjectToJson({'account': account}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ix4lc03l.BankAccount>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ix4lc03l.BankAccount?> readAccount(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'bankAccount',
            method: 'readAccount',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'bankAccount',
          methodName: 'readAccount',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ix4lc03l.BankAccount?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ix4lc03l.BankAccount> updateAccount(
    _ist.TestSessionBuilder sessionBuilder,
    _ix4lc03l.BankAccount account,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'bankAccount',
            method: 'updateAccount',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'bankAccount',
          methodName: 'updateAccount',
          parameters: _ist.testObjectToJson({'account': account}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ix4lc03l.BankAccount>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteAccount(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'bankAccount',
            method: 'deleteAccount',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'bankAccount',
          methodName: 'deleteAccount',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ix4lc03l.BankAccount>> listAccounts(
    _ist.TestSessionBuilder sessionBuilder, {
    required String originModule,
    String? status,
    _is.UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'bankAccount',
            method: 'listAccounts',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'bankAccount',
          methodName: 'listAccounts',
          parameters: _ist.testObjectToJson({
            'originModule': originModule,
            'status': status,
            'companyId': companyId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ix4lc03l.BankAccount>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _BrasilApiGatewayEndpoint {
  _BrasilApiGatewayEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ic0khr1u.Company?> getCompanyInfo(
    _ist.TestSessionBuilder sessionBuilder,
    String cnpj,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'brasilApiGateway',
            method: 'getCompanyInfo',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'brasilApiGateway',
          methodName: 'getCompanyInfo',
          parameters: _ist.testObjectToJson({'cnpj': cnpj}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ic0khr1u.Company?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iy1kcvhk.Address?> getAddressByCep(
    _ist.TestSessionBuilder sessionBuilder,
    String zipcode,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'brasilApiGateway',
            method: 'getAddressByCep',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'brasilApiGateway',
          methodName: 'getAddressByCep',
          parameters: _ist.testObjectToJson({'zipcode': zipcode}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iy1kcvhk.Address?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ij8k7xum.Bank>> getBanks(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'brasilApiGateway',
            method: 'getBanks',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'brasilApiGateway',
          methodName: 'getBanks',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ij8k7xum.Bank>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _CompanyEndpoint {
  _CompanyEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ic0khr1u.Company> createCompany(
    _ist.TestSessionBuilder sessionBuilder,
    _ic0khr1u.Company company,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'createCompany',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'createCompany',
          parameters: _ist.testObjectToJson({'company': company}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ic0khr1u.Company>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ic0khr1u.Company>> listCompanies(
    _ist.TestSessionBuilder sessionBuilder, {
    _is.UuidValue? parentCompanyId,
    _ipib9fv0.CompanyType? type,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'listCompanies',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'listCompanies',
          parameters: _ist.testObjectToJson({
            'parentCompanyId': parentCompanyId,
            'type': type,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ic0khr1u.Company>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ic0khr1u.Company> updateCompany(
    _ist.TestSessionBuilder sessionBuilder,
    _ic0khr1u.Company company,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'updateCompany',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'updateCompany',
          parameters: _ist.testObjectToJson({'company': company}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ic0khr1u.Company>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ic0khr1u.Company> deleteCompany(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue companyId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'deleteCompany',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'deleteCompany',
          parameters: _ist.testObjectToJson({'companyId': companyId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ic0khr1u.Company>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i1s6ob71.Membership> requestMembership(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue companyId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'requestMembership',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'requestMembership',
          parameters: _ist.testObjectToJson({'companyId': companyId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i1s6ob71.Membership>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i1s6ob71.Membership>> getMyMemberships(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'getMyMemberships',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'getMyMemberships',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i1s6ob71.Membership>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_illbufnr.RangeVisit> checkIn(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue companyId,
    _is.UuidValue? firearmId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'checkIn',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'checkIn',
          parameters: _ist.testObjectToJson({
            'companyId': companyId,
            'firearmId': firearmId,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_illbufnr.RangeVisit>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_illbufnr.RangeVisit> checkOut(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue visitId,
    int shotsFired,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'checkOut',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'checkOut',
          parameters: _ist.testObjectToJson({
            'visitId': visitId,
            'shotsFired': shotsFired,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_illbufnr.RangeVisit>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_illbufnr.RangeVisit>> getMyVisits(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'getMyVisits',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'getMyVisits',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_illbufnr.RangeVisit>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ic0khr1u.Company> getManagedCompany(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'company',
            method: 'getManagedCompany',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'company',
          methodName: 'getManagedCompany',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ic0khr1u.Company>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _DocumentEndpoint {
  _DocumentEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_is536eiv.Document?> getById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'getById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'getById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_is536eiv.Document?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_is536eiv.Document> create(
    _ist.TestSessionBuilder sessionBuilder,
    _is536eiv.Document document,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'create',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'create',
          parameters: _ist.testObjectToJson({'document': document}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_is536eiv.Document>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_is536eiv.Document> update(
    _ist.TestSessionBuilder sessionBuilder,
    _is536eiv.Document document,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'update',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'update',
          parameters: _ist.testObjectToJson({'document': document}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_is536eiv.Document>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> delete(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'delete',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'delete',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_is536eiv.Document>> listByUser(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue userId, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'listByUser',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'listByUser',
          parameters: _ist.testObjectToJson({
            'userId': userId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_is536eiv.Document>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_is536eiv.Document>> listByFirearm(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue firearmId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'listByFirearm',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'listByFirearm',
          parameters: _ist.testObjectToJson({'firearmId': firearmId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_is536eiv.Document>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_is536eiv.Document>> listByAccessory(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue accessoryId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'listByAccessory',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'listByAccessory',
          parameters: _ist.testObjectToJson({'accessoryId': accessoryId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_is536eiv.Document>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<String?> getUploadDescription(
    _ist.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'getUploadDescription',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'getUploadDescription',
          parameters: _ist.testObjectToJson({'path': path}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<String?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<String?> verifyUpload(
    _ist.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'document',
            method: 'verifyUpload',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'document',
          methodName: 'verifyUpload',
          parameters: _ist.testObjectToJson({'path': path}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<String?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _FinancialEntryEndpoint {
  _FinancialEntryEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ibsfr7x7.FinancialEntry> createEntry(
    _ist.TestSessionBuilder sessionBuilder,
    _ibsfr7x7.FinancialEntry entry,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'financialEntry',
            method: 'createEntry',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'financialEntry',
          methodName: 'createEntry',
          parameters: _ist.testObjectToJson({'entry': entry}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ibsfr7x7.FinancialEntry>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ibsfr7x7.FinancialEntry?> readEntry(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'financialEntry',
            method: 'readEntry',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'financialEntry',
          methodName: 'readEntry',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ibsfr7x7.FinancialEntry?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ibsfr7x7.FinancialEntry> updateEntry(
    _ist.TestSessionBuilder sessionBuilder,
    _ibsfr7x7.FinancialEntry entry,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'financialEntry',
            method: 'updateEntry',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'financialEntry',
          methodName: 'updateEntry',
          parameters: _ist.testObjectToJson({'entry': entry}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ibsfr7x7.FinancialEntry>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteEntry(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'financialEntry',
            method: 'deleteEntry',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'financialEntry',
          methodName: 'deleteEntry',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ibsfr7x7.FinancialEntry>> listEntries(
    _ist.TestSessionBuilder sessionBuilder, {
    required _iyj53v39.PlatformApp originModule,
    DateTime? dueDateTo,
    _is.UuidValue? companyId,
    int? limit,
    int? offset,
    _iz0ihb5y.FinancialEntryType? type,
    _i624tget.FinancialEntryStatus? status,
    DateTime? dueDateFrom,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'financialEntry',
            method: 'listEntries',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'financialEntry',
          methodName: 'listEntries',
          parameters: _ist.testObjectToJson({
            'originModule': originModule,
            'dueDateTo': dueDateTo,
            'companyId': companyId,
            'limit': limit,
            'offset': offset,
            'type': type,
            'status': status,
            'dueDateFrom': dueDateFrom,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ibsfr7x7.FinancialEntry>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _FirearmEndpoint {
  _FirearmEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_iv8sr5qk.Firearm?> getById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'getById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'getById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iv8sr5qk.Firearm?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iv8sr5qk.Firearm?> getBySerialNumber(
    _ist.TestSessionBuilder sessionBuilder,
    String serialNumber,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'getBySerialNumber',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'getBySerialNumber',
          parameters: _ist.testObjectToJson({'serialNumber': serialNumber}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iv8sr5qk.Firearm?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iv8sr5qk.Firearm> create(
    _ist.TestSessionBuilder sessionBuilder,
    _iv8sr5qk.Firearm firearm,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'create',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'create',
          parameters: _ist.testObjectToJson({'firearm': firearm}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iv8sr5qk.Firearm>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_iv8sr5qk.Firearm> update(
    _ist.TestSessionBuilder sessionBuilder,
    _iv8sr5qk.Firearm firearm,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'update',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'update',
          parameters: _ist.testObjectToJson({'firearm': firearm}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iv8sr5qk.Firearm>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> delete(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'delete',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'delete',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_iv8sr5qk.Firearm>> listByUser(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue userId, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'firearm',
            method: 'listByUser',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'firearm',
          methodName: 'listByUser',
          parameters: _ist.testObjectToJson({
            'userId': userId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_iv8sr5qk.Firearm>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _GunsmithEndpoint {
  _GunsmithEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_icrmzcgd.Gunsmith> createGunsmith(
    _ist.TestSessionBuilder sessionBuilder,
    _icrmzcgd.Gunsmith gunsmith,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'createGunsmith',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'createGunsmith',
          parameters: _ist.testObjectToJson({'gunsmith': gunsmith}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_icrmzcgd.Gunsmith>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_icrmzcgd.Gunsmith?> getGunsmith(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'getGunsmith',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'getGunsmith',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_icrmzcgd.Gunsmith?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_icrmzcgd.Gunsmith?> findGunsmithByOwner(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue ownerId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'findGunsmithByOwner',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'findGunsmithByOwner',
          parameters: _ist.testObjectToJson({'ownerId': ownerId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_icrmzcgd.Gunsmith?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_icrmzcgd.Gunsmith>> listGunsmiths(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'listGunsmiths',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'listGunsmiths',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_icrmzcgd.Gunsmith>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_icrmzcgd.Gunsmith> updateGunsmith(
    _ist.TestSessionBuilder sessionBuilder,
    _icrmzcgd.Gunsmith gunsmith,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'updateGunsmith',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'updateGunsmith',
          parameters: _ist.testObjectToJson({'gunsmith': gunsmith}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_icrmzcgd.Gunsmith>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i3v21vya.GunsmithClient> createClient(
    _ist.TestSessionBuilder sessionBuilder,
    _i3v21vya.GunsmithClient client,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'createClient',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'createClient',
          parameters: _ist.testObjectToJson({'client': client}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i3v21vya.GunsmithClient>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i3v21vya.GunsmithClient?> findClientByCpf(
    _ist.TestSessionBuilder sessionBuilder,
    String cpf,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'findClientByCpf',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'findClientByCpf',
          parameters: _ist.testObjectToJson({'cpf': cpf}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i3v21vya.GunsmithClient?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i3v21vya.GunsmithClient>> getMyClients(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'getMyClients',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'getMyClients',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i3v21vya.GunsmithClient>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ilfracgz.ServiceOrder> registerServiceOrder(
    _ist.TestSessionBuilder sessionBuilder,
    _ilfracgz.ServiceOrder order,
    List<_ipjdt3yw.ServiceOrderItem> items,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'registerServiceOrder',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'registerServiceOrder',
          parameters: _ist.testObjectToJson({'order': order, 'items': items}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ilfracgz.ServiceOrder>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ilfracgz.ServiceOrder>> getOrdersByClient(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue clientId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'getOrdersByClient',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'getOrdersByClient',
          parameters: _ist.testObjectToJson({'clientId': clientId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ilfracgz.ServiceOrder>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ipjdt3yw.ServiceOrderItem>> getOrderItems(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue serviceOrderId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'gunsmith',
            method: 'getOrderItems',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'gunsmith',
          methodName: 'getOrderItems',
          parameters: _ist.testObjectToJson({'serviceOrderId': serviceOrderId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ipjdt3yw.ServiceOrderItem>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _InvoiceEndpoint {
  _InvoiceEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i30q017a.Invoice> createInvoice(
    _ist.TestSessionBuilder sessionBuilder,
    _i30q017a.Invoice invoice,
    List<_i4dj62ps.InvoiceItem> items,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'createInvoice',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'createInvoice',
          parameters: _ist.testObjectToJson({
            'invoice': invoice,
            'items': items,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i30q017a.Invoice>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i30q017a.Invoice?> getInvoice(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'getInvoice',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'getInvoice',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i30q017a.Invoice?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i30q017a.Invoice>> listInvoices(
    _ist.TestSessionBuilder sessionBuilder, {
    String? originModule,
    String? direction,
    _iywvte3n.InvoiceStatus? status,
    _is.UuidValue? companyId,
    _is.UuidValue? gunsmithId,
    _is.UuidValue? userId,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'listInvoices',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'listInvoices',
          parameters: _ist.testObjectToJson({
            'originModule': originModule,
            'direction': direction,
            'status': status,
            'companyId': companyId,
            'gunsmithId': gunsmithId,
            'userId': userId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i30q017a.Invoice>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i30q017a.Invoice> updateInvoice(
    _ist.TestSessionBuilder sessionBuilder,
    _i30q017a.Invoice invoice,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'updateInvoice',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'updateInvoice',
          parameters: _ist.testObjectToJson({'invoice': invoice}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i30q017a.Invoice>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteInvoice(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'deleteInvoice',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'deleteInvoice',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i4dj62ps.InvoiceItem>> getInvoiceItems(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue invoiceId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'invoice',
            method: 'getInvoiceItems',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'invoice',
          methodName: 'getInvoiceItems',
          parameters: _ist.testObjectToJson({'invoiceId': invoiceId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i4dj62ps.InvoiceItem>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _PaymentEndpoint {
  _PaymentEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i2rb000s.Payment> registerPayment(
    _ist.TestSessionBuilder sessionBuilder,
    _i2rb000s.Payment payment,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'payment',
            method: 'registerPayment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'payment',
          methodName: 'registerPayment',
          parameters: _ist.testObjectToJson({'payment': payment}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2rb000s.Payment>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i2rb000s.Payment>> getPaymentsByInvoice(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue invoiceId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'payment',
            method: 'getPaymentsByInvoice',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'payment',
          methodName: 'getPaymentsByInvoice',
          parameters: _ist.testObjectToJson({'invoiceId': invoiceId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i2rb000s.Payment>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i2rb000s.Payment>> listPayments(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'payment',
            method: 'listPayments',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'payment',
          methodName: 'listPayments',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i2rb000s.Payment>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _ProductEndpoint {
  _ProductEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ichcxeb2.Product> createProduct(
    _ist.TestSessionBuilder sessionBuilder,
    _ichcxeb2.Product product,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'createProduct',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'createProduct',
          parameters: _ist.testObjectToJson({'product': product}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ichcxeb2.Product>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ichcxeb2.Product?> readProduct(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'readProduct',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'readProduct',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ichcxeb2.Product?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ichcxeb2.Product?> findByCode(
    _ist.TestSessionBuilder sessionBuilder,
    String code,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'findByCode',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'findByCode',
          parameters: _ist.testObjectToJson({'code': code}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ichcxeb2.Product?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ichcxeb2.Product> updateProduct(
    _ist.TestSessionBuilder sessionBuilder,
    _ichcxeb2.Product product,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'updateProduct',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'updateProduct',
          parameters: _ist.testObjectToJson({'product': product}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ichcxeb2.Product>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteProduct(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'deleteProduct',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'deleteProduct',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ichcxeb2.Product>> listProducts(
    _ist.TestSessionBuilder sessionBuilder, {
    required String originModule,
    _is.UuidValue? groupId,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'product',
            method: 'listProducts',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'product',
          methodName: 'listProducts',
          parameters: _ist.testObjectToJson({
            'originModule': originModule,
            'groupId': groupId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ichcxeb2.Product>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _ProductGroupEndpoint {
  _ProductGroupEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<List<_isb7m7oi.ProductGroup>> listGroups(
    _ist.TestSessionBuilder sessionBuilder, {
    required String originModule,
    _is.UuidValue? ownerId,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'productGroup',
            method: 'listGroups',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'productGroup',
          methodName: 'listGroups',
          parameters: _ist.testObjectToJson({
            'originModule': originModule,
            'ownerId': ownerId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_isb7m7oi.ProductGroup>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_isb7m7oi.ProductGroup> createProductGroup(
    _ist.TestSessionBuilder sessionBuilder,
    _isb7m7oi.ProductGroup group,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'productGroup',
            method: 'createProductGroup',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'productGroup',
          methodName: 'createProductGroup',
          parameters: _ist.testObjectToJson({'group': group}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_isb7m7oi.ProductGroup>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_isb7m7oi.ProductGroup> updateProductGroup(
    _ist.TestSessionBuilder sessionBuilder,
    _isb7m7oi.ProductGroup group,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'productGroup',
            method: 'updateProductGroup',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'productGroup',
          methodName: 'updateProductGroup',
          parameters: _ist.testObjectToJson({'group': group}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_isb7m7oi.ProductGroup>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteProductGroup(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'productGroup',
            method: 'deleteProductGroup',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'productGroup',
          methodName: 'deleteProductGroup',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_isb7m7oi.ProductGroup?> findById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'productGroup',
            method: 'findById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'productGroup',
          methodName: 'findById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_isb7m7oi.ProductGroup?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _ProfileEndpoint {
  _ProfileEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i2pyoxii.UserProfile> getOrCreateMyProfile(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'profile',
            method: 'getOrCreateMyProfile',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'profile',
          methodName: 'getOrCreateMyProfile',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i2pyoxii.UserProfile> updateMyProfile(
    _ist.TestSessionBuilder sessionBuilder,
    _i2pyoxii.UserProfile profile,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'profile',
            method: 'updateMyProfile',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'profile',
          methodName: 'updateMyProfile',
          parameters: _ist.testObjectToJson({'profile': profile}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i2pyoxii.UserProfile?> getProfileById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'profile',
            method: 'getProfileById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'profile',
          methodName: 'getProfileById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _ReloadEndpoint {
  _ReloadEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ir80yzxg.ReloadSession> executeReloadSession(
    _ist.TestSessionBuilder sessionBuilder,
    _ir80yzxg.ReloadSession reloadSession,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'executeReloadSession',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'executeReloadSession',
          parameters: _ist.testObjectToJson({'reloadSession': reloadSession}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ir80yzxg.ReloadSession>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ir80yzxg.ReloadSession>> getMyReloadSessions(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'getMyReloadSessions',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'getMyReloadSessions',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ir80yzxg.ReloadSession>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ifny91bp.ReloadTest> registerTest(
    _ist.TestSessionBuilder sessionBuilder,
    _ifny91bp.ReloadTest test,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'registerTest',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'registerTest',
          parameters: _ist.testObjectToJson({'test': test}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ifny91bp.ReloadTest>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ifny91bp.ReloadTest>> getTestsBySession(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue sessionId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'getTestsBySession',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'getTestsBySession',
          parameters: _ist.testObjectToJson({'sessionId': sessionId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ifny91bp.ReloadTest>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i8gnh98r.SupplyStock>> getMySupplies(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'getMySupplies',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'getMySupplies',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i8gnh98r.SupplyStock>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i8gnh98r.SupplyStock> addSupply(
    _ist.TestSessionBuilder sessionBuilder,
    _i8gnh98r.SupplyStock supply,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'addSupply',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'addSupply',
          parameters: _ist.testObjectToJson({'supply': supply}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i8gnh98r.SupplyStock>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i8gnh98r.SupplyStock> updateSupply(
    _ist.TestSessionBuilder sessionBuilder,
    _i8gnh98r.SupplyStock supply,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'reload',
            method: 'updateSupply',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'reload',
          methodName: 'updateSupply',
          parameters: _ist.testObjectToJson({'supply': supply}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i8gnh98r.SupplyStock>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _SecurityRoleEndpoint {
  _SecurityRoleEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i1xchi60.SecurityRole> createRole(
    _ist.TestSessionBuilder sessionBuilder,
    _i1xchi60.SecurityRole role,
    List<_itb2zhn4.RolePermission> permissions,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'securityRole',
            method: 'createRole',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'securityRole',
          methodName: 'createRole',
          parameters: _ist.testObjectToJson({
            'role': role,
            'permissions': permissions,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i1xchi60.SecurityRole>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i1xchi60.SecurityRole> updateRole(
    _ist.TestSessionBuilder sessionBuilder,
    _i1xchi60.SecurityRole role,
    List<_itb2zhn4.RolePermission> permissions,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'securityRole',
            method: 'updateRole',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'securityRole',
          methodName: 'updateRole',
          parameters: _ist.testObjectToJson({
            'role': role,
            'permissions': permissions,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i1xchi60.SecurityRole>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deleteRole(
    _ist.TestSessionBuilder sessionBuilder,
    _i1xchi60.SecurityRole role,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'securityRole',
            method: 'deleteRole',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'securityRole',
          methodName: 'deleteRole',
          parameters: _ist.testObjectToJson({'role': role}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i1xchi60.SecurityRole>> listRoles(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'securityRole',
            method: 'listRoles',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'securityRole',
          methodName: 'listRoles',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i1xchi60.SecurityRole>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_itb2zhn4.RolePermission>> listRolePermissions(
    _ist.TestSessionBuilder sessionBuilder,
    _i1xchi60.SecurityRole role,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'securityRole',
            method: 'listRolePermissions',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'securityRole',
          methodName: 'listRolePermissions',
          parameters: _ist.testObjectToJson({'role': role}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_itb2zhn4.RolePermission>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _SubscriptionPlanEndpoint {
  _SubscriptionPlanEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ilwo31st.SubscriptionPlan> createPlan(
    _ist.TestSessionBuilder sessionBuilder,
    _ilwo31st.SubscriptionPlan plan,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'subscriptionPlan',
            method: 'createPlan',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'subscriptionPlan',
          methodName: 'createPlan',
          parameters: _ist.testObjectToJson({'plan': plan}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ilwo31st.SubscriptionPlan>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ilwo31st.SubscriptionPlan?> readPlan(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'subscriptionPlan',
            method: 'readPlan',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'subscriptionPlan',
          methodName: 'readPlan',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ilwo31st.SubscriptionPlan?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_ilwo31st.SubscriptionPlan> updatePlan(
    _ist.TestSessionBuilder sessionBuilder,
    _ilwo31st.SubscriptionPlan plan,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'subscriptionPlan',
            method: 'updatePlan',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'subscriptionPlan',
          methodName: 'updatePlan',
          parameters: _ist.testObjectToJson({'plan': plan}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ilwo31st.SubscriptionPlan>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> deletePlan(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'subscriptionPlan',
            method: 'deletePlan',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'subscriptionPlan',
          methodName: 'deletePlan',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ilwo31st.SubscriptionPlan>> listPlans(
    _ist.TestSessionBuilder sessionBuilder, {
    _i5bdl2dg.PlanType? planType,
    _ijhakeaq.PlanStatus? status,
    _is.UuidValue? companyId,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'subscriptionPlan',
            method: 'listPlans',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'subscriptionPlan',
          methodName: 'listPlans',
          parameters: _ist.testObjectToJson({
            'planType': planType,
            'status': status,
            'companyId': companyId,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ilwo31st.SubscriptionPlan>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _TrainingEndpoint {
  _TrainingEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i8n7svi8.Training> register(
    _ist.TestSessionBuilder sessionBuilder,
    _i8n7svi8.Training training,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'training',
            method: 'register',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'training',
          methodName: 'register',
          parameters: _ist.testObjectToJson({'training': training}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i8n7svi8.Training>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i8n7svi8.Training>> getMyTrainings(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'training',
            method: 'getMyTrainings',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'training',
          methodName: 'getMyTrainings',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i8n7svi8.Training>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i8n7svi8.Training?> getTraining(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'training',
            method: 'getTraining',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'training',
          methodName: 'getTraining',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i8n7svi8.Training?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _UserEndpoint {
  _UserEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_i2pyoxii.UserProfile?> getById(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'getById',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'getById',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i2pyoxii.UserProfile?> getByCpf(
    _ist.TestSessionBuilder sessionBuilder,
    String cpf,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'getByCpf',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'getByCpf',
          parameters: _ist.testObjectToJson({'cpf': cpf}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i2pyoxii.UserProfile> create(
    _ist.TestSessionBuilder sessionBuilder,
    _i2pyoxii.UserProfile user,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'create',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'create',
          parameters: _ist.testObjectToJson({'user': user}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<_i2pyoxii.UserProfile> update(
    _ist.TestSessionBuilder sessionBuilder,
    _i2pyoxii.UserProfile user,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'update',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'update',
          parameters: _ist.testObjectToJson({'user': user}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_i2pyoxii.UserProfile>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<bool> delete(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'delete',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'delete',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<bool>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i2pyoxii.UserProfile>> list(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'list',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'list',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i2pyoxii.UserProfile>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i2pyoxii.UserProfile>> search(
    _ist.TestSessionBuilder sessionBuilder,
    String query,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'search',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'search',
          parameters: _ist.testObjectToJson({'query': query}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i2pyoxii.UserProfile>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_i1xchi60.SecurityRole>> getRoles(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue userId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'getRoles',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'getRoles',
          parameters: _ist.testObjectToJson({'userId': userId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_i1xchi60.SecurityRole>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<void> updateRoles(
    _ist.TestSessionBuilder sessionBuilder,
    _is.UuidValue userId,
    List<_is.UuidValue> roleIds,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'updateRoles',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'updateRoles',
          parameters: _ist.testObjectToJson({
            'userId': userId,
            'roleIds': roleIds,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<void>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<_ic0khr1u.Company>> getMyCompanies(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'user',
            method: 'getMyCompanies',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'user',
          methodName: 'getMyCompanies',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<_ic0khr1u.Company>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _ViaCepGatewayEndpoint {
  _ViaCepGatewayEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_iy1kcvhk.Address?> getAddressByCep(
    _ist.TestSessionBuilder sessionBuilder,
    String zipcode,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'viaCepGateway',
            method: 'getAddressByCep',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'viaCepGateway',
          methodName: 'getAddressByCep',
          parameters: _ist.testObjectToJson({'zipcode': zipcode}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_iy1kcvhk.Address?>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasAccountEndpoint {
  _AsaasAccountEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createSubaccount(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasAccount',
            method: 'createSubaccount',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasAccount',
          methodName: 'createSubaccount',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listSubaccounts(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasAccount',
            method: 'listSubaccounts',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasAccount',
          methodName: 'listSubaccounts',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getAccountNumber(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasAccount',
            method: 'getAccountNumber',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasAccount',
          methodName: 'getAccountNumber',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getAccountStatus(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasAccount',
            method: 'getAccountStatus',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasAccount',
          methodName: 'getAccountStatus',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasCustomerEndpoint {
  _AsaasCustomerEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createCustomer(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'createCustomer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'createCustomer',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> listCustomers(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
    String? name,
    String? cpfCnpj,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'listCustomers',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'listCustomers',
          parameters: _ist.testObjectToJson({
            'limit': limit,
            'offset': offset,
            'name': name,
            'cpfCnpj': cpfCnpj,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getCustomer(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'getCustomer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'getCustomer',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> updateCustomer(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'updateCustomer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'updateCustomer',
          parameters: _ist.testObjectToJson({
            'id': id,
            'requestData': requestData,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<void> deleteCustomer(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'deleteCustomer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'deleteCustomer',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<void>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> restoreCustomer(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'restoreCustomer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'restoreCustomer',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getCustomerNotifications(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasCustomer',
            method: 'getCustomerNotifications',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasCustomer',
          methodName: 'getCustomerNotifications',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasInstallmentEndpoint {
  _AsaasInstallmentEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createInstallment(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasInstallment',
            method: 'createInstallment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasInstallment',
          methodName: 'createInstallment',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listInstallments(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasInstallment',
            method: 'listInstallments',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasInstallment',
          methodName: 'listInstallments',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getInstallment(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasInstallment',
            method: 'getInstallment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasInstallment',
          methodName: 'getInstallment',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<void> deleteInstallment(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasInstallment',
            method: 'deleteInstallment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasInstallment',
          methodName: 'deleteInstallment',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<void>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listInstallmentPayments(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasInstallment',
            method: 'listInstallmentPayments',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasInstallment',
          methodName: 'listInstallmentPayments',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasPaymentEndpoint {
  _AsaasPaymentEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createPayment(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'createPayment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'createPayment',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listPayments(
    _ist.TestSessionBuilder sessionBuilder, {
    String? customer,
    String? status,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'listPayments',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'listPayments',
          parameters: _ist.testObjectToJson({
            'customer': customer,
            'status': status,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> captureAuthorizedPayment(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'captureAuthorizedPayment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'captureAuthorizedPayment',
          parameters: _ist.testObjectToJson({'paymentId': paymentId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> payWithCreditCard(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'payWithCreditCard',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'payWithCreditCard',
          parameters: _ist.testObjectToJson({
            'paymentId': paymentId,
            'requestData': requestData,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getBillingInfo(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'getBillingInfo',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'getBillingInfo',
          parameters: _ist.testObjectToJson({'paymentId': paymentId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<String> getPaymentStatus(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'getPaymentStatus',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'getPaymentStatus',
          parameters: _ist.testObjectToJson({'paymentId': paymentId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<String>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> refundPayment(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'refundPayment',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'refundPayment',
          parameters: _ist.testObjectToJson({'paymentId': paymentId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getPixQrCode(
    _ist.TestSessionBuilder sessionBuilder,
    String paymentId,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPayment',
            method: 'getPixQrCode',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPayment',
          methodName: 'getPixQrCode',
          parameters: _ist.testObjectToJson({'paymentId': paymentId}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasPixEndpoint {
  _AsaasPixEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createKey(
    _ist.TestSessionBuilder sessionBuilder,
    String type,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPix',
            method: 'createKey',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPix',
          methodName: 'createKey',
          parameters: _ist.testObjectToJson({'type': type}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listKeys(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPix',
            method: 'listKeys',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPix',
          methodName: 'listKeys',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> createStaticQrCode(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> request,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPix',
            method: 'createStaticQrCode',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPix',
          methodName: 'createStaticQrCode',
          parameters: _ist.testObjectToJson({'request': request}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> payQrCode(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> request,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPix',
            method: 'payQrCode',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPix',
          methodName: 'payQrCode',
          parameters: _ist.testObjectToJson({'request': request}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listTransactions(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
    String? startDate,
    String? endDate,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasPix',
            method: 'listTransactions',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasPix',
          methodName: 'listTransactions',
          parameters: _ist.testObjectToJson({
            'limit': limit,
            'offset': offset,
            'startDate': startDate,
            'endDate': endDate,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasTransferEndpoint {
  _AsaasTransferEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createTransfer(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasTransfer',
            method: 'createTransfer',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasTransfer',
          methodName: 'createTransfer',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listTransfers(
    _ist.TestSessionBuilder sessionBuilder, {
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasTransfer',
            method: 'listTransfers',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasTransfer',
          methodName: 'listTransfers',
          parameters: _ist.testObjectToJson({'limit': limit, 'offset': offset}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> getExtract(
    _ist.TestSessionBuilder sessionBuilder, {
    String? startDate,
    String? endDate,
    int? limit,
    int? offset,
  }) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasTransfer',
            method: 'getExtract',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasTransfer',
          methodName: 'getExtract',
          parameters: _ist.testObjectToJson({
            'startDate': startDate,
            'endDate': endDate,
            'limit': limit,
            'offset': offset,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> getBalance(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasTransfer',
            method: 'getBalance',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasTransfer',
          methodName: 'getBalance',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasWebhookConfigEndpoint {
  _AsaasWebhookConfigEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<Map<String, dynamic>> createWebhook(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasWebhookConfig',
            method: 'createWebhook',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasWebhookConfig',
          methodName: 'createWebhook',
          parameters: _ist.testObjectToJson({'requestData': requestData}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<List<Map<String, dynamic>>> listWebhooks(
    _ist.TestSessionBuilder sessionBuilder,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasWebhookConfig',
            method: 'listWebhooks',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasWebhookConfig',
          methodName: 'listWebhooks',
          parameters: _ist.testObjectToJson({}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<List<Map<String, dynamic>>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<Map<String, dynamic>> updateWebhook(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
    Map<String, dynamic> requestData,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasWebhookConfig',
            method: 'updateWebhook',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasWebhookConfig',
          methodName: 'updateWebhook',
          parameters: _ist.testObjectToJson({
            'id': id,
            'requestData': requestData,
          }),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<Map<String, dynamic>>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }

  _ida.Future<void> deleteWebhook(
    _ist.TestSessionBuilder sessionBuilder,
    String id,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasWebhookConfig',
            method: 'deleteWebhook',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasWebhookConfig',
          methodName: 'deleteWebhook',
          parameters: _ist.testObjectToJson({'id': id}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<void>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _AsaasWebhookReceiverEndpoint {
  _AsaasWebhookReceiverEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<void> handleEvent(
    _ist.TestSessionBuilder sessionBuilder,
    Map<String, dynamic> payload,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'asaasWebhookReceiver',
            method: 'handleEvent',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'asaasWebhookReceiver',
          methodName: 'handleEvent',
          parameters: _ist.testObjectToJson({'payload': payload}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<void>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _GreetingEndpoint {
  _GreetingEndpoint(this._endpointDispatch, this._serializationManager);

  final _is.EndpointDispatch _endpointDispatch;

  final _is.SerializationManager _serializationManager;

  _ida.Future<_ikgv4xca.Greeting> hello(
    _ist.TestSessionBuilder sessionBuilder,
    String name,
  ) async {
    return _ist.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild(
            endpoint: 'greeting',
            method: 'hello',
          );
      try {
        var _localCallContext = await _endpointDispatch.getMethodCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'greeting',
          methodName: 'hello',
          parameters: _ist.testObjectToJson({'name': name}),
          serializationManager: _serializationManager,
        );
        var _localReturnValue =
            await (_localCallContext.method.call(
                  _localUniqueSession,
                  _localCallContext.arguments,
                )
                as _ida.Future<_ikgv4xca.Greeting>);
        return _localReturnValue;
      } finally {
        await _localUniqueSession.close();
      }
    });
  }
}

class _BirthdayReminderFutureCall {
  Future<void> invoke(
    _ist.TestSessionBuilder sessionBuilder,
    _ikgv4xca.Greeting? object,
  ) async {
    var _localUniqueSession =
        (sessionBuilder as _ist.InternalTestSessionBuilder).internalBuild();
    try {
      await _iahu0g5j.BirthdayReminderInvokeFutureCall().invoke(
        _localUniqueSession,
        object,
      );
    } finally {
      await _localUniqueSession.close();
    }
  }
}
