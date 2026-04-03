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
import '../endpoints/accessory_endpoint.dart' as _i2;
import '../endpoints/ammunition_endpoint.dart' as _i3;
import '../endpoints/club_endpoint.dart' as _i4;
import '../endpoints/document_endpoint.dart' as _i5;
import '../endpoints/firearm_endpoint.dart' as _i6;
import '../endpoints/gunsmith_endpoint.dart' as _i7;
import '../endpoints/profile_endpoint.dart' as _i8;
import '../endpoints/reload_endpoint.dart' as _i9;
import '../endpoints/training_endpoint.dart' as _i10;
import '../endpoints/user_endpoint.dart' as _i11;
import '../endpoints/via_cep_gateway_endpoint.dart' as _i12;
import '../greeting_endpoint.dart' as _i13;
import 'package:oneshot_server/src/generated/common/accessory.dart' as _i14;
import 'package:oneshot_server/src/generated/shooter/ammunition_stock.dart'
    as _i15;
import 'package:oneshot_server/src/generated/club/club.dart' as _i16;
import 'package:oneshot_server/src/generated/common/document.dart' as _i17;
import 'package:oneshot_server/src/generated/shooter/firearm.dart' as _i18;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith_client.dart'
    as _i19;
import 'package:oneshot_server/src/generated/gunsmith/service_order.dart'
    as _i20;
import 'package:oneshot_server/src/generated/gunsmith/service_order_item.dart'
    as _i21;
import 'package:oneshot_server/src/generated/common/user_profile.dart' as _i22;
import 'package:oneshot_server/src/generated/shooter/reload_session.dart'
    as _i23;
import 'package:oneshot_server/src/generated/shooter/reload_test.dart' as _i24;
import 'package:oneshot_server/src/generated/common/supply_stock.dart' as _i25;
import 'package:oneshot_server/src/generated/shooter/training.dart' as _i26;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i27;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'accessory': _i2.AccessoryEndpoint()
        ..initialize(
          server,
          'accessory',
          null,
        ),
      'ammunition': _i3.AmmunitionEndpoint()
        ..initialize(
          server,
          'ammunition',
          null,
        ),
      'club': _i4.ClubEndpoint()
        ..initialize(
          server,
          'club',
          null,
        ),
      'document': _i5.DocumentEndpoint()
        ..initialize(
          server,
          'document',
          null,
        ),
      'firearm': _i6.FirearmEndpoint()
        ..initialize(
          server,
          'firearm',
          null,
        ),
      'gunsmith': _i7.GunsmithEndpoint()
        ..initialize(
          server,
          'gunsmith',
          null,
        ),
      'profile': _i8.ProfileEndpoint()
        ..initialize(
          server,
          'profile',
          null,
        ),
      'reload': _i9.ReloadEndpoint()
        ..initialize(
          server,
          'reload',
          null,
        ),
      'training': _i10.TrainingEndpoint()
        ..initialize(
          server,
          'training',
          null,
        ),
      'user': _i11.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'viaCepGateway': _i12.ViaCepGatewayEndpoint()
        ..initialize(
          server,
          'viaCepGateway',
          null,
        ),
      'greeting': _i13.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['accessory'] = _i1.EndpointConnector(
      name: 'accessory',
      endpoint: endpoints['accessory']!,
      methodConnectors: {
        'getById': _i1.MethodConnector(
          name: 'getById',
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
                  (endpoints['accessory'] as _i2.AccessoryEndpoint).getById(
                    session,
                    params['id'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'accessory': _i1.ParameterDescription(
              name: 'accessory',
              type: _i1.getType<_i14.Accessory>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['accessory'] as _i2.AccessoryEndpoint).create(
                    session,
                    params['accessory'],
                  ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'accessory': _i1.ParameterDescription(
              name: 'accessory',
              type: _i1.getType<_i14.Accessory>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['accessory'] as _i2.AccessoryEndpoint).update(
                    session,
                    params['accessory'],
                  ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
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
                  (endpoints['accessory'] as _i2.AccessoryEndpoint).delete(
                    session,
                    params['id'],
                  ),
        ),
        'listByUser': _i1.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['accessory'] as _i2.AccessoryEndpoint).listByUser(
                    session,
                    params['userId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
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
              ) async => (endpoints['ammunition'] as _i3.AmmunitionEndpoint)
                  .getMyAmmunition(session),
        ),
        'addAmmunition': _i1.MethodConnector(
          name: 'addAmmunition',
          params: {
            'ammo': _i1.ParameterDescription(
              name: 'ammo',
              type: _i1.getType<_i15.AmmunitionStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['ammunition'] as _i3.AmmunitionEndpoint)
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
              ) async => (endpoints['ammunition'] as _i3.AmmunitionEndpoint)
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
              ) async => (endpoints['ammunition'] as _i3.AmmunitionEndpoint)
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
              type: _i1.getType<_i16.Club>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i4.ClubEndpoint).createClub(
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
                  (endpoints['club'] as _i4.ClubEndpoint).listClubs(session),
        ),
        'updateClub': _i1.MethodConnector(
          name: 'updateClub',
          params: {
            'club': _i1.ParameterDescription(
              name: 'club',
              type: _i1.getType<_i16.Club>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['club'] as _i4.ClubEndpoint).updateClub(
                session,
                params['club'],
              ),
        ),
        'deleteClub': _i1.MethodConnector(
          name: 'deleteClub',
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
              ) async => (endpoints['club'] as _i4.ClubEndpoint).deleteClub(
                session,
                params['clubId'],
              ),
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
                  (endpoints['club'] as _i4.ClubEndpoint).requestMembership(
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
              ) async => (endpoints['club'] as _i4.ClubEndpoint)
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
              ) async => (endpoints['club'] as _i4.ClubEndpoint).checkIn(
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
              ) async => (endpoints['club'] as _i4.ClubEndpoint).checkOut(
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
                  (endpoints['club'] as _i4.ClubEndpoint).getMyVisits(session),
        ),
      },
    );
    connectors['document'] = _i1.EndpointConnector(
      name: 'document',
      endpoint: endpoints['document']!,
      methodConnectors: {
        'getById': _i1.MethodConnector(
          name: 'getById',
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
                  (endpoints['document'] as _i5.DocumentEndpoint).getById(
                    session,
                    params['id'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'document': _i1.ParameterDescription(
              name: 'document',
              type: _i1.getType<_i17.Document>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i5.DocumentEndpoint).create(
                session,
                params['document'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'document': _i1.ParameterDescription(
              name: 'document',
              type: _i1.getType<_i17.Document>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i5.DocumentEndpoint).update(
                session,
                params['document'],
              ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
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
              ) async => (endpoints['document'] as _i5.DocumentEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'listByUser': _i1.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['document'] as _i5.DocumentEndpoint).listByUser(
                    session,
                    params['userId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'listByFirearm': _i1.MethodConnector(
          name: 'listByFirearm',
          params: {
            'firearmId': _i1.ParameterDescription(
              name: 'firearmId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['document'] as _i5.DocumentEndpoint).listByFirearm(
                    session,
                    params['firearmId'],
                  ),
        ),
        'listByAccessory': _i1.MethodConnector(
          name: 'listByAccessory',
          params: {
            'accessoryId': _i1.ParameterDescription(
              name: 'accessoryId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i5.DocumentEndpoint)
                  .listByAccessory(
                    session,
                    params['accessoryId'],
                  ),
        ),
        'getUploadDescription': _i1.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i5.DocumentEndpoint)
                  .getUploadDescription(
                    session,
                    params['path'],
                  ),
        ),
        'verifyUpload': _i1.MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['document'] as _i5.DocumentEndpoint).verifyUpload(
                    session,
                    params['path'],
                  ),
        ),
      },
    );
    connectors['firearm'] = _i1.EndpointConnector(
      name: 'firearm',
      endpoint: endpoints['firearm']!,
      methodConnectors: {
        'getById': _i1.MethodConnector(
          name: 'getById',
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
              ) async => (endpoints['firearm'] as _i6.FirearmEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getBySerialNumber': _i1.MethodConnector(
          name: 'getBySerialNumber',
          params: {
            'serialNumber': _i1.ParameterDescription(
              name: 'serialNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i6.FirearmEndpoint)
                  .getBySerialNumber(
                    session,
                    params['serialNumber'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'firearm': _i1.ParameterDescription(
              name: 'firearm',
              type: _i1.getType<_i18.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i6.FirearmEndpoint).create(
                session,
                params['firearm'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'firearm': _i1.ParameterDescription(
              name: 'firearm',
              type: _i1.getType<_i18.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i6.FirearmEndpoint).update(
                session,
                params['firearm'],
              ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
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
              ) async => (endpoints['firearm'] as _i6.FirearmEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'listByUser': _i1.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['firearm'] as _i6.FirearmEndpoint).listByUser(
                    session,
                    params['userId'],
                    limit: params['limit'],
                    offset: params['offset'],
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
              type: _i1.getType<_i19.GunsmithClient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['gunsmith'] as _i7.GunsmithEndpoint).createClient(
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
              ) async => (endpoints['gunsmith'] as _i7.GunsmithEndpoint)
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
              ) async => (endpoints['gunsmith'] as _i7.GunsmithEndpoint)
                  .getMyClients(session),
        ),
        'registerServiceOrder': _i1.MethodConnector(
          name: 'registerServiceOrder',
          params: {
            'order': _i1.ParameterDescription(
              name: 'order',
              type: _i1.getType<_i20.ServiceOrder>(),
              nullable: false,
            ),
            'items': _i1.ParameterDescription(
              name: 'items',
              type: _i1.getType<List<_i21.ServiceOrderItem>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i7.GunsmithEndpoint)
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
              ) async => (endpoints['gunsmith'] as _i7.GunsmithEndpoint)
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
                  (endpoints['gunsmith'] as _i7.GunsmithEndpoint).getOrderItems(
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
              ) async => (endpoints['profile'] as _i8.ProfileEndpoint)
                  .getOrCreateMyProfile(session),
        ),
        'updateMyProfile': _i1.MethodConnector(
          name: 'updateMyProfile',
          params: {
            'profile': _i1.ParameterDescription(
              name: 'profile',
              type: _i1.getType<_i22.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['profile'] as _i8.ProfileEndpoint).updateMyProfile(
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
                  (endpoints['profile'] as _i8.ProfileEndpoint).getProfileById(
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
              type: _i1.getType<_i23.ReloadSession>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i9.ReloadEndpoint)
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
              ) async => (endpoints['reload'] as _i9.ReloadEndpoint)
                  .getMyReloadSessions(session),
        ),
        'registerTest': _i1.MethodConnector(
          name: 'registerTest',
          params: {
            'test': _i1.ParameterDescription(
              name: 'test',
              type: _i1.getType<_i24.ReloadTest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i9.ReloadEndpoint).registerTest(
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
                  (endpoints['reload'] as _i9.ReloadEndpoint).getTestsBySession(
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
              ) async => (endpoints['reload'] as _i9.ReloadEndpoint)
                  .getMySupplies(session),
        ),
        'addSupply': _i1.MethodConnector(
          name: 'addSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i25.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i9.ReloadEndpoint).addSupply(
                session,
                params['supply'],
              ),
        ),
        'updateSupply': _i1.MethodConnector(
          name: 'updateSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i25.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i9.ReloadEndpoint).updateSupply(
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
              type: _i1.getType<_i26.Training>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['training'] as _i10.TrainingEndpoint).register(
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
              ) async => (endpoints['training'] as _i10.TrainingEndpoint)
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
                  (endpoints['training'] as _i10.TrainingEndpoint).getTraining(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getById': _i1.MethodConnector(
          name: 'getById',
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
              ) async => (endpoints['user'] as _i11.UserEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getByCpf': _i1.MethodConnector(
          name: 'getByCpf',
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
              ) async => (endpoints['user'] as _i11.UserEndpoint).getByCpf(
                session,
                params['cpf'],
              ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i22.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i11.UserEndpoint).create(
                session,
                params['user'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i22.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i11.UserEndpoint).update(
                session,
                params['user'],
              ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
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
              ) async => (endpoints['user'] as _i11.UserEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'list': _i1.MethodConnector(
          name: 'list',
          params: {
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i11.UserEndpoint).list(
                session,
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
      },
    );
    connectors['viaCepGateway'] = _i1.EndpointConnector(
      name: 'viaCepGateway',
      endpoint: endpoints['viaCepGateway']!,
      methodConnectors: {
        'getAddressByCep': _i1.MethodConnector(
          name: 'getAddressByCep',
          params: {
            'zipcode': _i1.ParameterDescription(
              name: 'zipcode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['viaCepGateway'] as _i12.ViaCepGatewayEndpoint)
                      .getAddressByCep(
                        session,
                        params['zipcode'],
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
              ) async => (endpoints['greeting'] as _i13.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i27.Endpoints()..initializeEndpoints(server);
  }
}
