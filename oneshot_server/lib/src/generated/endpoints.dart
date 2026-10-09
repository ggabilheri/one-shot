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
import 'package:oneshot_server/src/generated/access_control/role_permission.dart'
    as _itb2zhn4;
import 'package:oneshot_server/src/generated/access_control/security_role.dart'
    as _i1xchi60;
import 'package:oneshot_server/src/generated/common/accessory.dart'
    as _ieqpa344;
import 'package:oneshot_server/src/generated/common/document.dart' as _is536eiv;
import 'package:oneshot_server/src/generated/common/supply_stock.dart'
    as _i8gnh98r;
import 'package:oneshot_server/src/generated/common/user_profile.dart'
    as _i2pyoxii;
import 'package:oneshot_server/src/generated/company/company.dart' as _ic0khr1u;
import 'package:oneshot_server/src/generated/company/company_type.dart'
    as _ipib9fv0;
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
import 'package:oneshot_server/src/generated/finance/bank_account.dart'
    as _ix4lc03l;
import 'package:oneshot_server/src/generated/finance/financial_entry.dart'
    as _ibsfr7x7;
import 'package:oneshot_server/src/generated/finance/invoice.dart' as _i30q017a;
import 'package:oneshot_server/src/generated/finance/invoice_item.dart'
    as _i4dj62ps;
import 'package:oneshot_server/src/generated/finance/payment.dart' as _i2rb000s;
import 'package:oneshot_server/src/generated/future_calls.dart' as _iahu0g5j;
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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i1n3uhu0;
import '../endpoints/accessory_endpoint.dart' as _ixyw2gfy;
import '../endpoints/ammunition_endpoint.dart' as _i2r3wky8;
import '../endpoints/bank_account_endpoint.dart' as _ie1buk0y;
import '../endpoints/brasil_api_gateway_endpoint.dart' as _i4ytxbt0;
import '../endpoints/company_endpoint.dart' as _i6ft4xg7;
import '../endpoints/document_endpoint.dart' as _izig7zaw;
import '../endpoints/financial_entry_endpoint.dart' as _ibfd9czy;
import '../endpoints/firearm_endpoint.dart' as _i10bnhx5;
import '../endpoints/gunsmith_endpoint.dart' as _iisz80ei;
import '../endpoints/invoice_endpoint.dart' as _ito116jz;
import '../endpoints/payment_endpoint.dart' as _i529mnhp;
import '../endpoints/product_endpoint.dart' as _im5j1753;
import '../endpoints/product_group_endpoint.dart' as _iuhelpho;
import '../endpoints/profile_endpoint.dart' as _i2cx2pww;
import '../endpoints/reload_endpoint.dart' as _isg3vmg7;
import '../endpoints/security_role_endpoint.dart' as _igsyrha7;
import '../endpoints/subscription_plan_endpoint.dart' as _ieee6l5s;
import '../endpoints/training_endpoint.dart' as _ibths11e;
import '../endpoints/user_endpoint.dart' as _iymy5306;
import '../endpoints/via_cep_gateway_endpoint.dart' as _ibg94toe;
import '../gateway/asaas/endpoints/asaas_account_endpoint.dart' as _ipja7yql;
import '../gateway/asaas/endpoints/asaas_customer_endpoint.dart' as _ijiih2vg;
import '../gateway/asaas/endpoints/asaas_installment_endpoint.dart'
    as _igkphi6t;
import '../gateway/asaas/endpoints/asaas_payment_endpoint.dart' as _i530zaw2;
import '../gateway/asaas/endpoints/asaas_pix_endpoint.dart' as _i464yiwz;
import '../gateway/asaas/endpoints/asaas_transfer_endpoint.dart' as _irkw65qc;
import '../gateway/asaas/endpoints/asaas_webhook_config_endpoint.dart'
    as _iszmqrws;
import '../gateway/asaas/endpoints/asaas_webhook_receiver_endpoint.dart'
    as _ix6hokf9;
import '../greeting_endpoint.dart' as _ikvw90o4;
export 'future_calls.dart' show ServerpodFutureCallsGetter;

class Endpoints extends _is.EndpointDispatch {
  @override
  void initializeEndpoints(_is.Server server) {
    var endpoints = <String, _is.Endpoint>{
      'accessory': _ixyw2gfy.AccessoryEndpoint()
        ..initialize(server, 'accessory', null),
      'ammunition': _i2r3wky8.AmmunitionEndpoint()
        ..initialize(server, 'ammunition', null),
      'bankAccount': _ie1buk0y.BankAccountEndpoint()
        ..initialize(server, 'bankAccount', null),
      'brasilApiGateway': _i4ytxbt0.BrasilApiGatewayEndpoint()
        ..initialize(server, 'brasilApiGateway', null),
      'company': _i6ft4xg7.CompanyEndpoint()
        ..initialize(server, 'company', null),
      'document': _izig7zaw.DocumentEndpoint()
        ..initialize(server, 'document', null),
      'financialEntry': _ibfd9czy.FinancialEntryEndpoint()
        ..initialize(server, 'financialEntry', null),
      'firearm': _i10bnhx5.FirearmEndpoint()
        ..initialize(server, 'firearm', null),
      'gunsmith': _iisz80ei.GunsmithEndpoint()
        ..initialize(server, 'gunsmith', null),
      'invoice': _ito116jz.InvoiceEndpoint()
        ..initialize(server, 'invoice', null),
      'payment': _i529mnhp.PaymentEndpoint()
        ..initialize(server, 'payment', null),
      'product': _im5j1753.ProductEndpoint()
        ..initialize(server, 'product', null),
      'productGroup': _iuhelpho.ProductGroupEndpoint()
        ..initialize(server, 'productGroup', null),
      'profile': _i2cx2pww.ProfileEndpoint()
        ..initialize(server, 'profile', null),
      'reload': _isg3vmg7.ReloadEndpoint()..initialize(server, 'reload', null),
      'securityRole': _igsyrha7.SecurityRoleEndpoint()
        ..initialize(server, 'securityRole', null),
      'subscriptionPlan': _ieee6l5s.SubscriptionPlanEndpoint()
        ..initialize(server, 'subscriptionPlan', null),
      'training': _ibths11e.TrainingEndpoint()
        ..initialize(server, 'training', null),
      'user': _iymy5306.UserEndpoint()..initialize(server, 'user', null),
      'viaCepGateway': _ibg94toe.ViaCepGatewayEndpoint()
        ..initialize(server, 'viaCepGateway', null),
      'asaasAccount': _ipja7yql.AsaasAccountEndpoint()
        ..initialize(server, 'asaasAccount', null),
      'asaasCustomer': _ijiih2vg.AsaasCustomerEndpoint()
        ..initialize(server, 'asaasCustomer', null),
      'asaasInstallment': _igkphi6t.AsaasInstallmentEndpoint()
        ..initialize(server, 'asaasInstallment', null),
      'asaasPayment': _i530zaw2.AsaasPaymentEndpoint()
        ..initialize(server, 'asaasPayment', null),
      'asaasPix': _i464yiwz.AsaasPixEndpoint()
        ..initialize(server, 'asaasPix', null),
      'asaasTransfer': _irkw65qc.AsaasTransferEndpoint()
        ..initialize(server, 'asaasTransfer', null),
      'asaasWebhookConfig': _iszmqrws.AsaasWebhookConfigEndpoint()
        ..initialize(server, 'asaasWebhookConfig', null),
      'asaasWebhookReceiver': _ix6hokf9.AsaasWebhookReceiverEndpoint()
        ..initialize(server, 'asaasWebhookReceiver', null),
      'greeting': _ikvw90o4.GreetingEndpoint()
        ..initialize(server, 'greeting', null),
    };
    connectors['accessory'] = _is.EndpointConnector(
      name: 'accessory',
      endpoint: endpoints['accessory']!,
      methodConnectors: {
        'getById': _is.MethodConnector(
          name: 'getById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['accessory'] as _ixyw2gfy.AccessoryEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'create': _is.MethodConnector(
          name: 'create',
          params: {
            'accessory': _is.ParameterDescription(
              name: 'accessory',
              type: _is.getType<_ieqpa344.Accessory>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['accessory'] as _ixyw2gfy.AccessoryEndpoint).create(
                session,
                params['accessory'],
              ),
        ),
        'update': _is.MethodConnector(
          name: 'update',
          params: {
            'accessory': _is.ParameterDescription(
              name: 'accessory',
              type: _is.getType<_ieqpa344.Accessory>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['accessory'] as _ixyw2gfy.AccessoryEndpoint).update(
                session,
                params['accessory'],
              ),
        ),
        'delete': _is.MethodConnector(
          name: 'delete',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['accessory'] as _ixyw2gfy.AccessoryEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'listByUser': _is.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['accessory'] as _ixyw2gfy.AccessoryEndpoint)
                  .listByUser(
                    session,
                    params['userId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['ammunition'] = _is.EndpointConnector(
      name: 'ammunition',
      endpoint: endpoints['ammunition']!,
      methodConnectors: {
        'getMyAmmunition': _is.MethodConnector(
          name: 'getMyAmmunition',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['ammunition'] as _i2r3wky8.AmmunitionEndpoint)
                  .getMyAmmunition(session),
        ),
        'addAmmunition': _is.MethodConnector(
          name: 'addAmmunition',
          params: {
            'ammo': _is.ParameterDescription(
              name: 'ammo',
              type: _is.getType<_iznitra9.AmmunitionStock>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['ammunition'] as _i2r3wky8.AmmunitionEndpoint)
                  .addAmmunition(session, params['ammo']),
        ),
        'adjustQuantity': _is.MethodConnector(
          name: 'adjustQuantity',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'change': _is.ParameterDescription(
              name: 'change',
              type: _is.getType<int>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['ammunition'] as _i2r3wky8.AmmunitionEndpoint)
                  .adjustQuantity(session, params['id'], params['change']),
        ),
        'deleteAmmunition': _is.MethodConnector(
          name: 'deleteAmmunition',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['ammunition'] as _i2r3wky8.AmmunitionEndpoint)
                  .deleteAmmunition(session, params['id']),
        ),
      },
    );
    connectors['bankAccount'] = _is.EndpointConnector(
      name: 'bankAccount',
      endpoint: endpoints['bankAccount']!,
      methodConnectors: {
        'createAccount': _is.MethodConnector(
          name: 'createAccount',
          params: {
            'account': _is.ParameterDescription(
              name: 'account',
              type: _is.getType<_ix4lc03l.BankAccount>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['bankAccount'] as _ie1buk0y.BankAccountEndpoint)
                  .createAccount(session, params['account']),
        ),
        'readAccount': _is.MethodConnector(
          name: 'readAccount',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['bankAccount'] as _ie1buk0y.BankAccountEndpoint)
                  .readAccount(session, params['id']),
        ),
        'updateAccount': _is.MethodConnector(
          name: 'updateAccount',
          params: {
            'account': _is.ParameterDescription(
              name: 'account',
              type: _is.getType<_ix4lc03l.BankAccount>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['bankAccount'] as _ie1buk0y.BankAccountEndpoint)
                  .updateAccount(session, params['account']),
        ),
        'deleteAccount': _is.MethodConnector(
          name: 'deleteAccount',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['bankAccount'] as _ie1buk0y.BankAccountEndpoint)
                  .deleteAccount(session, params['id']),
        ),
        'listAccounts': _is.MethodConnector(
          name: 'listAccounts',
          params: {
            'originModule': _is.ParameterDescription(
              name: 'originModule',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['bankAccount'] as _ie1buk0y.BankAccountEndpoint)
                  .listAccounts(
                    session,
                    originModule: params['originModule'],
                    status: params['status'],
                    companyId: params['companyId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['brasilApiGateway'] = _is.EndpointConnector(
      name: 'brasilApiGateway',
      endpoint: endpoints['brasilApiGateway']!,
      methodConnectors: {
        'getCompanyInfo': _is.MethodConnector(
          name: 'getCompanyInfo',
          params: {
            'cnpj': _is.ParameterDescription(
              name: 'cnpj',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['brasilApiGateway']
                      as _i4ytxbt0.BrasilApiGatewayEndpoint)
                  .getCompanyInfo(session, params['cnpj']),
        ),
        'getAddressByCep': _is.MethodConnector(
          name: 'getAddressByCep',
          params: {
            'zipcode': _is.ParameterDescription(
              name: 'zipcode',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['brasilApiGateway']
                      as _i4ytxbt0.BrasilApiGatewayEndpoint)
                  .getAddressByCep(session, params['zipcode']),
        ),
        'getBanks': _is.MethodConnector(
          name: 'getBanks',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['brasilApiGateway']
                      as _i4ytxbt0.BrasilApiGatewayEndpoint)
                  .getBanks(session),
        ),
      },
    );
    connectors['company'] = _is.EndpointConnector(
      name: 'company',
      endpoint: endpoints['company']!,
      methodConnectors: {
        'createCompany': _is.MethodConnector(
          name: 'createCompany',
          params: {
            'company': _is.ParameterDescription(
              name: 'company',
              type: _is.getType<_ic0khr1u.Company>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).createCompany(
                session,
                params['company'],
              ),
        ),
        'listCompanies': _is.MethodConnector(
          name: 'listCompanies',
          params: {
            'parentCompanyId': _is.ParameterDescription(
              name: 'parentCompanyId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'type': _is.ParameterDescription(
              name: 'type',
              type: _is.getType<_ipib9fv0.CompanyType?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).listCompanies(
                session,
                parentCompanyId: params['parentCompanyId'],
                type: params['type'],
              ),
        ),
        'updateCompany': _is.MethodConnector(
          name: 'updateCompany',
          params: {
            'company': _is.ParameterDescription(
              name: 'company',
              type: _is.getType<_ic0khr1u.Company>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).updateCompany(
                session,
                params['company'],
              ),
        ),
        'deleteCompany': _is.MethodConnector(
          name: 'deleteCompany',
          params: {
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).deleteCompany(
                session,
                params['companyId'],
              ),
        ),
        'requestMembership': _is.MethodConnector(
          name: 'requestMembership',
          params: {
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint)
                  .requestMembership(session, params['companyId']),
        ),
        'getMyMemberships': _is.MethodConnector(
          name: 'getMyMemberships',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint)
                  .getMyMemberships(session),
        ),
        'checkIn': _is.MethodConnector(
          name: 'checkIn',
          params: {
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'firearmId': _is.ParameterDescription(
              name: 'firearmId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).checkIn(
                session,
                params['companyId'],
                params['firearmId'],
              ),
        ),
        'checkOut': _is.MethodConnector(
          name: 'checkOut',
          params: {
            'visitId': _is.ParameterDescription(
              name: 'visitId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'shotsFired': _is.ParameterDescription(
              name: 'shotsFired',
              type: _is.getType<int>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).checkOut(
                session,
                params['visitId'],
                params['shotsFired'],
              ),
        ),
        'getMyVisits': _is.MethodConnector(
          name: 'getMyVisits',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint).getMyVisits(
                session,
              ),
        ),
        'getManagedCompany': _is.MethodConnector(
          name: 'getManagedCompany',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['company'] as _i6ft4xg7.CompanyEndpoint)
                  .getManagedCompany(session),
        ),
      },
    );
    connectors['document'] = _is.EndpointConnector(
      name: 'document',
      endpoint: endpoints['document']!,
      methodConnectors: {
        'getById': _is.MethodConnector(
          name: 'getById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'create': _is.MethodConnector(
          name: 'create',
          params: {
            'document': _is.ParameterDescription(
              name: 'document',
              type: _is.getType<_is536eiv.Document>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint).create(
                session,
                params['document'],
              ),
        ),
        'update': _is.MethodConnector(
          name: 'update',
          params: {
            'document': _is.ParameterDescription(
              name: 'document',
              type: _is.getType<_is536eiv.Document>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint).update(
                session,
                params['document'],
              ),
        ),
        'delete': _is.MethodConnector(
          name: 'delete',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'listByUser': _is.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint).listByUser(
                session,
                params['userId'],
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
        'listByFirearm': _is.MethodConnector(
          name: 'listByFirearm',
          params: {
            'firearmId': _is.ParameterDescription(
              name: 'firearmId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint)
                  .listByFirearm(session, params['firearmId']),
        ),
        'listByAccessory': _is.MethodConnector(
          name: 'listByAccessory',
          params: {
            'accessoryId': _is.ParameterDescription(
              name: 'accessoryId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint)
                  .listByAccessory(session, params['accessoryId']),
        ),
        'getUploadDescription': _is.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _is.ParameterDescription(
              name: 'path',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint)
                  .getUploadDescription(session, params['path']),
        ),
        'verifyUpload': _is.MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': _is.ParameterDescription(
              name: 'path',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['document'] as _izig7zaw.DocumentEndpoint)
                  .verifyUpload(session, params['path']),
        ),
      },
    );
    connectors['financialEntry'] = _is.EndpointConnector(
      name: 'financialEntry',
      endpoint: endpoints['financialEntry']!,
      methodConnectors: {
        'createEntry': _is.MethodConnector(
          name: 'createEntry',
          params: {
            'entry': _is.ParameterDescription(
              name: 'entry',
              type: _is.getType<_ibsfr7x7.FinancialEntry>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['financialEntry'] as _ibfd9czy.FinancialEntryEndpoint)
                  .createEntry(session, params['entry']),
        ),
        'readEntry': _is.MethodConnector(
          name: 'readEntry',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['financialEntry'] as _ibfd9czy.FinancialEntryEndpoint)
                  .readEntry(session, params['id']),
        ),
        'updateEntry': _is.MethodConnector(
          name: 'updateEntry',
          params: {
            'entry': _is.ParameterDescription(
              name: 'entry',
              type: _is.getType<_ibsfr7x7.FinancialEntry>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['financialEntry'] as _ibfd9czy.FinancialEntryEndpoint)
                  .updateEntry(session, params['entry']),
        ),
        'deleteEntry': _is.MethodConnector(
          name: 'deleteEntry',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['financialEntry'] as _ibfd9czy.FinancialEntryEndpoint)
                  .deleteEntry(session, params['id']),
        ),
        'listEntries': _is.MethodConnector(
          name: 'listEntries',
          params: {
            'originModule': _is.ParameterDescription(
              name: 'originModule',
              type: _is.getType<_iyj53v39.PlatformApp>(),
              nullable: false,
            ),
            'dueDateTo': _is.ParameterDescription(
              name: 'dueDateTo',
              type: _is.getType<DateTime?>(),
              nullable: true,
            ),
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'type': _is.ParameterDescription(
              name: 'type',
              type: _is.getType<_iz0ihb5y.FinancialEntryType?>(),
              nullable: true,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<_i624tget.FinancialEntryStatus?>(),
              nullable: true,
            ),
            'dueDateFrom': _is.ParameterDescription(
              name: 'dueDateFrom',
              type: _is.getType<DateTime?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['financialEntry'] as _ibfd9czy.FinancialEntryEndpoint)
                  .listEntries(
                    session,
                    originModule: params['originModule'],
                    dueDateTo: params['dueDateTo'],
                    companyId: params['companyId'],
                    limit: params['limit'],
                    offset: params['offset'],
                    type: params['type'],
                    status: params['status'],
                    dueDateFrom: params['dueDateFrom'],
                  ),
        ),
      },
    );
    connectors['firearm'] = _is.EndpointConnector(
      name: 'firearm',
      endpoint: endpoints['firearm']!,
      methodConnectors: {
        'getById': _is.MethodConnector(
          name: 'getById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getBySerialNumber': _is.MethodConnector(
          name: 'getBySerialNumber',
          params: {
            'serialNumber': _is.ParameterDescription(
              name: 'serialNumber',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint)
                  .getBySerialNumber(session, params['serialNumber']),
        ),
        'create': _is.MethodConnector(
          name: 'create',
          params: {
            'firearm': _is.ParameterDescription(
              name: 'firearm',
              type: _is.getType<_iv8sr5qk.Firearm>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint).create(
                session,
                params['firearm'],
              ),
        ),
        'update': _is.MethodConnector(
          name: 'update',
          params: {
            'firearm': _is.ParameterDescription(
              name: 'firearm',
              type: _is.getType<_iv8sr5qk.Firearm>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint).update(
                session,
                params['firearm'],
              ),
        ),
        'delete': _is.MethodConnector(
          name: 'delete',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'listByUser': _is.MethodConnector(
          name: 'listByUser',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['firearm'] as _i10bnhx5.FirearmEndpoint).listByUser(
                session,
                params['userId'],
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
      },
    );
    connectors['gunsmith'] = _is.EndpointConnector(
      name: 'gunsmith',
      endpoint: endpoints['gunsmith']!,
      methodConnectors: {
        'createGunsmith': _is.MethodConnector(
          name: 'createGunsmith',
          params: {
            'gunsmith': _is.ParameterDescription(
              name: 'gunsmith',
              type: _is.getType<_icrmzcgd.Gunsmith>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .createGunsmith(session, params['gunsmith']),
        ),
        'getGunsmith': _is.MethodConnector(
          name: 'getGunsmith',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint).getGunsmith(
                session,
                params['id'],
              ),
        ),
        'findGunsmithByOwner': _is.MethodConnector(
          name: 'findGunsmithByOwner',
          params: {
            'ownerId': _is.ParameterDescription(
              name: 'ownerId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .findGunsmithByOwner(session, params['ownerId']),
        ),
        'listGunsmiths': _is.MethodConnector(
          name: 'listGunsmiths',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .listGunsmiths(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'updateGunsmith': _is.MethodConnector(
          name: 'updateGunsmith',
          params: {
            'gunsmith': _is.ParameterDescription(
              name: 'gunsmith',
              type: _is.getType<_icrmzcgd.Gunsmith>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .updateGunsmith(session, params['gunsmith']),
        ),
        'createClient': _is.MethodConnector(
          name: 'createClient',
          params: {
            'client': _is.ParameterDescription(
              name: 'client',
              type: _is.getType<_i3v21vya.GunsmithClient>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .createClient(session, params['client']),
        ),
        'findClientByCpf': _is.MethodConnector(
          name: 'findClientByCpf',
          params: {
            'cpf': _is.ParameterDescription(
              name: 'cpf',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .findClientByCpf(session, params['cpf']),
        ),
        'getMyClients': _is.MethodConnector(
          name: 'getMyClients',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .getMyClients(session),
        ),
        'registerServiceOrder': _is.MethodConnector(
          name: 'registerServiceOrder',
          params: {
            'order': _is.ParameterDescription(
              name: 'order',
              type: _is.getType<_ilfracgz.ServiceOrder>(),
              nullable: false,
            ),
            'items': _is.ParameterDescription(
              name: 'items',
              type: _is.getType<List<_ipjdt3yw.ServiceOrderItem>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .registerServiceOrder(
                    session,
                    params['order'],
                    params['items'],
                  ),
        ),
        'getOrdersByClient': _is.MethodConnector(
          name: 'getOrdersByClient',
          params: {
            'clientId': _is.ParameterDescription(
              name: 'clientId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .getOrdersByClient(session, params['clientId']),
        ),
        'getOrderItems': _is.MethodConnector(
          name: 'getOrderItems',
          params: {
            'serviceOrderId': _is.ParameterDescription(
              name: 'serviceOrderId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['gunsmith'] as _iisz80ei.GunsmithEndpoint)
                  .getOrderItems(session, params['serviceOrderId']),
        ),
      },
    );
    connectors['invoice'] = _is.EndpointConnector(
      name: 'invoice',
      endpoint: endpoints['invoice']!,
      methodConnectors: {
        'createInvoice': _is.MethodConnector(
          name: 'createInvoice',
          params: {
            'invoice': _is.ParameterDescription(
              name: 'invoice',
              type: _is.getType<_i30q017a.Invoice>(),
              nullable: false,
            ),
            'items': _is.ParameterDescription(
              name: 'items',
              type: _is.getType<List<_i4dj62ps.InvoiceItem>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint).createInvoice(
                session,
                params['invoice'],
                params['items'],
              ),
        ),
        'getInvoice': _is.MethodConnector(
          name: 'getInvoice',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint).getInvoice(
                session,
                params['id'],
              ),
        ),
        'listInvoices': _is.MethodConnector(
          name: 'listInvoices',
          params: {
            'originModule': _is.ParameterDescription(
              name: 'originModule',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'direction': _is.ParameterDescription(
              name: 'direction',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<_iywvte3n.InvoiceStatus?>(),
              nullable: true,
            ),
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'gunsmithId': _is.ParameterDescription(
              name: 'gunsmithId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint).listInvoices(
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
        'updateInvoice': _is.MethodConnector(
          name: 'updateInvoice',
          params: {
            'invoice': _is.ParameterDescription(
              name: 'invoice',
              type: _is.getType<_i30q017a.Invoice>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint).updateInvoice(
                session,
                params['invoice'],
              ),
        ),
        'deleteInvoice': _is.MethodConnector(
          name: 'deleteInvoice',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint).deleteInvoice(
                session,
                params['id'],
              ),
        ),
        'getInvoiceItems': _is.MethodConnector(
          name: 'getInvoiceItems',
          params: {
            'invoiceId': _is.ParameterDescription(
              name: 'invoiceId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['invoice'] as _ito116jz.InvoiceEndpoint)
                  .getInvoiceItems(session, params['invoiceId']),
        ),
      },
    );
    connectors['payment'] = _is.EndpointConnector(
      name: 'payment',
      endpoint: endpoints['payment']!,
      methodConnectors: {
        'registerPayment': _is.MethodConnector(
          name: 'registerPayment',
          params: {
            'payment': _is.ParameterDescription(
              name: 'payment',
              type: _is.getType<_i2rb000s.Payment>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['payment'] as _i529mnhp.PaymentEndpoint)
                  .registerPayment(session, params['payment']),
        ),
        'getPaymentsByInvoice': _is.MethodConnector(
          name: 'getPaymentsByInvoice',
          params: {
            'invoiceId': _is.ParameterDescription(
              name: 'invoiceId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['payment'] as _i529mnhp.PaymentEndpoint)
                  .getPaymentsByInvoice(session, params['invoiceId']),
        ),
        'listPayments': _is.MethodConnector(
          name: 'listPayments',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['payment'] as _i529mnhp.PaymentEndpoint).listPayments(
                session,
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
      },
    );
    connectors['product'] = _is.EndpointConnector(
      name: 'product',
      endpoint: endpoints['product']!,
      methodConnectors: {
        'createProduct': _is.MethodConnector(
          name: 'createProduct',
          params: {
            'product': _is.ParameterDescription(
              name: 'product',
              type: _is.getType<_ichcxeb2.Product>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).createProduct(
                session,
                params['product'],
              ),
        ),
        'readProduct': _is.MethodConnector(
          name: 'readProduct',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).readProduct(
                session,
                params['id'],
              ),
        ),
        'findByCode': _is.MethodConnector(
          name: 'findByCode',
          params: {
            'code': _is.ParameterDescription(
              name: 'code',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).findByCode(
                session,
                params['code'],
              ),
        ),
        'updateProduct': _is.MethodConnector(
          name: 'updateProduct',
          params: {
            'product': _is.ParameterDescription(
              name: 'product',
              type: _is.getType<_ichcxeb2.Product>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).updateProduct(
                session,
                params['product'],
              ),
        ),
        'deleteProduct': _is.MethodConnector(
          name: 'deleteProduct',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).deleteProduct(
                session,
                params['id'],
              ),
        ),
        'listProducts': _is.MethodConnector(
          name: 'listProducts',
          params: {
            'originModule': _is.ParameterDescription(
              name: 'originModule',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'groupId': _is.ParameterDescription(
              name: 'groupId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['product'] as _im5j1753.ProductEndpoint).listProducts(
                session,
                originModule: params['originModule'],
                groupId: params['groupId'],
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
      },
    );
    connectors['productGroup'] = _is.EndpointConnector(
      name: 'productGroup',
      endpoint: endpoints['productGroup']!,
      methodConnectors: {
        'listGroups': _is.MethodConnector(
          name: 'listGroups',
          params: {
            'originModule': _is.ParameterDescription(
              name: 'originModule',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'ownerId': _is.ParameterDescription(
              name: 'ownerId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['productGroup'] as _iuhelpho.ProductGroupEndpoint)
                  .listGroups(
                    session,
                    originModule: params['originModule'],
                    ownerId: params['ownerId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'createProductGroup': _is.MethodConnector(
          name: 'createProductGroup',
          params: {
            'group': _is.ParameterDescription(
              name: 'group',
              type: _is.getType<_isb7m7oi.ProductGroup>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['productGroup'] as _iuhelpho.ProductGroupEndpoint)
                  .createProductGroup(session, params['group']),
        ),
        'updateProductGroup': _is.MethodConnector(
          name: 'updateProductGroup',
          params: {
            'group': _is.ParameterDescription(
              name: 'group',
              type: _is.getType<_isb7m7oi.ProductGroup>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['productGroup'] as _iuhelpho.ProductGroupEndpoint)
                  .updateProductGroup(session, params['group']),
        ),
        'deleteProductGroup': _is.MethodConnector(
          name: 'deleteProductGroup',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['productGroup'] as _iuhelpho.ProductGroupEndpoint)
                  .deleteProductGroup(session, params['id']),
        ),
        'findById': _is.MethodConnector(
          name: 'findById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['productGroup'] as _iuhelpho.ProductGroupEndpoint)
                  .findById(session, params['id']),
        ),
      },
    );
    connectors['profile'] = _is.EndpointConnector(
      name: 'profile',
      endpoint: endpoints['profile']!,
      methodConnectors: {
        'getOrCreateMyProfile': _is.MethodConnector(
          name: 'getOrCreateMyProfile',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['profile'] as _i2cx2pww.ProfileEndpoint)
                  .getOrCreateMyProfile(session),
        ),
        'updateMyProfile': _is.MethodConnector(
          name: 'updateMyProfile',
          params: {
            'profile': _is.ParameterDescription(
              name: 'profile',
              type: _is.getType<_i2pyoxii.UserProfile>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['profile'] as _i2cx2pww.ProfileEndpoint)
                  .updateMyProfile(session, params['profile']),
        ),
        'getProfileById': _is.MethodConnector(
          name: 'getProfileById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['profile'] as _i2cx2pww.ProfileEndpoint)
                  .getProfileById(session, params['id']),
        ),
      },
    );
    connectors['reload'] = _is.EndpointConnector(
      name: 'reload',
      endpoint: endpoints['reload']!,
      methodConnectors: {
        'executeReloadSession': _is.MethodConnector(
          name: 'executeReloadSession',
          params: {
            'reloadSession': _is.ParameterDescription(
              name: 'reloadSession',
              type: _is.getType<_ir80yzxg.ReloadSession>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint)
                  .executeReloadSession(session, params['reloadSession']),
        ),
        'getMyReloadSessions': _is.MethodConnector(
          name: 'getMyReloadSessions',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint)
                  .getMyReloadSessions(session),
        ),
        'registerTest': _is.MethodConnector(
          name: 'registerTest',
          params: {
            'test': _is.ParameterDescription(
              name: 'test',
              type: _is.getType<_ifny91bp.ReloadTest>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint).registerTest(
                session,
                params['test'],
              ),
        ),
        'getTestsBySession': _is.MethodConnector(
          name: 'getTestsBySession',
          params: {
            'sessionId': _is.ParameterDescription(
              name: 'sessionId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint)
                  .getTestsBySession(session, params['sessionId']),
        ),
        'getMySupplies': _is.MethodConnector(
          name: 'getMySupplies',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint).getMySupplies(
                session,
              ),
        ),
        'addSupply': _is.MethodConnector(
          name: 'addSupply',
          params: {
            'supply': _is.ParameterDescription(
              name: 'supply',
              type: _is.getType<_i8gnh98r.SupplyStock>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint).addSupply(
                session,
                params['supply'],
              ),
        ),
        'updateSupply': _is.MethodConnector(
          name: 'updateSupply',
          params: {
            'supply': _is.ParameterDescription(
              name: 'supply',
              type: _is.getType<_i8gnh98r.SupplyStock>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['reload'] as _isg3vmg7.ReloadEndpoint).updateSupply(
                session,
                params['supply'],
              ),
        ),
      },
    );
    connectors['securityRole'] = _is.EndpointConnector(
      name: 'securityRole',
      endpoint: endpoints['securityRole']!,
      methodConnectors: {
        'createRole': _is.MethodConnector(
          name: 'createRole',
          params: {
            'role': _is.ParameterDescription(
              name: 'role',
              type: _is.getType<_i1xchi60.SecurityRole>(),
              nullable: false,
            ),
            'permissions': _is.ParameterDescription(
              name: 'permissions',
              type: _is.getType<List<_itb2zhn4.RolePermission>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['securityRole'] as _igsyrha7.SecurityRoleEndpoint)
                  .createRole(session, params['role'], params['permissions']),
        ),
        'updateRole': _is.MethodConnector(
          name: 'updateRole',
          params: {
            'role': _is.ParameterDescription(
              name: 'role',
              type: _is.getType<_i1xchi60.SecurityRole>(),
              nullable: false,
            ),
            'permissions': _is.ParameterDescription(
              name: 'permissions',
              type: _is.getType<List<_itb2zhn4.RolePermission>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['securityRole'] as _igsyrha7.SecurityRoleEndpoint)
                  .updateRole(session, params['role'], params['permissions']),
        ),
        'deleteRole': _is.MethodConnector(
          name: 'deleteRole',
          params: {
            'role': _is.ParameterDescription(
              name: 'role',
              type: _is.getType<_i1xchi60.SecurityRole>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['securityRole'] as _igsyrha7.SecurityRoleEndpoint)
                  .deleteRole(session, params['role']),
        ),
        'listRoles': _is.MethodConnector(
          name: 'listRoles',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['securityRole'] as _igsyrha7.SecurityRoleEndpoint)
                  .listRoles(session),
        ),
        'listRolePermissions': _is.MethodConnector(
          name: 'listRolePermissions',
          params: {
            'role': _is.ParameterDescription(
              name: 'role',
              type: _is.getType<_i1xchi60.SecurityRole>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['securityRole'] as _igsyrha7.SecurityRoleEndpoint)
                  .listRolePermissions(session, params['role']),
        ),
      },
    );
    connectors['subscriptionPlan'] = _is.EndpointConnector(
      name: 'subscriptionPlan',
      endpoint: endpoints['subscriptionPlan']!,
      methodConnectors: {
        'createPlan': _is.MethodConnector(
          name: 'createPlan',
          params: {
            'plan': _is.ParameterDescription(
              name: 'plan',
              type: _is.getType<_ilwo31st.SubscriptionPlan>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['subscriptionPlan']
                      as _ieee6l5s.SubscriptionPlanEndpoint)
                  .createPlan(session, params['plan']),
        ),
        'readPlan': _is.MethodConnector(
          name: 'readPlan',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['subscriptionPlan']
                      as _ieee6l5s.SubscriptionPlanEndpoint)
                  .readPlan(session, params['id']),
        ),
        'updatePlan': _is.MethodConnector(
          name: 'updatePlan',
          params: {
            'plan': _is.ParameterDescription(
              name: 'plan',
              type: _is.getType<_ilwo31st.SubscriptionPlan>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['subscriptionPlan']
                      as _ieee6l5s.SubscriptionPlanEndpoint)
                  .updatePlan(session, params['plan']),
        ),
        'deletePlan': _is.MethodConnector(
          name: 'deletePlan',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['subscriptionPlan']
                      as _ieee6l5s.SubscriptionPlanEndpoint)
                  .deletePlan(session, params['id']),
        ),
        'listPlans': _is.MethodConnector(
          name: 'listPlans',
          params: {
            'planType': _is.ParameterDescription(
              name: 'planType',
              type: _is.getType<_i5bdl2dg.PlanType?>(),
              nullable: true,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<_ijhakeaq.PlanStatus?>(),
              nullable: true,
            ),
            'companyId': _is.ParameterDescription(
              name: 'companyId',
              type: _is.getType<_is.UuidValue?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['subscriptionPlan']
                      as _ieee6l5s.SubscriptionPlanEndpoint)
                  .listPlans(
                    session,
                    planType: params['planType'],
                    status: params['status'],
                    companyId: params['companyId'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
      },
    );
    connectors['training'] = _is.EndpointConnector(
      name: 'training',
      endpoint: endpoints['training']!,
      methodConnectors: {
        'register': _is.MethodConnector(
          name: 'register',
          params: {
            'training': _is.ParameterDescription(
              name: 'training',
              type: _is.getType<_i8n7svi8.Training>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['training'] as _ibths11e.TrainingEndpoint).register(
                session,
                params['training'],
              ),
        ),
        'getMyTrainings': _is.MethodConnector(
          name: 'getMyTrainings',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['training'] as _ibths11e.TrainingEndpoint)
                  .getMyTrainings(session),
        ),
        'getTraining': _is.MethodConnector(
          name: 'getTraining',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['training'] as _ibths11e.TrainingEndpoint).getTraining(
                session,
                params['id'],
              ),
        ),
      },
    );
    connectors['user'] = _is.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getById': _is.MethodConnector(
          name: 'getById',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).getById(
                session,
                params['id'],
              ),
        ),
        'getByCpf': _is.MethodConnector(
          name: 'getByCpf',
          params: {
            'cpf': _is.ParameterDescription(
              name: 'cpf',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).getByCpf(
                session,
                params['cpf'],
              ),
        ),
        'create': _is.MethodConnector(
          name: 'create',
          params: {
            'user': _is.ParameterDescription(
              name: 'user',
              type: _is.getType<_i2pyoxii.UserProfile>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).create(
                session,
                params['user'],
              ),
        ),
        'update': _is.MethodConnector(
          name: 'update',
          params: {
            'user': _is.ParameterDescription(
              name: 'user',
              type: _is.getType<_i2pyoxii.UserProfile>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).update(
                session,
                params['user'],
              ),
        ),
        'delete': _is.MethodConnector(
          name: 'delete',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).delete(
                session,
                params['id'],
              ),
        ),
        'list': _is.MethodConnector(
          name: 'list',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).list(
                session,
                limit: params['limit'],
                offset: params['offset'],
              ),
        ),
        'search': _is.MethodConnector(
          name: 'search',
          params: {
            'query': _is.ParameterDescription(
              name: 'query',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).search(
                session,
                params['query'],
              ),
        ),
        'getRoles': _is.MethodConnector(
          name: 'getRoles',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).getRoles(
                session,
                params['userId'],
              ),
        ),
        'updateRoles': _is.MethodConnector(
          name: 'updateRoles',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<_is.UuidValue>(),
              nullable: false,
            ),
            'roleIds': _is.ParameterDescription(
              name: 'roleIds',
              type: _is.getType<List<_is.UuidValue>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).updateRoles(
                session,
                params['userId'],
                params['roleIds'],
              ),
        ),
        'getMyCompanies': _is.MethodConnector(
          name: 'getMyCompanies',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['user'] as _iymy5306.UserEndpoint).getMyCompanies(
                session,
              ),
        ),
      },
    );
    connectors['viaCepGateway'] = _is.EndpointConnector(
      name: 'viaCepGateway',
      endpoint: endpoints['viaCepGateway']!,
      methodConnectors: {
        'getAddressByCep': _is.MethodConnector(
          name: 'getAddressByCep',
          params: {
            'zipcode': _is.ParameterDescription(
              name: 'zipcode',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['viaCepGateway'] as _ibg94toe.ViaCepGatewayEndpoint)
                  .getAddressByCep(session, params['zipcode']),
        ),
      },
    );
    connectors['asaasAccount'] = _is.EndpointConnector(
      name: 'asaasAccount',
      endpoint: endpoints['asaasAccount']!,
      methodConnectors: {
        'createSubaccount': _is.MethodConnector(
          name: 'createSubaccount',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasAccount'] as _ipja7yql.AsaasAccountEndpoint)
                  .createSubaccount(session, params['requestData']),
        ),
        'listSubaccounts': _is.MethodConnector(
          name: 'listSubaccounts',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasAccount'] as _ipja7yql.AsaasAccountEndpoint)
                  .listSubaccounts(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'getAccountNumber': _is.MethodConnector(
          name: 'getAccountNumber',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasAccount'] as _ipja7yql.AsaasAccountEndpoint)
                  .getAccountNumber(session),
        ),
        'getAccountStatus': _is.MethodConnector(
          name: 'getAccountStatus',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasAccount'] as _ipja7yql.AsaasAccountEndpoint)
                  .getAccountStatus(session),
        ),
      },
    );
    connectors['asaasCustomer'] = _is.EndpointConnector(
      name: 'asaasCustomer',
      endpoint: endpoints['asaasCustomer']!,
      methodConnectors: {
        'createCustomer': _is.MethodConnector(
          name: 'createCustomer',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .createCustomer(session, params['requestData']),
        ),
        'listCustomers': _is.MethodConnector(
          name: 'listCustomers',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'name': _is.ParameterDescription(
              name: 'name',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'cpfCnpj': _is.ParameterDescription(
              name: 'cpfCnpj',
              type: _is.getType<String?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .listCustomers(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                    name: params['name'],
                    cpfCnpj: params['cpfCnpj'],
                  ),
        ),
        'getCustomer': _is.MethodConnector(
          name: 'getCustomer',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .getCustomer(session, params['id']),
        ),
        'updateCustomer': _is.MethodConnector(
          name: 'updateCustomer',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .updateCustomer(session, params['id'], params['requestData']),
        ),
        'deleteCustomer': _is.MethodConnector(
          name: 'deleteCustomer',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .deleteCustomer(session, params['id']),
        ),
        'restoreCustomer': _is.MethodConnector(
          name: 'restoreCustomer',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .restoreCustomer(session, params['id']),
        ),
        'getCustomerNotifications': _is.MethodConnector(
          name: 'getCustomerNotifications',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasCustomer'] as _ijiih2vg.AsaasCustomerEndpoint)
                  .getCustomerNotifications(session, params['id']),
        ),
      },
    );
    connectors['asaasInstallment'] = _is.EndpointConnector(
      name: 'asaasInstallment',
      endpoint: endpoints['asaasInstallment']!,
      methodConnectors: {
        'createInstallment': _is.MethodConnector(
          name: 'createInstallment',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasInstallment']
                      as _igkphi6t.AsaasInstallmentEndpoint)
                  .createInstallment(session, params['requestData']),
        ),
        'listInstallments': _is.MethodConnector(
          name: 'listInstallments',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasInstallment']
                      as _igkphi6t.AsaasInstallmentEndpoint)
                  .listInstallments(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'getInstallment': _is.MethodConnector(
          name: 'getInstallment',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasInstallment']
                      as _igkphi6t.AsaasInstallmentEndpoint)
                  .getInstallment(session, params['id']),
        ),
        'deleteInstallment': _is.MethodConnector(
          name: 'deleteInstallment',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasInstallment']
                      as _igkphi6t.AsaasInstallmentEndpoint)
                  .deleteInstallment(session, params['id']),
        ),
        'listInstallmentPayments': _is.MethodConnector(
          name: 'listInstallmentPayments',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasInstallment']
                      as _igkphi6t.AsaasInstallmentEndpoint)
                  .listInstallmentPayments(session, params['id']),
        ),
      },
    );
    connectors['asaasPayment'] = _is.EndpointConnector(
      name: 'asaasPayment',
      endpoint: endpoints['asaasPayment']!,
      methodConnectors: {
        'createPayment': _is.MethodConnector(
          name: 'createPayment',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .createPayment(session, params['requestData']),
        ),
        'listPayments': _is.MethodConnector(
          name: 'listPayments',
          params: {
            'customer': _is.ParameterDescription(
              name: 'customer',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .listPayments(
                    session,
                    customer: params['customer'],
                    status: params['status'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'captureAuthorizedPayment': _is.MethodConnector(
          name: 'captureAuthorizedPayment',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .captureAuthorizedPayment(session, params['paymentId']),
        ),
        'payWithCreditCard': _is.MethodConnector(
          name: 'payWithCreditCard',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .payWithCreditCard(
                    session,
                    params['paymentId'],
                    params['requestData'],
                  ),
        ),
        'getBillingInfo': _is.MethodConnector(
          name: 'getBillingInfo',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .getBillingInfo(session, params['paymentId']),
        ),
        'getPaymentStatus': _is.MethodConnector(
          name: 'getPaymentStatus',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .getPaymentStatus(session, params['paymentId']),
        ),
        'refundPayment': _is.MethodConnector(
          name: 'refundPayment',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .refundPayment(session, params['paymentId']),
        ),
        'getPixQrCode': _is.MethodConnector(
          name: 'getPixQrCode',
          params: {
            'paymentId': _is.ParameterDescription(
              name: 'paymentId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPayment'] as _i530zaw2.AsaasPaymentEndpoint)
                  .getPixQrCode(session, params['paymentId']),
        ),
      },
    );
    connectors['asaasPix'] = _is.EndpointConnector(
      name: 'asaasPix',
      endpoint: endpoints['asaasPix']!,
      methodConnectors: {
        'createKey': _is.MethodConnector(
          name: 'createKey',
          params: {
            'type': _is.ParameterDescription(
              name: 'type',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPix'] as _i464yiwz.AsaasPixEndpoint).createKey(
                session,
                params['type'],
              ),
        ),
        'listKeys': _is.MethodConnector(
          name: 'listKeys',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPix'] as _i464yiwz.AsaasPixEndpoint).listKeys(
                session,
              ),
        ),
        'createStaticQrCode': _is.MethodConnector(
          name: 'createStaticQrCode',
          params: {
            'request': _is.ParameterDescription(
              name: 'request',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPix'] as _i464yiwz.AsaasPixEndpoint)
                  .createStaticQrCode(session, params['request']),
        ),
        'payQrCode': _is.MethodConnector(
          name: 'payQrCode',
          params: {
            'request': _is.ParameterDescription(
              name: 'request',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPix'] as _i464yiwz.AsaasPixEndpoint).payQrCode(
                session,
                params['request'],
              ),
        ),
        'listTransactions': _is.MethodConnector(
          name: 'listTransactions',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'startDate': _is.ParameterDescription(
              name: 'startDate',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'endDate': _is.ParameterDescription(
              name: 'endDate',
              type: _is.getType<String?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasPix'] as _i464yiwz.AsaasPixEndpoint)
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
    connectors['asaasTransfer'] = _is.EndpointConnector(
      name: 'asaasTransfer',
      endpoint: endpoints['asaasTransfer']!,
      methodConnectors: {
        'createTransfer': _is.MethodConnector(
          name: 'createTransfer',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasTransfer'] as _irkw65qc.AsaasTransferEndpoint)
                  .createTransfer(session, params['requestData']),
        ),
        'listTransfers': _is.MethodConnector(
          name: 'listTransfers',
          params: {
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasTransfer'] as _irkw65qc.AsaasTransferEndpoint)
                  .listTransfers(
                    session,
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'getExtract': _is.MethodConnector(
          name: 'getExtract',
          params: {
            'startDate': _is.ParameterDescription(
              name: 'startDate',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'endDate': _is.ParameterDescription(
              name: 'endDate',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
            'offset': _is.ParameterDescription(
              name: 'offset',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasTransfer'] as _irkw65qc.AsaasTransferEndpoint)
                  .getExtract(
                    session,
                    startDate: params['startDate'],
                    endDate: params['endDate'],
                    limit: params['limit'],
                    offset: params['offset'],
                  ),
        ),
        'getBalance': _is.MethodConnector(
          name: 'getBalance',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasTransfer'] as _irkw65qc.AsaasTransferEndpoint)
                  .getBalance(session),
        ),
      },
    );
    connectors['asaasWebhookConfig'] = _is.EndpointConnector(
      name: 'asaasWebhookConfig',
      endpoint: endpoints['asaasWebhookConfig']!,
      methodConnectors: {
        'createWebhook': _is.MethodConnector(
          name: 'createWebhook',
          params: {
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasWebhookConfig']
                      as _iszmqrws.AsaasWebhookConfigEndpoint)
                  .createWebhook(session, params['requestData']),
        ),
        'listWebhooks': _is.MethodConnector(
          name: 'listWebhooks',
          params: {},
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasWebhookConfig']
                      as _iszmqrws.AsaasWebhookConfigEndpoint)
                  .listWebhooks(session),
        ),
        'updateWebhook': _is.MethodConnector(
          name: 'updateWebhook',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'requestData': _is.ParameterDescription(
              name: 'requestData',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasWebhookConfig']
                      as _iszmqrws.AsaasWebhookConfigEndpoint)
                  .updateWebhook(session, params['id'], params['requestData']),
        ),
        'deleteWebhook': _is.MethodConnector(
          name: 'deleteWebhook',
          params: {
            'id': _is.ParameterDescription(
              name: 'id',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasWebhookConfig']
                      as _iszmqrws.AsaasWebhookConfigEndpoint)
                  .deleteWebhook(session, params['id']),
        ),
      },
    );
    connectors['asaasWebhookReceiver'] = _is.EndpointConnector(
      name: 'asaasWebhookReceiver',
      endpoint: endpoints['asaasWebhookReceiver']!,
      methodConnectors: {
        'handleEvent': _is.MethodConnector(
          name: 'handleEvent',
          params: {
            'payload': _is.ParameterDescription(
              name: 'payload',
              type: _is.getType<Map<String, dynamic>>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['asaasWebhookReceiver']
                      as _ix6hokf9.AsaasWebhookReceiverEndpoint)
                  .handleEvent(session, params['payload']),
        ),
      },
    );
    connectors['greeting'] = _is.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _is.MethodConnector(
          name: 'hello',
          params: {
            'name': _is.ParameterDescription(
              name: 'name',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call: (_is.Session session, Map<String, dynamic> params) async =>
              (endpoints['greeting'] as _ikvw90o4.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i1n3uhu0.Endpoints()
      ..initializeEndpoints(server);
  }

  @override
  _is.FutureCallDispatch? get futureCalls {
    return _iahu0g5j.FutureCalls();
  }
}
