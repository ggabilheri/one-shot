/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _i3;
import 'package:oneshot_client/src/protocol/club/club.dart' as _i4;
import 'package:oneshot_client/src/protocol/club/membership.dart' as _i5;
import 'package:oneshot_client/src/protocol/club/range_visit.dart' as _i6;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i7;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i8;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart' as _i9;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i10;
import 'package:oneshot_client/src/protocol/common/user_profile.dart' as _i11;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i12;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i13;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i14;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i15;
import 'package:oneshot_client/src/protocol/greeting.dart' as _i16;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i17;
import 'protocol.dart' as _i18;

/// {@category Endpoint}
class EndpointAmmunition extends _i1.EndpointRef {
  EndpointAmmunition(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ammunition';

  /// Lista todo o estoque de munições prontas do usuário logado.
  _i2.Future<List<_i3.AmmunitionStock>> getMyAmmunition() =>
      caller.callServerEndpoint<List<_i3.AmmunitionStock>>(
        'ammunition',
        'getMyAmmunition',
        {},
      );

  /// Adiciona uma nova munição ao estoque (ex: compra).
  _i2.Future<_i3.AmmunitionStock> addAmmunition(_i3.AmmunitionStock ammo) =>
      caller.callServerEndpoint<_i3.AmmunitionStock>(
        'ammunition',
        'addAmmunition',
        {'ammo': ammo},
      );

  /// Ajusta a quantidade manualmente.
  _i2.Future<_i3.AmmunitionStock?> adjustQuantity(
    _i1.UuidValue id,
    int change,
  ) => caller.callServerEndpoint<_i3.AmmunitionStock?>(
    'ammunition',
    'adjustQuantity',
    {
      'id': id,
      'change': change,
    },
  );

  /// Deleta um registro de estoque de munição.
  _i2.Future<bool> deleteAmmunition(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'ammunition',
        'deleteAmmunition',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointClub extends _i1.EndpointRef {
  EndpointClub(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'club';

  /// Cria um novo clube de tiro no sistema.
  _i2.Future<_i4.Club> createClub(_i4.Club club) =>
      caller.callServerEndpoint<_i4.Club>(
        'club',
        'createClub',
        {'club': club},
      );

  /// Lista todos os clubes ativos.
  _i2.Future<List<_i4.Club>> listClubs() =>
      caller.callServerEndpoint<List<_i4.Club>>(
        'club',
        'listClubs',
        {},
      );

  /// Solicita filiação a um clube.
  _i2.Future<_i5.Membership> requestMembership(_i1.UuidValue clubId) =>
      caller.callServerEndpoint<_i5.Membership>(
        'club',
        'requestMembership',
        {'clubId': clubId},
      );

  /// Lista minhas filiações.
  _i2.Future<List<_i5.Membership>> getMyMemberships() =>
      caller.callServerEndpoint<List<_i5.Membership>>(
        'club',
        'getMyMemberships',
        {},
      );

  /// Registra entrada no estande (Check-in).
  _i2.Future<_i6.RangeVisit> checkIn(
    _i1.UuidValue clubId,
    _i1.UuidValue? firearmId,
  ) => caller.callServerEndpoint<_i6.RangeVisit>(
    'club',
    'checkIn',
    {
      'clubId': clubId,
      'firearmId': firearmId,
    },
  );

  /// Registra saída do estande (Check-out).
  _i2.Future<_i6.RangeVisit> checkOut(
    _i1.UuidValue visitId,
    int shotsFired,
  ) => caller.callServerEndpoint<_i6.RangeVisit>(
    'club',
    'checkOut',
    {
      'visitId': visitId,
      'shotsFired': shotsFired,
    },
  );

  /// Lista minhas visitas.
  _i2.Future<List<_i6.RangeVisit>> getMyVisits() =>
      caller.callServerEndpoint<List<_i6.RangeVisit>>(
        'club',
        'getMyVisits',
        {},
      );
}

/// {@category Endpoint}
class EndpointFirearm extends _i1.EndpointRef {
  EndpointFirearm(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'firearm';

  /// Lista todas as armas do usuário logado.
  _i2.Future<List<_i7.Firearm>> getMyFirearms() =>
      caller.callServerEndpoint<List<_i7.Firearm>>(
        'firearm',
        'getMyFirearms',
        {},
      );

  /// Registra uma nova arma de fogo.
  _i2.Future<_i7.Firearm> registerFirearm(_i7.Firearm firearm) =>
      caller.callServerEndpoint<_i7.Firearm>(
        'firearm',
        'registerFirearm',
        {'firearm': firearm},
      );

  /// Atualiza os dados de uma arma existente.
  _i2.Future<_i7.Firearm> updateFirearm(_i7.Firearm firearm) =>
      caller.callServerEndpoint<_i7.Firearm>(
        'firearm',
        'updateFirearm',
        {'firearm': firearm},
      );

  /// Remove uma arma de fogo.
  _i2.Future<bool> deleteFirearm(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'firearm',
        'deleteFirearm',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointGunsmith extends _i1.EndpointRef {
  EndpointGunsmith(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gunsmith';

  /// Cria um novo cliente para o armeiro logado.
  _i2.Future<_i8.GunsmithClient> createClient(_i8.GunsmithClient client) =>
      caller.callServerEndpoint<_i8.GunsmithClient>(
        'gunsmith',
        'createClient',
        {'client': client},
      );

  /// Busca um cliente pelo CPF.
  _i2.Future<_i8.GunsmithClient?> findClientByCpf(String cpf) =>
      caller.callServerEndpoint<_i8.GunsmithClient?>(
        'gunsmith',
        'findClientByCpf',
        {'cpf': cpf},
      );

  /// Lista todos os clientes de um armeiro específico.
  _i2.Future<List<_i8.GunsmithClient>> getMyClients() =>
      caller.callServerEndpoint<List<_i8.GunsmithClient>>(
        'gunsmith',
        'getMyClients',
        {},
      );

  /// Registra uma nova Ordem de Serviço com seus itens.
  _i2.Future<_i9.ServiceOrder> registerServiceOrder(
    _i9.ServiceOrder order,
    List<_i10.ServiceOrderItem> items,
  ) => caller.callServerEndpoint<_i9.ServiceOrder>(
    'gunsmith',
    'registerServiceOrder',
    {
      'order': order,
      'items': items,
    },
  );

  /// Lista as ordens de serviço de um cliente.
  _i2.Future<List<_i9.ServiceOrder>> getOrdersByClient(
    _i1.UuidValue clientId,
  ) => caller.callServerEndpoint<List<_i9.ServiceOrder>>(
    'gunsmith',
    'getOrdersByClient',
    {'clientId': clientId},
  );

  /// Busca os itens de uma ordem específica.
  _i2.Future<List<_i10.ServiceOrderItem>> getOrderItems(
    _i1.UuidValue serviceOrderId,
  ) => caller.callServerEndpoint<List<_i10.ServiceOrderItem>>(
    'gunsmith',
    'getOrderItems',
    {'serviceOrderId': serviceOrderId},
  );
}

/// {@category Endpoint}
class EndpointProfile extends _i1.EndpointRef {
  EndpointProfile(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'profile';

  /// Garante que o perfil do usuário logado exista no domínio OneShot.
  _i2.Future<_i11.UserProfile> getOrCreateMyProfile() =>
      caller.callServerEndpoint<_i11.UserProfile>(
        'profile',
        'getOrCreateMyProfile',
        {},
      );

  /// Atualiza os dados do perfil (CPF, CR, etc).
  _i2.Future<_i11.UserProfile> updateMyProfile(_i11.UserProfile profile) =>
      caller.callServerEndpoint<_i11.UserProfile>(
        'profile',
        'updateMyProfile',
        {'profile': profile},
      );

  /// Busca o perfil pelo ID (para visualização de outros administradores ou clubes).
  _i2.Future<_i11.UserProfile?> getProfileById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i11.UserProfile?>(
        'profile',
        'getProfileById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointReload extends _i1.EndpointRef {
  EndpointReload(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'reload';

  /// Executa uma nova sessão de recarga completa com débito de insumos e entrada no estoque.
  _i2.Future<_i12.ReloadSession> executeReloadSession(
    _i12.ReloadSession reloadSession,
  ) => caller.callServerEndpoint<_i12.ReloadSession>(
    'reload',
    'executeReloadSession',
    {'reloadSession': reloadSession},
  );

  /// Lista sessões de recarga do usuário logado.
  _i2.Future<List<_i12.ReloadSession>> getMyReloadSessions() =>
      caller.callServerEndpoint<List<_i12.ReloadSession>>(
        'reload',
        'getMyReloadSessions',
        {},
      );

  /// Registra resultados de um teste de cronógrafo vinculado a uma sessão.
  _i2.Future<_i13.ReloadTest> registerTest(_i13.ReloadTest test) =>
      caller.callServerEndpoint<_i13.ReloadTest>(
        'reload',
        'registerTest',
        {'test': test},
      );

  /// Lista testes de uma sessão específica.
  _i2.Future<List<_i13.ReloadTest>> getTestsBySession(
    _i1.UuidValue sessionId,
  ) => caller.callServerEndpoint<List<_i13.ReloadTest>>(
    'reload',
    'getTestsBySession',
    {'sessionId': sessionId},
  );

  /// Lista todo o estoque de insumos (Pólvora, Espoleta, Projetis etc) do usuário.
  _i2.Future<List<_i14.SupplyStock>> getMySupplies() =>
      caller.callServerEndpoint<List<_i14.SupplyStock>>(
        'reload',
        'getMySupplies',
        {},
      );

  /// Cadastra um novo insumo ao estoque.
  _i2.Future<_i14.SupplyStock> addSupply(_i14.SupplyStock supply) =>
      caller.callServerEndpoint<_i14.SupplyStock>(
        'reload',
        'addSupply',
        {'supply': supply},
      );

  /// Atualiza dados de um insumo.
  _i2.Future<_i14.SupplyStock> updateSupply(_i14.SupplyStock supply) =>
      caller.callServerEndpoint<_i14.SupplyStock>(
        'reload',
        'updateSupply',
        {'supply': supply},
      );
}

/// {@category Endpoint}
class EndpointTraining extends _i1.EndpointRef {
  EndpointTraining(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'training';

  /// Registro de um novo treino.
  /// O userId será validado dentro do caso de uso.
  _i2.Future<_i15.Training> register(_i15.Training training) =>
      caller.callServerEndpoint<_i15.Training>(
        'training',
        'register',
        {'training': training},
      );

  /// Lista todos os treinos do usuário logado.
  _i2.Future<List<_i15.Training>> getMyTrainings() =>
      caller.callServerEndpoint<List<_i15.Training>>(
        'training',
        'getMyTrainings',
        {},
      );

  /// Busca um treino específico.
  _i2.Future<_i15.Training?> getTraining(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i15.Training?>(
        'training',
        'getTraining',
        {'id': id},
      );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i16.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i16.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i17.Caller(client);
  }

  late final _i17.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i18.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    ammunition = EndpointAmmunition(this);
    club = EndpointClub(this);
    firearm = EndpointFirearm(this);
    gunsmith = EndpointGunsmith(this);
    profile = EndpointProfile(this);
    reload = EndpointReload(this);
    training = EndpointTraining(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointAmmunition ammunition;

  late final EndpointClub club;

  late final EndpointFirearm firearm;

  late final EndpointGunsmith gunsmith;

  late final EndpointProfile profile;

  late final EndpointReload reload;

  late final EndpointTraining training;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'ammunition': ammunition,
    'club': club,
    'firearm': firearm,
    'gunsmith': gunsmith,
    'profile': profile,
    'reload': reload,
    'training': training,
    'greeting': greeting,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
