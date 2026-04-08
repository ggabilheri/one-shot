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
import '../endpoints/bank_account_endpoint.dart' as _i4;
import '../endpoints/brasil_api_gateway_endpoint.dart' as _i5;
import '../endpoints/company_endpoint.dart' as _i6;
import '../endpoints/document_endpoint.dart' as _i7;
import '../endpoints/financial_entry_endpoint.dart' as _i8;
import '../endpoints/firearm_endpoint.dart' as _i9;
import '../endpoints/gunsmith_endpoint.dart' as _i10;
import '../endpoints/invoice_endpoint.dart' as _i11;
import '../endpoints/payment_endpoint.dart' as _i12;
import '../endpoints/product_endpoint.dart' as _i13;
import '../endpoints/product_group_endpoint.dart' as _i14;
import '../endpoints/profile_endpoint.dart' as _i15;
import '../endpoints/reload_endpoint.dart' as _i16;
import '../endpoints/security_role_endpoint.dart' as _i17;
import '../endpoints/subscription_plan_endpoint.dart' as _i18;
import '../endpoints/training_endpoint.dart' as _i19;
import '../endpoints/user_endpoint.dart' as _i20;
import '../endpoints/via_cep_gateway_endpoint.dart' as _i21;
import '../gateway/asaas/endpoints/asaas_account_endpoint.dart' as _i22;
import '../gateway/asaas/endpoints/asaas_customer_endpoint.dart' as _i23;
import '../gateway/asaas/endpoints/asaas_installment_endpoint.dart' as _i24;
import '../gateway/asaas/endpoints/asaas_payment_endpoint.dart' as _i25;
import '../gateway/asaas/endpoints/asaas_pix_endpoint.dart' as _i26;
import '../gateway/asaas/endpoints/asaas_transfer_endpoint.dart' as _i27;
import '../gateway/asaas/endpoints/asaas_webhook_config_endpoint.dart' as _i28;
import '../gateway/asaas/endpoints/asaas_webhook_receiver_endpoint.dart'
    as _i29;
import '../greeting_endpoint.dart' as _i30;
import 'package:oneshot_server/src/generated/common/accessory.dart' as _i31;
import 'package:oneshot_server/src/generated/shooter/ammunition_stock.dart'
    as _i32;
import 'package:oneshot_server/src/generated/finance/bank_account.dart' as _i33;
import 'package:oneshot_server/src/generated/company/company.dart' as _i34;
import 'package:oneshot_server/src/generated/common/document.dart' as _i35;
import 'package:oneshot_server/src/generated/finance/financial_entry.dart'
    as _i36;
import 'package:oneshot_server/src/generated/enums/platform_app.enum.dart'
    as _i37;
import 'package:oneshot_server/src/generated/enums/financial_entry_type.dart'
    as _i38;
import 'package:oneshot_server/src/generated/enums/financial_entry_status.dart'
    as _i39;
import 'package:oneshot_server/src/generated/shooter/firearm.dart' as _i40;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith.dart' as _i41;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith_client.dart'
    as _i42;
import 'package:oneshot_server/src/generated/gunsmith/service_order.dart'
    as _i43;
import 'package:oneshot_server/src/generated/gunsmith/service_order_item.dart'
    as _i44;
import 'package:oneshot_server/src/generated/finance/invoice.dart' as _i45;
import 'package:oneshot_server/src/generated/finance/invoice_item.dart' as _i46;
import 'package:oneshot_server/src/generated/enums/invoice_status.enum.dart'
    as _i47;
import 'package:oneshot_server/src/generated/finance/payment.dart' as _i48;
import 'package:oneshot_server/src/generated/product/product.dart' as _i49;
import 'package:oneshot_server/src/generated/product/product_group.dart'
    as _i50;
import 'package:oneshot_server/src/generated/common/user_profile.dart' as _i51;
import 'package:oneshot_server/src/generated/shooter/reload_session.dart'
    as _i52;
import 'package:oneshot_server/src/generated/shooter/reload_test.dart' as _i53;
import 'package:oneshot_server/src/generated/common/supply_stock.dart' as _i54;
import 'package:oneshot_server/src/generated/access_control/security_role.dart'
    as _i55;
import 'package:oneshot_server/src/generated/access_control/role_permission.dart'
    as _i56;
import 'package:oneshot_server/src/generated/subscription/subscription_plan.dart'
    as _i57;
import 'package:oneshot_server/src/generated/enums/plan_type.enum.dart' as _i58;
import 'package:oneshot_server/src/generated/enums/plan_status.enum.dart'
    as _i59;
import 'package:oneshot_server/src/generated/shooter/training.dart' as _i60;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i61;

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
      'bankAccount': _i4.BankAccountEndpoint()
        ..initialize(
          server,
          'bankAccount',
          null,
        ),
      'brasilApiGateway': _i5.BrasilApiGatewayEndpoint()
        ..initialize(
          server,
          'brasilApiGateway',
          null,
        ),
      'company': _i6.CompanyEndpoint()
        ..initialize(
          server,
          'company',
          null,
        ),
      'document': _i7.DocumentEndpoint()
        ..initialize(
          server,
          'document',
          null,
        ),
      'financialEntry': _i8.FinancialEntryEndpoint()
        ..initialize(
          server,
          'financialEntry',
          null,
        ),
      'firearm': _i9.FirearmEndpoint()
        ..initialize(
          server,
          'firearm',
          null,
        ),
      'gunsmith': _i10.GunsmithEndpoint()
        ..initialize(
          server,
          'gunsmith',
          null,
        ),
      'invoice': _i11.InvoiceEndpoint()
        ..initialize(
          server,
          'invoice',
          null,
        ),
      'payment': _i12.PaymentEndpoint()
        ..initialize(
          server,
          'payment',
          null,
        ),
      'product': _i13.ProductEndpoint()
        ..initialize(
          server,
          'product',
          null,
        ),
      'productGroup': _i14.ProductGroupEndpoint()
        ..initialize(
          server,
          'productGroup',
          null,
        ),
      'profile': _i15.ProfileEndpoint()
        ..initialize(
          server,
          'profile',
          null,
        ),
      'reload': _i16.ReloadEndpoint()
        ..initialize(
          server,
          'reload',
          null,
        ),
      'securityRole': _i17.SecurityRoleEndpoint()
        ..initialize(
          server,
          'securityRole',
          null,
        ),
      'subscriptionPlan': _i18.SubscriptionPlanEndpoint()
        ..initialize(
          server,
          'subscriptionPlan',
          null,
        ),
      'training': _i19.TrainingEndpoint()
        ..initialize(
          server,
          'training',
          null,
        ),
      'user': _i20.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'viaCepGateway': _i21.ViaCepGatewayEndpoint()
        ..initialize(
          server,
          'viaCepGateway',
          null,
        ),
      'asaasAccount': _i22.AsaasAccountEndpoint()
        ..initialize(
          server,
          'asaasAccount',
          null,
        ),
      'asaasCustomer': _i23.AsaasCustomerEndpoint()
        ..initialize(
          server,
          'asaasCustomer',
          null,
        ),
      'asaasInstallment': _i24.AsaasInstallmentEndpoint()
        ..initialize(
          server,
          'asaasInstallment',
          null,
        ),
      'asaasPayment': _i25.AsaasPaymentEndpoint()
        ..initialize(
          server,
          'asaasPayment',
          null,
        ),
      'asaasPix': _i26.AsaasPixEndpoint()
        ..initialize(
          server,
          'asaasPix',
          null,
        ),
      'asaasTransfer': _i27.AsaasTransferEndpoint()
        ..initialize(
          server,
          'asaasTransfer',
          null,
        ),
      'asaasWebhookConfig': _i28.AsaasWebhookConfigEndpoint()
        ..initialize(
          server,
          'asaasWebhookConfig',
          null,
        ),
      'asaasWebhookReceiver': _i29.AsaasWebhookReceiverEndpoint()
        ..initialize(
          server,
          'asaasWebhookReceiver',
          null,
        ),
      'greeting': _i30.GreetingEndpoint()
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
              type: _i1.getType<_i31.Accessory>(),
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
              type: _i1.getType<_i31.Accessory>(),
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
              type: _i1.getType<_i32.AmmunitionStock>(),
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
    connectors['bankAccount'] = _i1.EndpointConnector(
      name: 'bankAccount',
      endpoint: endpoints['bankAccount']!,
      methodConnectors: {
        'createAccount': _i1.MethodConnector(
          name: 'createAccount',
          params: {
            'account': _i1.ParameterDescription(
              name: 'account',
              type: _i1.getType<_i33.BankAccount>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['bankAccount'] as _i4.BankAccountEndpoint)
                  .createAccount(
                    session,
                    params['account'],
                  ),
        ),
        'readAccount': _i1.MethodConnector(
          name: 'readAccount',
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
              ) async => (endpoints['bankAccount'] as _i4.BankAccountEndpoint)
                  .readAccount(
                    session,
                    params['id'],
                  ),
        ),
        'updateAccount': _i1.MethodConnector(
          name: 'updateAccount',
          params: {
            'account': _i1.ParameterDescription(
              name: 'account',
              type: _i1.getType<_i33.BankAccount>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['bankAccount'] as _i4.BankAccountEndpoint)
                  .updateAccount(
                    session,
                    params['account'],
                  ),
        ),
        'deleteAccount': _i1.MethodConnector(
          name: 'deleteAccount',
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
              ) async => (endpoints['bankAccount'] as _i4.BankAccountEndpoint)
                  .deleteAccount(
                    session,
                    params['id'],
                  ),
        ),
        'listAccounts': _i1.MethodConnector(
          name: 'listAccounts',
          params: {
            'originModule': _i1.ParameterDescription(
              name: 'originModule',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String?>(),
              nullable: true,
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
              ) async => (endpoints['bankAccount'] as _i4.BankAccountEndpoint)
                  .listAccounts(
                    session,
                    originModule: params['originModule'],
                    status: params['status'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['brasilApiGateway'] = _i1.EndpointConnector(
      name: 'brasilApiGateway',
      endpoint: endpoints['brasilApiGateway']!,
      methodConnectors: {
        'getCompanyInfo': _i1.MethodConnector(
          name: 'getCompanyInfo',
          params: {
            'cnpj': _i1.ParameterDescription(
              name: 'cnpj',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['brasilApiGateway']
                          as _i5.BrasilApiGatewayEndpoint)
                      .getCompanyInfo(
                        session,
                        params['cnpj'],
                      ),
        ),
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
                  (endpoints['brasilApiGateway']
                          as _i5.BrasilApiGatewayEndpoint)
                      .getAddressByCep(
                        session,
                        params['zipcode'],
                      ),
        ),
        'getBanks': _i1.MethodConnector(
          name: 'getBanks',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['brasilApiGateway']
                          as _i5.BrasilApiGatewayEndpoint)
                      .getBanks(session),
        ),
      },
    );
    connectors['company'] = _i1.EndpointConnector(
      name: 'company',
      endpoint: endpoints['company']!,
      methodConnectors: {
        'createCompany': _i1.MethodConnector(
          name: 'createCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i34.Company>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['company'] as _i6.CompanyEndpoint).createCompany(
                    session,
                    params['company'],
                  ),
        ),
        'listCompanies': _i1.MethodConnector(
          name: 'listCompanies',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['company'] as _i6.CompanyEndpoint)
                  .listCompanies(session),
        ),
        'updateCompany': _i1.MethodConnector(
          name: 'updateCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i34.Company>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['company'] as _i6.CompanyEndpoint).updateCompany(
                    session,
                    params['company'],
                  ),
        ),
        'deleteCompany': _i1.MethodConnector(
          name: 'deleteCompany',
          params: {
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['company'] as _i6.CompanyEndpoint).deleteCompany(
                    session,
                    params['companyId'],
                  ),
        ),
        'requestMembership': _i1.MethodConnector(
          name: 'requestMembership',
          params: {
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['company'] as _i6.CompanyEndpoint)
                  .requestMembership(
                    session,
                    params['companyId'],
                  ),
        ),
        'getMyMemberships': _i1.MethodConnector(
          name: 'getMyMemberships',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['company'] as _i6.CompanyEndpoint)
                  .getMyMemberships(session),
        ),
        'checkIn': _i1.MethodConnector(
          name: 'checkIn',
          params: {
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
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
              ) async => (endpoints['company'] as _i6.CompanyEndpoint).checkIn(
                session,
                params['companyId'],
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
              ) async => (endpoints['company'] as _i6.CompanyEndpoint).checkOut(
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
              ) async => (endpoints['company'] as _i6.CompanyEndpoint)
                  .getMyVisits(session),
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
                  (endpoints['document'] as _i7.DocumentEndpoint).getById(
                    session,
                    params['id'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'document': _i1.ParameterDescription(
              name: 'document',
              type: _i1.getType<_i35.Document>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i7.DocumentEndpoint).create(
                session,
                params['document'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'document': _i1.ParameterDescription(
              name: 'document',
              type: _i1.getType<_i35.Document>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['document'] as _i7.DocumentEndpoint).update(
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
              ) async => (endpoints['document'] as _i7.DocumentEndpoint).delete(
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
                  (endpoints['document'] as _i7.DocumentEndpoint).listByUser(
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
                  (endpoints['document'] as _i7.DocumentEndpoint).listByFirearm(
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
              ) async => (endpoints['document'] as _i7.DocumentEndpoint)
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
              ) async => (endpoints['document'] as _i7.DocumentEndpoint)
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
                  (endpoints['document'] as _i7.DocumentEndpoint).verifyUpload(
                    session,
                    params['path'],
                  ),
        ),
      },
    );
    connectors['financialEntry'] = _i1.EndpointConnector(
      name: 'financialEntry',
      endpoint: endpoints['financialEntry']!,
      methodConnectors: {
        'createEntry': _i1.MethodConnector(
          name: 'createEntry',
          params: {
            'entry': _i1.ParameterDescription(
              name: 'entry',
              type: _i1.getType<_i36.FinancialEntry>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['financialEntry'] as _i8.FinancialEntryEndpoint)
                      .createEntry(
                        session,
                        params['entry'],
                      ),
        ),
        'readEntry': _i1.MethodConnector(
          name: 'readEntry',
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
                  (endpoints['financialEntry'] as _i8.FinancialEntryEndpoint)
                      .readEntry(
                        session,
                        params['id'],
                      ),
        ),
        'updateEntry': _i1.MethodConnector(
          name: 'updateEntry',
          params: {
            'entry': _i1.ParameterDescription(
              name: 'entry',
              type: _i1.getType<_i36.FinancialEntry>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['financialEntry'] as _i8.FinancialEntryEndpoint)
                      .updateEntry(
                        session,
                        params['entry'],
                      ),
        ),
        'deleteEntry': _i1.MethodConnector(
          name: 'deleteEntry',
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
                  (endpoints['financialEntry'] as _i8.FinancialEntryEndpoint)
                      .deleteEntry(
                        session,
                        params['id'],
                      ),
        ),
        'listEntries': _i1.MethodConnector(
          name: 'listEntries',
          params: {
            'originModule': _i1.ParameterDescription(
              name: 'originModule',
              type: _i1.getType<_i37.PlatformApp>(),
              nullable: false,
            ),
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<_i38.FinancialEntryType?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<_i39.FinancialEntryStatus?>(),
              nullable: true,
            ),
            'dueDateFrom': _i1.ParameterDescription(
              name: 'dueDateFrom',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            ),
            'dueDateTo': _i1.ParameterDescription(
              name: 'dueDateTo',
              type: _i1.getType<DateTime?>(),
              nullable: true,
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
                  (endpoints['financialEntry'] as _i8.FinancialEntryEndpoint)
                      .listEntries(
                        session,
                        originModule: params['originModule'],
                        type: params['type'],
                        status: params['status'],
                        dueDateFrom: params['dueDateFrom'],
                        dueDateTo: params['dueDateTo'],
                        limit: params['limit'],
                        offset: params['offset'],
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
              ) async => (endpoints['firearm'] as _i9.FirearmEndpoint).getById(
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
              ) async => (endpoints['firearm'] as _i9.FirearmEndpoint)
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
              type: _i1.getType<_i40.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i9.FirearmEndpoint).create(
                session,
                params['firearm'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'firearm': _i1.ParameterDescription(
              name: 'firearm',
              type: _i1.getType<_i40.Firearm>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['firearm'] as _i9.FirearmEndpoint).update(
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
              ) async => (endpoints['firearm'] as _i9.FirearmEndpoint).delete(
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
                  (endpoints['firearm'] as _i9.FirearmEndpoint).listByUser(
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
        'createGunsmith': _i1.MethodConnector(
          name: 'createGunsmith',
          params: {
            'gunsmith': _i1.ParameterDescription(
              name: 'gunsmith',
              type: _i1.getType<_i41.Gunsmith>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .createGunsmith(
                    session,
                    params['gunsmith'],
                  ),
        ),
        'getGunsmith': _i1.MethodConnector(
          name: 'getGunsmith',
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
                  (endpoints['gunsmith'] as _i10.GunsmithEndpoint).getGunsmith(
                    session,
                    params['id'],
                  ),
        ),
        'findGunsmithByOwner': _i1.MethodConnector(
          name: 'findGunsmithByOwner',
          params: {
            'ownerId': _i1.ParameterDescription(
              name: 'ownerId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .findGunsmithByOwner(
                    session,
                    params['ownerId'],
                  ),
        ),
        'listGunsmiths': _i1.MethodConnector(
          name: 'listGunsmiths',
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
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .listGunsmiths(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'updateGunsmith': _i1.MethodConnector(
          name: 'updateGunsmith',
          params: {
            'gunsmith': _i1.ParameterDescription(
              name: 'gunsmith',
              type: _i1.getType<_i41.Gunsmith>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .updateGunsmith(
                    session,
                    params['gunsmith'],
                  ),
        ),
        'createClient': _i1.MethodConnector(
          name: 'createClient',
          params: {
            'client': _i1.ParameterDescription(
              name: 'client',
              type: _i1.getType<_i42.GunsmithClient>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['gunsmith'] as _i10.GunsmithEndpoint).createClient(
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
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
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
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .getMyClients(session),
        ),
        'registerServiceOrder': _i1.MethodConnector(
          name: 'registerServiceOrder',
          params: {
            'order': _i1.ParameterDescription(
              name: 'order',
              type: _i1.getType<_i43.ServiceOrder>(),
              nullable: false,
            ),
            'items': _i1.ParameterDescription(
              name: 'items',
              type: _i1.getType<List<_i44.ServiceOrderItem>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
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
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
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
              ) async => (endpoints['gunsmith'] as _i10.GunsmithEndpoint)
                  .getOrderItems(
                    session,
                    params['serviceOrderId'],
                  ),
        ),
      },
    );
    connectors['invoice'] = _i1.EndpointConnector(
      name: 'invoice',
      endpoint: endpoints['invoice']!,
      methodConnectors: {
        'createInvoice': _i1.MethodConnector(
          name: 'createInvoice',
          params: {
            'invoice': _i1.ParameterDescription(
              name: 'invoice',
              type: _i1.getType<_i45.Invoice>(),
              nullable: false,
            ),
            'items': _i1.ParameterDescription(
              name: 'items',
              type: _i1.getType<List<_i46.InvoiceItem>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['invoice'] as _i11.InvoiceEndpoint).createInvoice(
                    session,
                    params['invoice'],
                    params['items'],
                  ),
        ),
        'getInvoice': _i1.MethodConnector(
          name: 'getInvoice',
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
                  (endpoints['invoice'] as _i11.InvoiceEndpoint).getInvoice(
                    session,
                    params['id'],
                  ),
        ),
        'listInvoices': _i1.MethodConnector(
          name: 'listInvoices',
          params: {
            'originModule': _i1.ParameterDescription(
              name: 'originModule',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'direction': _i1.ParameterDescription(
              name: 'direction',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<_i47.InvoiceStatus?>(),
              nullable: true,
            ),
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
            ),
            'gunsmithId': _i1.ParameterDescription(
              name: 'gunsmithId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
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
                  (endpoints['invoice'] as _i11.InvoiceEndpoint).listInvoices(
                    session,
                    originModule: params['originModule'],
                    direction: params['direction'],
                    status: params['status'],
                    companyId: params['companyId'],
                    gunsmithId: params['gunsmithId'],
                    userId: params['userId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'updateInvoice': _i1.MethodConnector(
          name: 'updateInvoice',
          params: {
            'invoice': _i1.ParameterDescription(
              name: 'invoice',
              type: _i1.getType<_i45.Invoice>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['invoice'] as _i11.InvoiceEndpoint).updateInvoice(
                    session,
                    params['invoice'],
                  ),
        ),
        'deleteInvoice': _i1.MethodConnector(
          name: 'deleteInvoice',
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
                  (endpoints['invoice'] as _i11.InvoiceEndpoint).deleteInvoice(
                    session,
                    params['id'],
                  ),
        ),
        'getInvoiceItems': _i1.MethodConnector(
          name: 'getInvoiceItems',
          params: {
            'invoiceId': _i1.ParameterDescription(
              name: 'invoiceId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['invoice'] as _i11.InvoiceEndpoint)
                  .getInvoiceItems(
                    session,
                    params['invoiceId'],
                  ),
        ),
      },
    );
    connectors['payment'] = _i1.EndpointConnector(
      name: 'payment',
      endpoint: endpoints['payment']!,
      methodConnectors: {
        'registerPayment': _i1.MethodConnector(
          name: 'registerPayment',
          params: {
            'payment': _i1.ParameterDescription(
              name: 'payment',
              type: _i1.getType<_i48.Payment>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['payment'] as _i12.PaymentEndpoint)
                  .registerPayment(
                    session,
                    params['payment'],
                  ),
        ),
        'getPaymentsByInvoice': _i1.MethodConnector(
          name: 'getPaymentsByInvoice',
          params: {
            'invoiceId': _i1.ParameterDescription(
              name: 'invoiceId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['payment'] as _i12.PaymentEndpoint)
                  .getPaymentsByInvoice(
                    session,
                    params['invoiceId'],
                  ),
        ),
        'listPayments': _i1.MethodConnector(
          name: 'listPayments',
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
              ) async =>
                  (endpoints['payment'] as _i12.PaymentEndpoint).listPayments(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['product'] = _i1.EndpointConnector(
      name: 'product',
      endpoint: endpoints['product']!,
      methodConnectors: {
        'createProduct': _i1.MethodConnector(
          name: 'createProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i49.Product>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['product'] as _i13.ProductEndpoint).createProduct(
                    session,
                    params['product'],
                  ),
        ),
        'readProduct': _i1.MethodConnector(
          name: 'readProduct',
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
                  (endpoints['product'] as _i13.ProductEndpoint).readProduct(
                    session,
                    params['id'],
                  ),
        ),
        'findByCode': _i1.MethodConnector(
          name: 'findByCode',
          params: {
            'code': _i1.ParameterDescription(
              name: 'code',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['product'] as _i13.ProductEndpoint).findByCode(
                    session,
                    params['code'],
                  ),
        ),
        'updateProduct': _i1.MethodConnector(
          name: 'updateProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i49.Product>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['product'] as _i13.ProductEndpoint).updateProduct(
                    session,
                    params['product'],
                  ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
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
                  (endpoints['product'] as _i13.ProductEndpoint).deleteProduct(
                    session,
                    params['id'],
                  ),
        ),
        'listProducts': _i1.MethodConnector(
          name: 'listProducts',
          params: {
            'originModule': _i1.ParameterDescription(
              name: 'originModule',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'groupId': _i1.ParameterDescription(
              name: 'groupId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
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
                  (endpoints['product'] as _i13.ProductEndpoint).listProducts(
                    session,
                    originModule: params['originModule'],
                    groupId: params['groupId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['productGroup'] = _i1.EndpointConnector(
      name: 'productGroup',
      endpoint: endpoints['productGroup']!,
      methodConnectors: {
        'listGroups': _i1.MethodConnector(
          name: 'listGroups',
          params: {
            'originModule': _i1.ParameterDescription(
              name: 'originModule',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'ownerId': _i1.ParameterDescription(
              name: 'ownerId',
              type: _i1.getType<_i1.UuidValue?>(),
              nullable: true,
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
                  (endpoints['productGroup'] as _i14.ProductGroupEndpoint)
                      .listGroups(
                        session,
                        originModule: params['originModule'],
                        ownerId: params['ownerId'],
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'createProductGroup': _i1.MethodConnector(
          name: 'createProductGroup',
          params: {
            'group': _i1.ParameterDescription(
              name: 'group',
              type: _i1.getType<_i50.ProductGroup>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['productGroup'] as _i14.ProductGroupEndpoint)
                      .createProductGroup(
                        session,
                        params['group'],
                      ),
        ),
        'updateProductGroup': _i1.MethodConnector(
          name: 'updateProductGroup',
          params: {
            'group': _i1.ParameterDescription(
              name: 'group',
              type: _i1.getType<_i50.ProductGroup>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['productGroup'] as _i14.ProductGroupEndpoint)
                      .updateProductGroup(
                        session,
                        params['group'],
                      ),
        ),
        'deleteProductGroup': _i1.MethodConnector(
          name: 'deleteProductGroup',
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
                  (endpoints['productGroup'] as _i14.ProductGroupEndpoint)
                      .deleteProductGroup(
                        session,
                        params['id'],
                      ),
        ),
        'findById': _i1.MethodConnector(
          name: 'findById',
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
                  (endpoints['productGroup'] as _i14.ProductGroupEndpoint)
                      .findById(
                        session,
                        params['id'],
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
              ) async => (endpoints['profile'] as _i15.ProfileEndpoint)
                  .getOrCreateMyProfile(session),
        ),
        'updateMyProfile': _i1.MethodConnector(
          name: 'updateMyProfile',
          params: {
            'profile': _i1.ParameterDescription(
              name: 'profile',
              type: _i1.getType<_i51.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['profile'] as _i15.ProfileEndpoint)
                  .updateMyProfile(
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
                  (endpoints['profile'] as _i15.ProfileEndpoint).getProfileById(
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
              type: _i1.getType<_i52.ReloadSession>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i16.ReloadEndpoint)
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
              ) async => (endpoints['reload'] as _i16.ReloadEndpoint)
                  .getMyReloadSessions(session),
        ),
        'registerTest': _i1.MethodConnector(
          name: 'registerTest',
          params: {
            'test': _i1.ParameterDescription(
              name: 'test',
              type: _i1.getType<_i53.ReloadTest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i16.ReloadEndpoint).registerTest(
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
              ) async => (endpoints['reload'] as _i16.ReloadEndpoint)
                  .getTestsBySession(
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
              ) async => (endpoints['reload'] as _i16.ReloadEndpoint)
                  .getMySupplies(session),
        ),
        'addSupply': _i1.MethodConnector(
          name: 'addSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i54.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['reload'] as _i16.ReloadEndpoint).addSupply(
                session,
                params['supply'],
              ),
        ),
        'updateSupply': _i1.MethodConnector(
          name: 'updateSupply',
          params: {
            'supply': _i1.ParameterDescription(
              name: 'supply',
              type: _i1.getType<_i54.SupplyStock>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['reload'] as _i16.ReloadEndpoint).updateSupply(
                    session,
                    params['supply'],
                  ),
        ),
      },
    );
    connectors['securityRole'] = _i1.EndpointConnector(
      name: 'securityRole',
      endpoint: endpoints['securityRole']!,
      methodConnectors: {
        'createRole': _i1.MethodConnector(
          name: 'createRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i55.SecurityRole>(),
              nullable: false,
            ),
            'permissions': _i1.ParameterDescription(
              name: 'permissions',
              type: _i1.getType<List<_i56.RolePermission>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['securityRole'] as _i17.SecurityRoleEndpoint)
                      .createRole(
                        session,
                        params['role'],
                        params['permissions'],
                      ),
        ),
        'updateRole': _i1.MethodConnector(
          name: 'updateRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i55.SecurityRole>(),
              nullable: false,
            ),
            'permissions': _i1.ParameterDescription(
              name: 'permissions',
              type: _i1.getType<List<_i56.RolePermission>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['securityRole'] as _i17.SecurityRoleEndpoint)
                      .updateRole(
                        session,
                        params['role'],
                        params['permissions'],
                      ),
        ),
        'deleteRole': _i1.MethodConnector(
          name: 'deleteRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i55.SecurityRole>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['securityRole'] as _i17.SecurityRoleEndpoint)
                      .deleteRole(
                        session,
                        params['role'],
                      ),
        ),
        'listRoles': _i1.MethodConnector(
          name: 'listRoles',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['securityRole'] as _i17.SecurityRoleEndpoint)
                      .listRoles(session),
        ),
        'listRolePermissions': _i1.MethodConnector(
          name: 'listRolePermissions',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i55.SecurityRole>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['securityRole'] as _i17.SecurityRoleEndpoint)
                      .listRolePermissions(
                        session,
                        params['role'],
                      ),
        ),
      },
    );
    connectors['subscriptionPlan'] = _i1.EndpointConnector(
      name: 'subscriptionPlan',
      endpoint: endpoints['subscriptionPlan']!,
      methodConnectors: {
        'createPlan': _i1.MethodConnector(
          name: 'createPlan',
          params: {
            'plan': _i1.ParameterDescription(
              name: 'plan',
              type: _i1.getType<_i57.SubscriptionPlan>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['subscriptionPlan']
                          as _i18.SubscriptionPlanEndpoint)
                      .createPlan(
                        session,
                        params['plan'],
                      ),
        ),
        'readPlan': _i1.MethodConnector(
          name: 'readPlan',
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
                  (endpoints['subscriptionPlan']
                          as _i18.SubscriptionPlanEndpoint)
                      .readPlan(
                        session,
                        params['id'],
                      ),
        ),
        'updatePlan': _i1.MethodConnector(
          name: 'updatePlan',
          params: {
            'plan': _i1.ParameterDescription(
              name: 'plan',
              type: _i1.getType<_i57.SubscriptionPlan>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['subscriptionPlan']
                          as _i18.SubscriptionPlanEndpoint)
                      .updatePlan(
                        session,
                        params['plan'],
                      ),
        ),
        'deletePlan': _i1.MethodConnector(
          name: 'deletePlan',
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
                  (endpoints['subscriptionPlan']
                          as _i18.SubscriptionPlanEndpoint)
                      .deletePlan(
                        session,
                        params['id'],
                      ),
        ),
        'listPlans': _i1.MethodConnector(
          name: 'listPlans',
          params: {
            'planType': _i1.ParameterDescription(
              name: 'planType',
              type: _i1.getType<_i58.PlanType?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<_i59.PlanStatus?>(),
              nullable: true,
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
                  (endpoints['subscriptionPlan']
                          as _i18.SubscriptionPlanEndpoint)
                      .listPlans(
                        session,
                        planType: params['planType'],
                        status: params['status'],
                        limit: params['limit'],
                        offset: params['offset'],
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
              type: _i1.getType<_i60.Training>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['training'] as _i19.TrainingEndpoint).register(
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
              ) async => (endpoints['training'] as _i19.TrainingEndpoint)
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
                  (endpoints['training'] as _i19.TrainingEndpoint).getTraining(
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
              ) async => (endpoints['user'] as _i20.UserEndpoint).getById(
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
              ) async => (endpoints['user'] as _i20.UserEndpoint).getByCpf(
                session,
                params['cpf'],
              ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i51.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i20.UserEndpoint).create(
                session,
                params['user'],
              ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i51.UserProfile>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i20.UserEndpoint).update(
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
              ) async => (endpoints['user'] as _i20.UserEndpoint).delete(
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
              ) async => (endpoints['user'] as _i20.UserEndpoint).list(
                session,
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
        'search': _i1.MethodConnector(
          name: 'search',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i20.UserEndpoint).search(
                session,
                params['query'],
              ),
        ),
        'getRoles': _i1.MethodConnector(
          name: 'getRoles',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i20.UserEndpoint).getRoles(
                session,
                params['userId'],
              ),
        ),
        'updateRoles': _i1.MethodConnector(
          name: 'updateRoles',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'roleIds': _i1.ParameterDescription(
              name: 'roleIds',
              type: _i1.getType<List<_i1.UuidValue>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i20.UserEndpoint).updateRoles(
                session,
                params['userId'],
                params['roleIds'],
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
                  (endpoints['viaCepGateway'] as _i21.ViaCepGatewayEndpoint)
                      .getAddressByCep(
                        session,
                        params['zipcode'],
                      ),
        ),
      },
    );
    connectors['asaasAccount'] = _i1.EndpointConnector(
      name: 'asaasAccount',
      endpoint: endpoints['asaasAccount']!,
      methodConnectors: {
        'createSubaccount': _i1.MethodConnector(
          name: 'createSubaccount',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasAccount'] as _i22.AsaasAccountEndpoint)
                      .createSubaccount(
                        session,
                        params['requestData'],
                      ),
        ),
        'listSubaccounts': _i1.MethodConnector(
          name: 'listSubaccounts',
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
              ) async =>
                  (endpoints['asaasAccount'] as _i22.AsaasAccountEndpoint)
                      .listSubaccounts(
                        session,
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'getAccountNumber': _i1.MethodConnector(
          name: 'getAccountNumber',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasAccount'] as _i22.AsaasAccountEndpoint)
                      .getAccountNumber(session),
        ),
        'getAccountStatus': _i1.MethodConnector(
          name: 'getAccountStatus',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasAccount'] as _i22.AsaasAccountEndpoint)
                      .getAccountStatus(session),
        ),
      },
    );
    connectors['asaasCustomer'] = _i1.EndpointConnector(
      name: 'asaasCustomer',
      endpoint: endpoints['asaasCustomer']!,
      methodConnectors: {
        'createCustomer': _i1.MethodConnector(
          name: 'createCustomer',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .createCustomer(
                        session,
                        params['requestData'],
                      ),
        ),
        'listCustomers': _i1.MethodConnector(
          name: 'listCustomers',
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
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'cpfCnpj': _i1.ParameterDescription(
              name: 'cpfCnpj',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .listCustomers(
                        session,
                        limit: params['limit'],
                        offset: params['offset'],
                        name: params['name'],
                        cpfCnpj: params['cpfCnpj'],
                      ),
        ),
        'getCustomer': _i1.MethodConnector(
          name: 'getCustomer',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .getCustomer(
                        session,
                        params['id'],
                      ),
        ),
        'updateCustomer': _i1.MethodConnector(
          name: 'updateCustomer',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .updateCustomer(
                        session,
                        params['id'],
                        params['requestData'],
                      ),
        ),
        'deleteCustomer': _i1.MethodConnector(
          name: 'deleteCustomer',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .deleteCustomer(
                        session,
                        params['id'],
                      ),
        ),
        'restoreCustomer': _i1.MethodConnector(
          name: 'restoreCustomer',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .restoreCustomer(
                        session,
                        params['id'],
                      ),
        ),
        'getCustomerNotifications': _i1.MethodConnector(
          name: 'getCustomerNotifications',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasCustomer'] as _i23.AsaasCustomerEndpoint)
                      .getCustomerNotifications(
                        session,
                        params['id'],
                      ),
        ),
      },
    );
    connectors['asaasInstallment'] = _i1.EndpointConnector(
      name: 'asaasInstallment',
      endpoint: endpoints['asaasInstallment']!,
      methodConnectors: {
        'createInstallment': _i1.MethodConnector(
          name: 'createInstallment',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasInstallment']
                          as _i24.AsaasInstallmentEndpoint)
                      .createInstallment(
                        session,
                        params['requestData'],
                      ),
        ),
        'listInstallments': _i1.MethodConnector(
          name: 'listInstallments',
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
              ) async =>
                  (endpoints['asaasInstallment']
                          as _i24.AsaasInstallmentEndpoint)
                      .listInstallments(
                        session,
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'getInstallment': _i1.MethodConnector(
          name: 'getInstallment',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasInstallment']
                          as _i24.AsaasInstallmentEndpoint)
                      .getInstallment(
                        session,
                        params['id'],
                      ),
        ),
        'deleteInstallment': _i1.MethodConnector(
          name: 'deleteInstallment',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasInstallment']
                          as _i24.AsaasInstallmentEndpoint)
                      .deleteInstallment(
                        session,
                        params['id'],
                      ),
        ),
        'listInstallmentPayments': _i1.MethodConnector(
          name: 'listInstallmentPayments',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasInstallment']
                          as _i24.AsaasInstallmentEndpoint)
                      .listInstallmentPayments(
                        session,
                        params['id'],
                      ),
        ),
      },
    );
    connectors['asaasPayment'] = _i1.EndpointConnector(
      name: 'asaasPayment',
      endpoint: endpoints['asaasPayment']!,
      methodConnectors: {
        'createPayment': _i1.MethodConnector(
          name: 'createPayment',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .createPayment(
                        session,
                        params['requestData'],
                      ),
        ),
        'listPayments': _i1.MethodConnector(
          name: 'listPayments',
          params: {
            'customer': _i1.ParameterDescription(
              name: 'customer',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String?>(),
              nullable: true,
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
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .listPayments(
                        session,
                        customer: params['customer'],
                        status: params['status'],
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'captureAuthorizedPayment': _i1.MethodConnector(
          name: 'captureAuthorizedPayment',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .captureAuthorizedPayment(
                        session,
                        params['paymentId'],
                      ),
        ),
        'payWithCreditCard': _i1.MethodConnector(
          name: 'payWithCreditCard',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .payWithCreditCard(
                        session,
                        params['paymentId'],
                        params['requestData'],
                      ),
        ),
        'getBillingInfo': _i1.MethodConnector(
          name: 'getBillingInfo',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .getBillingInfo(
                        session,
                        params['paymentId'],
                      ),
        ),
        'getPaymentStatus': _i1.MethodConnector(
          name: 'getPaymentStatus',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .getPaymentStatus(
                        session,
                        params['paymentId'],
                      ),
        ),
        'refundPayment': _i1.MethodConnector(
          name: 'refundPayment',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .refundPayment(
                        session,
                        params['paymentId'],
                      ),
        ),
        'getPixQrCode': _i1.MethodConnector(
          name: 'getPixQrCode',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPayment'] as _i25.AsaasPaymentEndpoint)
                      .getPixQrCode(
                        session,
                        params['paymentId'],
                      ),
        ),
      },
    );
    connectors['asaasPix'] = _i1.EndpointConnector(
      name: 'asaasPix',
      endpoint: endpoints['asaasPix']!,
      methodConnectors: {
        'createKey': _i1.MethodConnector(
          name: 'createKey',
          params: {
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPix'] as _i26.AsaasPixEndpoint).createKey(
                    session,
                    params['type'],
                  ),
        ),
        'listKeys': _i1.MethodConnector(
          name: 'listKeys',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['asaasPix'] as _i26.AsaasPixEndpoint)
                  .listKeys(session),
        ),
        'createStaticQrCode': _i1.MethodConnector(
          name: 'createStaticQrCode',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['asaasPix'] as _i26.AsaasPixEndpoint)
                  .createStaticQrCode(
                    session,
                    params['request'],
                  ),
        ),
        'payQrCode': _i1.MethodConnector(
          name: 'payQrCode',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasPix'] as _i26.AsaasPixEndpoint).payQrCode(
                    session,
                    params['request'],
                  ),
        ),
        'listTransactions': _i1.MethodConnector(
          name: 'listTransactions',
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
            'startDate': _i1.ParameterDescription(
              name: 'startDate',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'endDate': _i1.ParameterDescription(
              name: 'endDate',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['asaasPix'] as _i26.AsaasPixEndpoint)
                  .listTransactions(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                    startDate: params['startDate'],
                    endDate: params['endDate'],
                  ),
        ),
      },
    );
    connectors['asaasTransfer'] = _i1.EndpointConnector(
      name: 'asaasTransfer',
      endpoint: endpoints['asaasTransfer']!,
      methodConnectors: {
        'createTransfer': _i1.MethodConnector(
          name: 'createTransfer',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasTransfer'] as _i27.AsaasTransferEndpoint)
                      .createTransfer(
                        session,
                        params['requestData'],
                      ),
        ),
        'listTransfers': _i1.MethodConnector(
          name: 'listTransfers',
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
              ) async =>
                  (endpoints['asaasTransfer'] as _i27.AsaasTransferEndpoint)
                      .listTransfers(
                        session,
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'getExtract': _i1.MethodConnector(
          name: 'getExtract',
          params: {
            'startDate': _i1.ParameterDescription(
              name: 'startDate',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'endDate': _i1.ParameterDescription(
              name: 'endDate',
              type: _i1.getType<String?>(),
              nullable: true,
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
                  (endpoints['asaasTransfer'] as _i27.AsaasTransferEndpoint)
                      .getExtract(
                        session,
                        startDate: params['startDate'],
                        endDate: params['endDate'],
                        limit: params['limit'],
                        offset: params['offset'],
                      ),
        ),
        'getBalance': _i1.MethodConnector(
          name: 'getBalance',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasTransfer'] as _i27.AsaasTransferEndpoint)
                      .getBalance(session),
        ),
      },
    );
    connectors['asaasWebhookConfig'] = _i1.EndpointConnector(
      name: 'asaasWebhookConfig',
      endpoint: endpoints['asaasWebhookConfig']!,
      methodConnectors: {
        'createWebhook': _i1.MethodConnector(
          name: 'createWebhook',
          params: {
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasWebhookConfig']
                          as _i28.AsaasWebhookConfigEndpoint)
                      .createWebhook(
                        session,
                        params['requestData'],
                      ),
        ),
        'listWebhooks': _i1.MethodConnector(
          name: 'listWebhooks',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasWebhookConfig']
                          as _i28.AsaasWebhookConfigEndpoint)
                      .listWebhooks(session),
        ),
        'updateWebhook': _i1.MethodConnector(
          name: 'updateWebhook',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'requestData': _i1.ParameterDescription(
              name: 'requestData',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasWebhookConfig']
                          as _i28.AsaasWebhookConfigEndpoint)
                      .updateWebhook(
                        session,
                        params['id'],
                        params['requestData'],
                      ),
        ),
        'deleteWebhook': _i1.MethodConnector(
          name: 'deleteWebhook',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasWebhookConfig']
                          as _i28.AsaasWebhookConfigEndpoint)
                      .deleteWebhook(
                        session,
                        params['id'],
                      ),
        ),
      },
    );
    connectors['asaasWebhookReceiver'] = _i1.EndpointConnector(
      name: 'asaasWebhookReceiver',
      endpoint: endpoints['asaasWebhookReceiver']!,
      methodConnectors: {
        'handleEvent': _i1.MethodConnector(
          name: 'handleEvent',
          params: {
            'payload': _i1.ParameterDescription(
              name: 'payload',
              type: _i1.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['asaasWebhookReceiver']
                          as _i29.AsaasWebhookReceiverEndpoint)
                      .handleEvent(
                        session,
                        params['payload'],
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
              ) async => (endpoints['greeting'] as _i30.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i61.Endpoints()..initializeEndpoints(server);
  }
}
