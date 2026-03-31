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
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/ammunition_endpoint.dart' as _i2;
import '../endpoints/club_endpoint.dart' as _i3;
import '../endpoints/firearm_endpoint.dart' as _i4;
import '../endpoints/gunsmith_endpoint.dart' as _i5;
import '../endpoints/profile_endpoint.dart' as _i6;
import '../endpoints/reload_endpoint.dart' as _i7;
import '../endpoints/training_endpoint.dart' as _i8;
import '../greeting_endpoint.dart' as _i9;
import 'package:oneshot_server/src/generated/shooter/ammunition_stock.dart'
    as _i10;
import 'package:oneshot_server/src/generated/club/club.dart' as _i11;
import 'package:oneshot_server/src/generated/shooter/firearm.dart' as _i12;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith_client.dart'
    as _i13;
import 'package:oneshot_server/src/generated/gunsmith/service_order.dart'
    as _i14;
import 'package:oneshot_server/src/generated/gunsmith/service_order_item.dart'
    as _i15;
import 'package:oneshot_server/src/generated/common/user_profile.dart' as _i16;
import 'package:oneshot_server/src/generated/shooter/reload_session.dart'
    as _i17;
import 'package:oneshot_server/src/generated/shooter/reload_test.dart' as _i18;
import 'package:oneshot_server/src/generated/common/supply_stock.dart' as _i19;
import 'package:oneshot_server/src/generated/shooter/training.dart' as _i20;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i21;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'ammunition': _i2.AmmunitionEndpoint()
        ..initialize(
          server,
          'ammunition',
          null,
        ),
      'club': _i3.ClubEndpoint()
        ..initialize(
          server,
          'club',
          null,
        ),
      'firearm': _i4.FirearmEndpoint()
        ..initialize(
          server,
          'firearm',
          null,
        ),
      'gunsmith': _i5.GunsmithEndpoint()
        ..initialize(
          server,
          'gunsmith',
          null,
        ),
      'profile': _i6.ProfileEndpoint()
        ..initialize(
          server,
          'profile',
          null,
        ),
      'reload': _i7.ReloadEndpoint()
        ..initialize(
          server,
          'reload',
          null,
        ),
      'training': _i8.TrainingEndpoint()
        ..initialize(
          server,
          'training',
          null,
        ),
      'greeting': _i9.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['ammunition'] = _i1.EndpointConnector(
      name: 'ammunition',
      endpoint: endpoints['ammunition']!,
      methodConnectors: {
        'getMyAmmunition': _i1.MethodConnector(
          name: 'getMyAmmunition',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['ammunition'] as _i2.AmmunitionEndpoint)
                  .getMyAmmunition(session),
        ),
        'addAmmunition': _i1.MethodConnector(
          name: 'addAmmunition',
          params: {
            'ammo': _i1.ParameterDescription(
              name: 'ammo',
              type: _i1.getType<_i10.AmmunitionStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['ammunition'] as _i2.AmmunitionEndpoint)
                  .addAmmunition(
                    session,
                    params['ammo'],
                  ),
        ),
        'adjustQuantity': _i1.MethodConnector(
          name: 'adjustQuantity',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'change': _i1.ParameterDescription(
              name: 'change',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['ammunition'] as _i2.AmmunitionEndpoint)
                  .adjustQuantity(
                    session,
                    params['id'],
                    params['change'],
                  ),
        ),
        'deleteAmmunition': _i1.MethodConnector(
          name: 'deleteAmmunition',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['ammunition'] as _i2.AmmunitionEndpoint)
                  .deleteAmmunition(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['club'] = _i1.EndpointConnector(
      name: 'club',
      endpoint: endpoints['club']!,
      methodConnectors: {
        'createClub': _i1.MethodConnector(
          name: 'createClub',
          params: {
            'club': _i1.ParameterDescription(
              name: 'club',
              type: _i1.getType<_i11.Club>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i3.ClubEndpoint).createClub(
                session,
                params['club'],
              ),
        ),
        'listClubs': _i1.MethodConnector(
          name: 'listClubs',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['club'] as _i3.ClubEndpoint).listClubs(session),
        ),
        'requestMembership': _i1.MethodConnector(
          name: 'requestMembership',
          params: {
            'clubId': _i1.ParameterDescription(
              name: 'clubId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['club'] as _i3.ClubEndpoint).requestMembership(
                    session,
                    params['clubId'],
                  ),
        ),
        'getMyMemberships': _i1.MethodConnector(
          name: 'getMyMemberships',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i3.ClubEndpoint)
                  .getMyMemberships(session),
        ),
        'checkIn': _i1.MethodConnector(
          name: 'checkIn',
          params: {
            'clubId': _i1.ParameterDescription(
              name: 'clubId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'firearmId': _i1.ParameterDescription(
              name: 'firearmId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i3.ClubEndpoint).checkIn(
                session,
                params['clubId'],
                params['firearmId'],
              ),
        ),
        'checkOut': _i1.MethodConnector(
          name: 'checkOut',
          params: {
            'visitId': _i1.ParameterDescription(
              name: 'visitId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'shotsFired': _i1.ParameterDescription(
              name: 'shotsFired',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i3.ClubEndpoint).checkOut(
                session,
                params['visitId'],
                params['shotsFired'],
              ),
        ),
        'getMyVisits': _i1.MethodConnector(
          name: 'getMyVisits',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['club'] as _i3.ClubEndpoint).getMyVisits(session),
        ),
      },
    );
    connectors['firearm'] = _i1.EndpointConnector(
      name: 'firearm',
      endpoint: endpoints['firearm']!,
      methodConnectors: {
        'getMyFirearms': _i1.MethodConnector(
          name: 'getMyFirearms',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i4.FirearmEndpoint)
                  .getMyFirearms(session),
        ),
        'registerFirearm': _i1.MethodConnector(
          name: 'registerFirearm',
          params: {
            'firearm': _i1.ParameterDescription(
              name: 'firearm',
              type: _i1.getType<_i12.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['firearm'] as _i4.FirearmEndpoint).registerFirearm(
                    session,
                    params['firearm'],
                  ),
        ),
        'updateFirearm': _i1.MethodConnector(
          name: 'updateFirearm',
          params: {
            'firearm': _i1.ParameterDescription(
              name: 'firearm',
              type: _i1.getType<_i12.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['firearm'] as _i4.FirearmEndpoint).updateFirearm(
                    session,
                    params['firearm'],
                  ),
        ),
        'deleteFirearm': _i1.MethodConnector(
          name: 'deleteFirearm',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['firearm'] as _i4.FirearmEndpoint).deleteFirearm(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['gunsmith'] = _i1.EndpointConnector(
      name: 'gunsmith',
      endpoint: endpoints['gunsmith']!,
      methodConnectors: {
        'createClient': _i1.MethodConnector(
          name: 'createClient',
          params: {
            'client': _i1.ParameterDescription(
              name: 'client',
              type: _i1.getType<_i13.GunsmithClient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['gunsmith'] as _i5.GunsmithEndpoint).createClient(
                    session,
                    params['client'],
                  ),
        ),
        'findClientByCpf': _i1.MethodConnector(
          name: 'findClientByCpf',
          params: {
            'cpf': _i1.ParameterDescription(
              name: 'cpf',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i5.GunsmithEndpoint)
                  .findClientByCpf(
                    session,
                    params['cpf'],
                  ),
        ),
        'getMyClients': _i1.MethodConnector(
          name: 'getMyClients',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i5.GunsmithEndpoint)
                  .getMyClients(session),
        ),
        'registerServiceOrder': _i1.MethodConnector(
          name: 'registerServiceOrder',
          params: {
            'order': _i1.ParameterDescription(
              name: 'order',
              type: _i1.getType<_i14.ServiceOrder>(),
              nullable: false,
            ),
            'items': _i1.ParameterDescription(
              name: 'items',
              type: _i1.getType<List<_i15.ServiceOrderItem>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i5.GunsmithEndpoint)
                  .registerServiceOrder(
                    session,
                    params['order'],
                    params['items'],
                  ),
        ),
        'getOrdersByClient': _i1.MethodConnector(
          name: 'getOrdersByClient',
          params: {
            'clientId': _i1.ParameterDescription(
              name: 'clientId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i5.GunsmithEndpoint)
                  .getOrdersByClient(
                    session,
                    params['clientId'],
                  ),
        ),
        'getOrderItems': _i1.MethodConnector(
          name: 'getOrderItems',
          params: {
            'serviceOrderId': _i1.ParameterDescription(
              name: 'serviceOrderId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['gunsmith'] as _i5.GunsmithEndpoint).getOrderItems(
                    session,
                    params['serviceOrderId'],
                  ),
        ),
      },
    );
    connectors['profile'] = _i1.EndpointConnector(
      name: 'profile',
      endpoint: endpoints['profile']!,
      methodConnectors: {
        'getOrCreateMyProfile': _i1.MethodConnector(
          name: 'getOrCreateMyProfile',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['profile'] as _i6.ProfileEndpoint)
                  .getOrCreateMyProfile(session),
        ),
        'updateMyProfile': _i1.MethodConnector(
          name: 'updateMyProfile',
          params: {
            'profile': _i1.ParameterDescription(
              name: 'profile',
              type: _i1.getType<_i16.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['profile'] as _i6.ProfileEndpoint).updateMyProfile(
                    session,
                    params['profile'],
                  ),
        ),
        'getProfileById': _i1.MethodConnector(
          name: 'getProfileById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['profile'] as _i6.ProfileEndpoint).getProfileById(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['reload'] = _i1.EndpointConnector(
      name: 'reload',
      endpoint: endpoints['reload']!,
      methodConnectors: {
        'executeReloadSession': _i1.MethodConnector(
          name: 'executeReloadSession',
          params: {
            'reloadSession': _i1.ParameterDescription(
              name: 'reloadSession',
              type: _i1.getType<_i17.ReloadSession>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i7.ReloadEndpoint)
                  .executeReloadSession(
                    session,
                    params['reloadSession'],
                  ),
        ),
        'getMyReloadSessions': _i1.MethodConnector(
          name: 'getMyReloadSessions',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i7.ReloadEndpoint)
                  .getMyReloadSessions(session),
        ),
        'registerTest': _i1.MethodConnector(
          name: 'registerTest',
          params: {
            'test': _i1.ParameterDescription(
              name: 'test',
              type: _i1.getType<_i18.ReloadTest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i7.ReloadEndpoint).registerTest(
                    session,
                    params['test'],
                  ),
        ),
        'getTestsBySession': _i1.MethodConnector(
          name: 'getTestsBySession',
          params: {
            'sessionId': _i1.ParameterDescription(
              name: 'sessionId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i7.ReloadEndpoint).getTestsBySession(
                    session,
                    params['sessionId'],
                  ),
        ),
        'getMySupplies': _i1.MethodConnector(
          name: 'getMySupplies',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i7.ReloadEndpoint)
                  .getMySupplies(session),
        ),
        'addSupply': _i1.MethodConnector(
          name: 'addSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i19.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i7.ReloadEndpoint).addSupply(
                session,
                params['supply'],
              ),
        ),
        'updateSupply': _i1.MethodConnector(
          name: 'updateSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i19.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i7.ReloadEndpoint).updateSupply(
                    session,
                    params['supply'],
                  ),
        ),
      },
    );
    connectors['training'] = _i1.EndpointConnector(
      name: 'training',
      endpoint: endpoints['training']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'training': _i1.ParameterDescription(
              name: 'training',
              type: _i1.getType<_i20.Training>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['training'] as _i8.TrainingEndpoint).register(
                    session,
                    params['training'],
                  ),
        ),
        'getMyTrainings': _i1.MethodConnector(
          name: 'getMyTrainings',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['training'] as _i8.TrainingEndpoint)
                  .getMyTrainings(session),
        ),
        'getTraining': _i1.MethodConnector(
          name: 'getTraining',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['training'] as _i8.TrainingEndpoint).getTraining(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i9.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i21.Endpoints()..initializeEndpoints(server);
  }
}
