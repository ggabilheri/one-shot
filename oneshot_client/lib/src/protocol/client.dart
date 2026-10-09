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
import 'dart:async' as _ida;
import 'package:http/http.dart' as _i85jenna;
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _ih25lxcw;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _iz410fgy;
import 'package:oneshot_client/src/protocol/common/accessory.dart' as _i5j6rswi;
import 'package:oneshot_client/src/protocol/common/address.dart' as _isei4bbw;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i0b5zr2s;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart'
    as _i39d40wj;
import 'package:oneshot_client/src/protocol/common/user_profile.dart'
    as _itg25mst;
import 'package:oneshot_client/src/protocol/company/company.dart' as _i3sd1a32;
import 'package:oneshot_client/src/protocol/company/company_type.dart'
    as _i85k5bef;
import 'package:oneshot_client/src/protocol/company/membership.dart'
    as _id04q892;
import 'package:oneshot_client/src/protocol/company/range_visit.dart'
    as _iw6oqvjt;
import 'package:oneshot_client/src/protocol/enums/financial_entry_status.dart'
    as _i8r3rtzt;
import 'package:oneshot_client/src/protocol/enums/financial_entry_type.dart'
    as _iwuq8juk;
import 'package:oneshot_client/src/protocol/enums/invoice_status.enum.dart'
    as _ittahhhd;
import 'package:oneshot_client/src/protocol/enums/plan_status.enum.dart'
    as _ixcrk2vr;
import 'package:oneshot_client/src/protocol/enums/plan_type.enum.dart'
    as _iwkfgxhm;
import 'package:oneshot_client/src/protocol/enums/platform_app.enum.dart'
    as _id7lw9cs;
import 'package:oneshot_client/src/protocol/finance/bank.dart' as _iu4e25gm;
import 'package:oneshot_client/src/protocol/finance/bank_account.dart'
    as _i0k9g66j;
import 'package:oneshot_client/src/protocol/finance/financial_entry.dart'
    as _i73s6949;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _ipuzw8nn;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart'
    as _iakdg9xr;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _ie2ol2q9;
import 'package:oneshot_client/src/protocol/greeting.dart' as _igq4abt2;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart'
    as _i36mig6d;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _is59bod2;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _imab12od;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _ifcud9hx;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i2pthzti;
import 'package:oneshot_client/src/protocol/product/product_group.dart'
    as _io32npgw;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _ig3cbd8p;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _io8jidll;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i6yaeg3x;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart'
    as _ifmg7iki;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _iisju3we;
import 'package:oneshot_client/src/protocol/subscription/subscription_plan.dart'
    as _iq7fauej;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i312scxx;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'protocol.dart' as _il2as5qe;

/// {@category Endpoint}
class EndpointAccessory extends _isc.EndpointRef {
  EndpointAccessory(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'accessory';

  _ida.Future<_i5j6rswi.Accessory?> getById(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i5j6rswi.Accessory?>('accessory', 'getById', {
        'id': id,
      });

  _ida.Future<_i5j6rswi.Accessory> create(_i5j6rswi.Accessory accessory) =>
      caller.callServerEndpoint<_i5j6rswi.Accessory>('accessory', 'create', {
        'accessory': accessory,
      });

  _ida.Future<_i5j6rswi.Accessory> update(_i5j6rswi.Accessory accessory) =>
      caller.callServerEndpoint<_i5j6rswi.Accessory>('accessory', 'update', {
        'accessory': accessory,
      });

  _ida.Future<bool> delete(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('accessory', 'delete', {'id': id});

  _ida.Future<List<_i5j6rswi.Accessory>> listByUser(
    _isc.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i5j6rswi.Accessory>>(
    'accessory',
    'listByUser',
    {'userId': userId, 'limit': limit, 'offset': offset},
  );
}

/// {@category Endpoint}
class EndpointAmmunition extends _isc.EndpointRef {
  EndpointAmmunition(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ammunition';

  /// Lista todo o estoque de munições prontas do usuário logado.
  _ida.Future<List<_ig3cbd8p.AmmunitionStock>> getMyAmmunition() =>
      caller.callServerEndpoint<List<_ig3cbd8p.AmmunitionStock>>(
        'ammunition',
        'getMyAmmunition',
        {},
      );

  /// Adiciona uma nova munição ao estoque (ex: compra).
  _ida.Future<_ig3cbd8p.AmmunitionStock> addAmmunition(
    _ig3cbd8p.AmmunitionStock ammo,
  ) => caller.callServerEndpoint<_ig3cbd8p.AmmunitionStock>(
    'ammunition',
    'addAmmunition',
    {'ammo': ammo},
  );

  /// Ajusta a quantidade manualmente.
  _ida.Future<_ig3cbd8p.AmmunitionStock?> adjustQuantity(
    _isc.UuidValue id,
    int change,
  ) => caller.callServerEndpoint<_ig3cbd8p.AmmunitionStock?>(
    'ammunition',
    'adjustQuantity',
    {'id': id, 'change': change},
  );

  /// Deleta um registro de estoque de munição.
  _ida.Future<bool> deleteAmmunition(_isc.UuidValue id) => caller
      .callServerEndpoint<bool>('ammunition', 'deleteAmmunition', {'id': id});
}

/// {@category Endpoint}
class EndpointBankAccount extends _isc.EndpointRef {
  EndpointBankAccount(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'bankAccount';

  /// Cria uma nova conta bancária.
  _ida.Future<_i0k9g66j.BankAccount> createAccount(
    _i0k9g66j.BankAccount account,
  ) => caller.callServerEndpoint<_i0k9g66j.BankAccount>(
    'bankAccount',
    'createAccount',
    {'account': account},
  );

  /// Busca uma conta bancária pelo ID.
  _ida.Future<_i0k9g66j.BankAccount?> readAccount(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i0k9g66j.BankAccount?>(
        'bankAccount',
        'readAccount',
        {'id': id},
      );

  /// Atualiza os dados de uma conta bancária.
  _ida.Future<_i0k9g66j.BankAccount> updateAccount(
    _i0k9g66j.BankAccount account,
  ) => caller.callServerEndpoint<_i0k9g66j.BankAccount>(
    'bankAccount',
    'updateAccount',
    {'account': account},
  );

  /// Remove uma conta bancária pelo ID.
  _ida.Future<bool> deleteAccount(_isc.UuidValue id) => caller
      .callServerEndpoint<bool>('bankAccount', 'deleteAccount', {'id': id});

  /// Lista contas bancárias filtrando obrigatoriamente pelo [originModule].
  /// Opcionalmente filtra por [status] (ACTIVE / INACTIVE).
  _ida.Future<List<_i0k9g66j.BankAccount>> listAccounts({
    required String originModule,
    String? status,
    _isc.UuidValue? companyId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i0k9g66j.BankAccount>>(
    'bankAccount',
    'listAccounts',
    {
      'originModule': originModule,
      'status': status,
      'companyId': companyId,
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointBrasilApiGateway extends _isc.EndpointRef {
  EndpointBrasilApiGateway(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'brasilApiGateway';

  _ida.Future<_i3sd1a32.Company?> getCompanyInfo(String cnpj) =>
      caller.callServerEndpoint<_i3sd1a32.Company?>(
        'brasilApiGateway',
        'getCompanyInfo',
        {'cnpj': cnpj},
      );

  _ida.Future<_isei4bbw.Address?> getAddressByCep(String zipcode) =>
      caller.callServerEndpoint<_isei4bbw.Address?>(
        'brasilApiGateway',
        'getAddressByCep',
        {'zipcode': zipcode},
      );

  _ida.Future<List<_iu4e25gm.Bank>> getBanks() =>
      caller.callServerEndpoint<List<_iu4e25gm.Bank>>(
        'brasilApiGateway',
        'getBanks',
        {},
      );
}

/// {@category Endpoint}
class EndpointCompany extends _isc.EndpointRef {
  EndpointCompany(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  /// Cria uma nova empresa no sistema e uma subconta Asaas correspondente.
  /// A criação é bloqueante: se a subconta Asaas falhar, a empresa não é criada.
  _ida.Future<_i3sd1a32.Company> createCompany(_i3sd1a32.Company company) =>
      caller.callServerEndpoint<_i3sd1a32.Company>('company', 'createCompany', {
        'company': company,
      });

  /// Lista empresas com filtro opcional por empresa proprietária.
  _ida.Future<List<_i3sd1a32.Company>> listCompanies({
    _isc.UuidValue? parentCompanyId,
    _i85k5bef.CompanyType? type,
  }) => caller.callServerEndpoint<List<_i3sd1a32.Company>>(
    'company',
    'listCompanies',
    {'parentCompanyId': parentCompanyId, 'type': type},
  );

  /// Atualiza uma empresa existente.
  _ida.Future<_i3sd1a32.Company> updateCompany(_i3sd1a32.Company company) =>
      caller.callServerEndpoint<_i3sd1a32.Company>('company', 'updateCompany', {
        'company': company,
      });

  /// Exclui uma empresa (Soft Delete) definindo active = false.
  _ida.Future<_i3sd1a32.Company> deleteCompany(_isc.UuidValue companyId) =>
      caller.callServerEndpoint<_i3sd1a32.Company>('company', 'deleteCompany', {
        'companyId': companyId,
      });

  /// Solicita filiação a uma empresa (Clube).
  _ida.Future<_id04q892.Membership> requestMembership(
    _isc.UuidValue companyId,
  ) => caller.callServerEndpoint<_id04q892.Membership>(
    'company',
    'requestMembership',
    {'companyId': companyId},
  );

  /// Lista minhas filiações.
  _ida.Future<List<_id04q892.Membership>> getMyMemberships() =>
      caller.callServerEndpoint<List<_id04q892.Membership>>(
        'company',
        'getMyMemberships',
        {},
      );

  /// Registra entrada no estande (Check-in).
  _ida.Future<_iw6oqvjt.RangeVisit> checkIn(
    _isc.UuidValue companyId,
    _isc.UuidValue? firearmId,
  ) => caller.callServerEndpoint<_iw6oqvjt.RangeVisit>('company', 'checkIn', {
    'companyId': companyId,
    'firearmId': firearmId,
  });

  /// Registra saída do estande (Check-out).
  _ida.Future<_iw6oqvjt.RangeVisit> checkOut(
    _isc.UuidValue visitId,
    int shotsFired,
  ) => caller.callServerEndpoint<_iw6oqvjt.RangeVisit>('company', 'checkOut', {
    'visitId': visitId,
    'shotsFired': shotsFired,
  });

  /// Lista minhas visitas.
  _ida.Future<List<_iw6oqvjt.RangeVisit>> getMyVisits() =>
      caller.callServerEndpoint<List<_iw6oqvjt.RangeVisit>>(
        'company',
        'getMyVisits',
        {},
      );

  /// Obtém a empresa gerenciada pelo usuário logado (Dono do Clube).
  _ida.Future<_i3sd1a32.Company> getManagedCompany() =>
      caller.callServerEndpoint<_i3sd1a32.Company>(
        'company',
        'getManagedCompany',
        {},
      );
}

/// {@category Endpoint}
class EndpointDocument extends _isc.EndpointRef {
  EndpointDocument(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'document';

  _ida.Future<_i0b5zr2s.Document?> getById(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i0b5zr2s.Document?>('document', 'getById', {
        'id': id,
      });

  _ida.Future<_i0b5zr2s.Document> create(_i0b5zr2s.Document document) =>
      caller.callServerEndpoint<_i0b5zr2s.Document>('document', 'create', {
        'document': document,
      });

  _ida.Future<_i0b5zr2s.Document> update(_i0b5zr2s.Document document) =>
      caller.callServerEndpoint<_i0b5zr2s.Document>('document', 'update', {
        'document': document,
      });

  _ida.Future<bool> delete(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('document', 'delete', {'id': id});

  _ida.Future<List<_i0b5zr2s.Document>> listByUser(
    _isc.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i0b5zr2s.Document>>(
    'document',
    'listByUser',
    {'userId': userId, 'limit': limit, 'offset': offset},
  );

  _ida.Future<List<_i0b5zr2s.Document>> listByFirearm(
    _isc.UuidValue firearmId,
  ) => caller.callServerEndpoint<List<_i0b5zr2s.Document>>(
    'document',
    'listByFirearm',
    {'firearmId': firearmId},
  );

  _ida.Future<List<_i0b5zr2s.Document>> listByAccessory(
    _isc.UuidValue accessoryId,
  ) => caller.callServerEndpoint<List<_i0b5zr2s.Document>>(
    'document',
    'listByAccessory',
    {'accessoryId': accessoryId},
  );

  /// Gera uma descrição de upload para o arquivo.
  _ida.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>('document', 'getUploadDescription', {
        'path': path,
      });

  /// Verifica se o upload ocorreu e retorna a URL pública.
  _ida.Future<String?> verifyUpload(String path) => caller
      .callServerEndpoint<String?>('document', 'verifyUpload', {'path': path});
}

/// {@category Endpoint}
class EndpointFinancialEntry extends _isc.EndpointRef {
  EndpointFinancialEntry(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'financialEntry';

  /// Cria um novo lançamento financeiro (A Pagar ou A Receber).
  _ida.Future<_i73s6949.FinancialEntry> createEntry(
    _i73s6949.FinancialEntry entry,
  ) => caller.callServerEndpoint<_i73s6949.FinancialEntry>(
    'financialEntry',
    'createEntry',
    {'entry': entry},
  );

  /// Busca um lançamento financeiro pelo ID.
  /// Retorna o lançamento com a [BankAccount] e [Invoice] vinculados (via include).
  _ida.Future<_i73s6949.FinancialEntry?> readEntry(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i73s6949.FinancialEntry?>(
        'financialEntry',
        'readEntry',
        {'id': id},
      );

  /// Atualiza um lançamento financeiro existente.
  _ida.Future<_i73s6949.FinancialEntry> updateEntry(
    _i73s6949.FinancialEntry entry,
  ) => caller.callServerEndpoint<_i73s6949.FinancialEntry>(
    'financialEntry',
    'updateEntry',
    {'entry': entry},
  );

  /// Remove um lançamento financeiro pelo ID.
  _ida.Future<bool> deleteEntry(_isc.UuidValue id) => caller
      .callServerEndpoint<bool>('financialEntry', 'deleteEntry', {'id': id});

  /// Lista lançamentos financeiros com filtros dinâmicos.
  ///
  /// - [originModule]: Filtro **obrigatório**. Isola os dados por módulo (BACKOFFICE, COMPANY, GUNSMITH).
  /// - [type]: Filtro opcional por tipo (`payable` = A Pagar, `receivable` = A Receber).
  /// - [status]: Filtro opcional por status (`pending`, `paid`, `overdue`, etc.).
  /// - [dueDateFrom] e [dueDateTo]: Intervalo opcional de datas de vencimento.
  _ida.Future<List<_i73s6949.FinancialEntry>> listEntries({
    required _id7lw9cs.PlatformApp originModule,
    DateTime? dueDateTo,
    _isc.UuidValue? companyId,
    int? limit,
    int? offset,
    _iwuq8juk.FinancialEntryType? type,
    _i8r3rtzt.FinancialEntryStatus? status,
    DateTime? dueDateFrom,
  }) => caller.callServerEndpoint<List<_i73s6949.FinancialEntry>>(
    'financialEntry',
    'listEntries',
    {
      'originModule': originModule,
      'dueDateTo': dueDateTo,
      'companyId': companyId,
      'limit': limit,
      'offset': offset,
      'type': type,
      'status': status,
      'dueDateFrom': dueDateFrom,
    },
  );
}

/// {@category Endpoint}
class EndpointFirearm extends _isc.EndpointRef {
  EndpointFirearm(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'firearm';

  _ida.Future<_io8jidll.Firearm?> getById(_isc.UuidValue id) => caller
      .callServerEndpoint<_io8jidll.Firearm?>('firearm', 'getById', {'id': id});

  _ida.Future<_io8jidll.Firearm?> getBySerialNumber(String serialNumber) =>
      caller.callServerEndpoint<_io8jidll.Firearm?>(
        'firearm',
        'getBySerialNumber',
        {'serialNumber': serialNumber},
      );

  _ida.Future<_io8jidll.Firearm> create(_io8jidll.Firearm firearm) =>
      caller.callServerEndpoint<_io8jidll.Firearm>('firearm', 'create', {
        'firearm': firearm,
      });

  _ida.Future<_io8jidll.Firearm> update(_io8jidll.Firearm firearm) =>
      caller.callServerEndpoint<_io8jidll.Firearm>('firearm', 'update', {
        'firearm': firearm,
      });

  _ida.Future<bool> delete(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('firearm', 'delete', {'id': id});

  _ida.Future<List<_io8jidll.Firearm>> listByUser(
    _isc.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_io8jidll.Firearm>>(
    'firearm',
    'listByUser',
    {'userId': userId, 'limit': limit, 'offset': offset},
  );
}

/// {@category Endpoint}
class EndpointGunsmith extends _isc.EndpointRef {
  EndpointGunsmith(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gunsmith';

  /// Registra uma nova armaria no sistema e cria uma subconta Asaas para ela.
  /// A criação é bloqueante: se a subconta Asaas falhar, a armaria não é criada.
  _ida.Future<_i36mig6d.Gunsmith> createGunsmith(_i36mig6d.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i36mig6d.Gunsmith>(
        'gunsmith',
        'createGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Busca os detalhes de uma armaria pelo ID.
  _ida.Future<_i36mig6d.Gunsmith?> getGunsmith(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i36mig6d.Gunsmith?>(
        'gunsmith',
        'getGunsmith',
        {'id': id},
      );

  /// Busca a armaria de um proprietário específico.
  _ida.Future<_i36mig6d.Gunsmith?> findGunsmithByOwner(
    _isc.UuidValue ownerId,
  ) => caller.callServerEndpoint<_i36mig6d.Gunsmith?>(
    'gunsmith',
    'findGunsmithByOwner',
    {'ownerId': ownerId},
  );

  /// Lista todas as armarias cadastradas.
  _ida.Future<List<_i36mig6d.Gunsmith>> listGunsmiths({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i36mig6d.Gunsmith>>(
    'gunsmith',
    'listGunsmiths',
    {'limit': limit, 'offset': offset},
  );

  /// Atualiza os dados de uma armaria.
  _ida.Future<_i36mig6d.Gunsmith> updateGunsmith(_i36mig6d.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i36mig6d.Gunsmith>(
        'gunsmith',
        'updateGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Cria um novo cliente para o armeiro logado.
  _ida.Future<_is59bod2.GunsmithClient> createClient(
    _is59bod2.GunsmithClient client,
  ) => caller.callServerEndpoint<_is59bod2.GunsmithClient>(
    'gunsmith',
    'createClient',
    {'client': client},
  );

  /// Busca um cliente pelo CPF.
  _ida.Future<_is59bod2.GunsmithClient?> findClientByCpf(String cpf) =>
      caller.callServerEndpoint<_is59bod2.GunsmithClient?>(
        'gunsmith',
        'findClientByCpf',
        {'cpf': cpf},
      );

  /// Lista todos os clientes de um armeiro específico.
  _ida.Future<List<_is59bod2.GunsmithClient>> getMyClients() =>
      caller.callServerEndpoint<List<_is59bod2.GunsmithClient>>(
        'gunsmith',
        'getMyClients',
        {},
      );

  /// Registra uma nova Ordem de Serviço com seus itens.
  _ida.Future<_imab12od.ServiceOrder> registerServiceOrder(
    _imab12od.ServiceOrder order,
    List<_ifcud9hx.ServiceOrderItem> items,
  ) => caller.callServerEndpoint<_imab12od.ServiceOrder>(
    'gunsmith',
    'registerServiceOrder',
    {'order': order, 'items': items},
  );

  /// Lista as ordens de serviço de um cliente.
  _ida.Future<List<_imab12od.ServiceOrder>> getOrdersByClient(
    _isc.UuidValue clientId,
  ) => caller.callServerEndpoint<List<_imab12od.ServiceOrder>>(
    'gunsmith',
    'getOrdersByClient',
    {'clientId': clientId},
  );

  /// Busca os itens de uma ordem específica.
  _ida.Future<List<_ifcud9hx.ServiceOrderItem>> getOrderItems(
    _isc.UuidValue serviceOrderId,
  ) => caller.callServerEndpoint<List<_ifcud9hx.ServiceOrderItem>>(
    'gunsmith',
    'getOrderItems',
    {'serviceOrderId': serviceOrderId},
  );
}

/// {@category Endpoint}
class EndpointInvoice extends _isc.EndpointRef {
  EndpointInvoice(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'invoice';

  /// Cria uma nova fatura com seus itens.
  _ida.Future<_ipuzw8nn.Invoice> createInvoice(
    _ipuzw8nn.Invoice invoice,
    List<_iakdg9xr.InvoiceItem> items,
  ) => caller.callServerEndpoint<_ipuzw8nn.Invoice>(
    'invoice',
    'createInvoice',
    {'invoice': invoice, 'items': items},
  );

  /// Busca uma fatura detalhada pelo ID.
  _ida.Future<_ipuzw8nn.Invoice?> getInvoice(_isc.UuidValue id) =>
      caller.callServerEndpoint<_ipuzw8nn.Invoice?>('invoice', 'getInvoice', {
        'id': id,
      });

  /// Lista faturas com filtros dinâmicos.
  _ida.Future<List<_ipuzw8nn.Invoice>> listInvoices({
    String? originModule,
    String? direction,
    _ittahhhd.InvoiceStatus? status,
    _isc.UuidValue? companyId,
    _isc.UuidValue? gunsmithId,
    _isc.UuidValue? userId,
    int? limit,
    int? offset,
  }) => caller
      .callServerEndpoint<List<_ipuzw8nn.Invoice>>('invoice', 'listInvoices', {
        'originModule': originModule,
        'direction': direction,
        'status': status,
        'companyId': companyId,
        'gunsmithId': gunsmithId,
        'userId': userId,
        'limit': limit,
        'offset': offset,
      });

  /// Atualiza uma fatura.
  _ida.Future<_ipuzw8nn.Invoice> updateInvoice(_ipuzw8nn.Invoice invoice) =>
      caller.callServerEndpoint<_ipuzw8nn.Invoice>('invoice', 'updateInvoice', {
        'invoice': invoice,
      });

  /// Remove uma fatura.
  _ida.Future<bool> deleteInvoice(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('invoice', 'deleteInvoice', {'id': id});

  /// Busca itens de uma fatura.
  _ida.Future<List<_iakdg9xr.InvoiceItem>> getInvoiceItems(
    _isc.UuidValue invoiceId,
  ) => caller.callServerEndpoint<List<_iakdg9xr.InvoiceItem>>(
    'invoice',
    'getInvoiceItems',
    {'invoiceId': invoiceId},
  );
}

/// {@category Endpoint}
class EndpointPayment extends _isc.EndpointRef {
  EndpointPayment(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  /// Registra um novo pagamento vinculado a uma fatura.
  _ida.Future<_ie2ol2q9.Payment> registerPayment(_ie2ol2q9.Payment payment) =>
      caller.callServerEndpoint<_ie2ol2q9.Payment>(
        'payment',
        'registerPayment',
        {'payment': payment},
      );

  /// Lista pagamentos de uma fatura específica.
  _ida.Future<List<_ie2ol2q9.Payment>> getPaymentsByInvoice(
    _isc.UuidValue invoiceId,
  ) => caller.callServerEndpoint<List<_ie2ol2q9.Payment>>(
    'payment',
    'getPaymentsByInvoice',
    {'invoiceId': invoiceId},
  );

  /// Lista todos os pagamentos (Geral ou por período).
  _ida.Future<List<_ie2ol2q9.Payment>> listPayments({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_ie2ol2q9.Payment>>(
    'payment',
    'listPayments',
    {'limit': limit, 'offset': offset},
  );
}

/// {@category Endpoint}
class EndpointProduct extends _isc.EndpointRef {
  EndpointProduct(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'product';

  /// Cria um novo produto no sistema.
  _ida.Future<_i2pthzti.Product> createProduct(_i2pthzti.Product product) =>
      caller.callServerEndpoint<_i2pthzti.Product>('product', 'createProduct', {
        'product': product,
      });

  /// Busca o detalhe de um produto por ID.
  _ida.Future<_i2pthzti.Product?> readProduct(_isc.UuidValue id) =>
      caller.callServerEndpoint<_i2pthzti.Product?>('product', 'readProduct', {
        'id': id,
      });

  /// Busca o detalhe de um produto por Código SKU.
  _ida.Future<_i2pthzti.Product?> findByCode(String code) =>
      caller.callServerEndpoint<_i2pthzti.Product?>('product', 'findByCode', {
        'code': code,
      });

  /// Atualiza os dados de um produto existente.
  _ida.Future<_i2pthzti.Product> updateProduct(_i2pthzti.Product product) =>
      caller.callServerEndpoint<_i2pthzti.Product>('product', 'updateProduct', {
        'product': product,
      });

  /// Remove um produto por ID.
  _ida.Future<bool> deleteProduct(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('product', 'deleteProduct', {'id': id});

  /// Lista produtos com filtro obrigatório por módulo de origem (ex: BACKOFFICE, COMPANY, GUNSMITH).
  _ida.Future<List<_i2pthzti.Product>> listProducts({
    required String originModule,
    _isc.UuidValue? groupId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i2pthzti.Product>>(
    'product',
    'listProducts',
    {
      'originModule': originModule,
      'groupId': groupId,
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointProductGroup extends _isc.EndpointRef {
  EndpointProductGroup(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'productGroup';

  _ida.Future<List<_io32npgw.ProductGroup>> listGroups({
    required String originModule,
    _isc.UuidValue? ownerId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_io32npgw.ProductGroup>>(
    'productGroup',
    'listGroups',
    {
      'originModule': originModule,
      'ownerId': ownerId,
      'limit': limit,
      'offset': offset,
    },
  );

  _ida.Future<_io32npgw.ProductGroup> createProductGroup(
    _io32npgw.ProductGroup group,
  ) => caller.callServerEndpoint<_io32npgw.ProductGroup>(
    'productGroup',
    'createProductGroup',
    {'group': group},
  );

  _ida.Future<_io32npgw.ProductGroup> updateProductGroup(
    _io32npgw.ProductGroup group,
  ) => caller.callServerEndpoint<_io32npgw.ProductGroup>(
    'productGroup',
    'updateProductGroup',
    {'group': group},
  );

  _ida.Future<bool> deleteProductGroup(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('productGroup', 'deleteProductGroup', {
        'id': id,
      });

  _ida.Future<_io32npgw.ProductGroup?> findById(_isc.UuidValue id) =>
      caller.callServerEndpoint<_io32npgw.ProductGroup?>(
        'productGroup',
        'findById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointProfile extends _isc.EndpointRef {
  EndpointProfile(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'profile';

  /// Garante que o perfil do usuário logado exista no domínio OneShot.
  _ida.Future<_itg25mst.UserProfile> getOrCreateMyProfile() =>
      caller.callServerEndpoint<_itg25mst.UserProfile>(
        'profile',
        'getOrCreateMyProfile',
        {},
      );

  /// Atualiza os dados do perfil (CPF, CR, etc).
  _ida.Future<_itg25mst.UserProfile> updateMyProfile(
    _itg25mst.UserProfile profile,
  ) => caller.callServerEndpoint<_itg25mst.UserProfile>(
    'profile',
    'updateMyProfile',
    {'profile': profile},
  );

  /// Busca o perfil pelo ID (para visualização de outros administradores ou clubes).
  _ida.Future<_itg25mst.UserProfile?> getProfileById(_isc.UuidValue id) =>
      caller.callServerEndpoint<_itg25mst.UserProfile?>(
        'profile',
        'getProfileById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointReload extends _isc.EndpointRef {
  EndpointReload(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'reload';

  /// Executa uma nova sessão de recarga completa com débito de insumos e entrada no estoque.
  _ida.Future<_i6yaeg3x.ReloadSession> executeReloadSession(
    _i6yaeg3x.ReloadSession reloadSession,
  ) => caller.callServerEndpoint<_i6yaeg3x.ReloadSession>(
    'reload',
    'executeReloadSession',
    {'reloadSession': reloadSession},
  );

  /// Lista sessões de recarga do usuário logado.
  _ida.Future<List<_i6yaeg3x.ReloadSession>> getMyReloadSessions() =>
      caller.callServerEndpoint<List<_i6yaeg3x.ReloadSession>>(
        'reload',
        'getMyReloadSessions',
        {},
      );

  /// Registra resultados de um teste de cronógrafo vinculado a uma sessão.
  _ida.Future<_ifmg7iki.ReloadTest> registerTest(_ifmg7iki.ReloadTest test) =>
      caller.callServerEndpoint<_ifmg7iki.ReloadTest>(
        'reload',
        'registerTest',
        {'test': test},
      );

  /// Lista testes de uma sessão específica.
  _ida.Future<List<_ifmg7iki.ReloadTest>> getTestsBySession(
    _isc.UuidValue sessionId,
  ) => caller.callServerEndpoint<List<_ifmg7iki.ReloadTest>>(
    'reload',
    'getTestsBySession',
    {'sessionId': sessionId},
  );

  /// Lista todo o estoque de insumos (Pólvora, Espoleta, Projetis etc) do usuário.
  _ida.Future<List<_i39d40wj.SupplyStock>> getMySupplies() =>
      caller.callServerEndpoint<List<_i39d40wj.SupplyStock>>(
        'reload',
        'getMySupplies',
        {},
      );

  /// Cadastra um novo insumo ao estoque.
  _ida.Future<_i39d40wj.SupplyStock> addSupply(_i39d40wj.SupplyStock supply) =>
      caller.callServerEndpoint<_i39d40wj.SupplyStock>('reload', 'addSupply', {
        'supply': supply,
      });

  /// Atualiza dados de um insumo.
  _ida.Future<_i39d40wj.SupplyStock> updateSupply(
    _i39d40wj.SupplyStock supply,
  ) => caller.callServerEndpoint<_i39d40wj.SupplyStock>(
    'reload',
    'updateSupply',
    {'supply': supply},
  );
}

/// {@category Endpoint}
class EndpointSecurityRole extends _isc.EndpointRef {
  EndpointSecurityRole(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'securityRole';

  _ida.Future<_iz410fgy.SecurityRole> createRole(
    _iz410fgy.SecurityRole role,
    List<_ih25lxcw.RolePermission> permissions,
  ) => caller.callServerEndpoint<_iz410fgy.SecurityRole>(
    'securityRole',
    'createRole',
    {'role': role, 'permissions': permissions},
  );

  _ida.Future<_iz410fgy.SecurityRole> updateRole(
    _iz410fgy.SecurityRole role,
    List<_ih25lxcw.RolePermission> permissions,
  ) => caller.callServerEndpoint<_iz410fgy.SecurityRole>(
    'securityRole',
    'updateRole',
    {'role': role, 'permissions': permissions},
  );

  _ida.Future<bool> deleteRole(_iz410fgy.SecurityRole role) => caller
      .callServerEndpoint<bool>('securityRole', 'deleteRole', {'role': role});

  _ida.Future<List<_iz410fgy.SecurityRole>> listRoles() =>
      caller.callServerEndpoint<List<_iz410fgy.SecurityRole>>(
        'securityRole',
        'listRoles',
        {},
      );

  _ida.Future<List<_ih25lxcw.RolePermission>> listRolePermissions(
    _iz410fgy.SecurityRole role,
  ) => caller.callServerEndpoint<List<_ih25lxcw.RolePermission>>(
    'securityRole',
    'listRolePermissions',
    {'role': role},
  );
}

/// {@category Endpoint}
class EndpointSubscriptionPlan extends _isc.EndpointRef {
  EndpointSubscriptionPlan(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subscriptionPlan';

  /// Cria um novo plano de assinatura.
  _ida.Future<_iq7fauej.SubscriptionPlan> createPlan(
    _iq7fauej.SubscriptionPlan plan,
  ) => caller.callServerEndpoint<_iq7fauej.SubscriptionPlan>(
    'subscriptionPlan',
    'createPlan',
    {'plan': plan},
  );

  /// Busca um plano de assinatura por ID.
  _ida.Future<_iq7fauej.SubscriptionPlan?> readPlan(_isc.UuidValue id) =>
      caller.callServerEndpoint<_iq7fauej.SubscriptionPlan?>(
        'subscriptionPlan',
        'readPlan',
        {'id': id},
      );

  /// Atualiza um plano de assinatura existente.
  _ida.Future<_iq7fauej.SubscriptionPlan> updatePlan(
    _iq7fauej.SubscriptionPlan plan,
  ) => caller.callServerEndpoint<_iq7fauej.SubscriptionPlan>(
    'subscriptionPlan',
    'updatePlan',
    {'plan': plan},
  );

  /// Remove um plano de assinatura por ID.
  _ida.Future<bool> deletePlan(_isc.UuidValue id) => caller
      .callServerEndpoint<bool>('subscriptionPlan', 'deletePlan', {'id': id});

  /// Lista planos de assinatura com filtros opcionais.
  _ida.Future<List<_iq7fauej.SubscriptionPlan>> listPlans({
    _iwkfgxhm.PlanType? planType,
    _ixcrk2vr.PlanStatus? status,
    _isc.UuidValue? companyId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_iq7fauej.SubscriptionPlan>>(
    'subscriptionPlan',
    'listPlans',
    {
      'planType': planType,
      'status': status,
      'companyId': companyId,
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointTraining extends _isc.EndpointRef {
  EndpointTraining(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'training';

  /// Registro de um novo treino.
  /// O userId será validado dentro do caso de uso.
  _ida.Future<_iisju3we.Training> register(_iisju3we.Training training) =>
      caller.callServerEndpoint<_iisju3we.Training>('training', 'register', {
        'training': training,
      });

  /// Lista todos os treinos do usuário logado.
  _ida.Future<List<_iisju3we.Training>> getMyTrainings() =>
      caller.callServerEndpoint<List<_iisju3we.Training>>(
        'training',
        'getMyTrainings',
        {},
      );

  /// Busca um treino específico.
  _ida.Future<_iisju3we.Training?> getTraining(_isc.UuidValue id) =>
      caller.callServerEndpoint<_iisju3we.Training?>(
        'training',
        'getTraining',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointUser extends _isc.EndpointRef {
  EndpointUser(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _ida.Future<_itg25mst.UserProfile?> getById(_isc.UuidValue id) =>
      caller.callServerEndpoint<_itg25mst.UserProfile?>('user', 'getById', {
        'id': id,
      });

  _ida.Future<_itg25mst.UserProfile?> getByCpf(String cpf) =>
      caller.callServerEndpoint<_itg25mst.UserProfile?>('user', 'getByCpf', {
        'cpf': cpf,
      });

  _ida.Future<_itg25mst.UserProfile> create(_itg25mst.UserProfile user) =>
      caller.callServerEndpoint<_itg25mst.UserProfile>('user', 'create', {
        'user': user,
      });

  _ida.Future<_itg25mst.UserProfile> update(_itg25mst.UserProfile user) =>
      caller.callServerEndpoint<_itg25mst.UserProfile>('user', 'update', {
        'user': user,
      });

  _ida.Future<bool> delete(_isc.UuidValue id) =>
      caller.callServerEndpoint<bool>('user', 'delete', {'id': id});

  _ida.Future<List<_itg25mst.UserProfile>> list({int? limit, int? offset}) =>
      caller.callServerEndpoint<List<_itg25mst.UserProfile>>('user', 'list', {
        'limit': limit,
        'offset': offset,
      });

  _ida.Future<List<_itg25mst.UserProfile>> search(String query) =>
      caller.callServerEndpoint<List<_itg25mst.UserProfile>>('user', 'search', {
        'query': query,
      });

  _ida.Future<List<_iz410fgy.SecurityRole>> getRoles(_isc.UuidValue userId) =>
      caller.callServerEndpoint<List<_iz410fgy.SecurityRole>>(
        'user',
        'getRoles',
        {'userId': userId},
      );

  _ida.Future<void> updateRoles(
    _isc.UuidValue userId,
    List<_isc.UuidValue> roleIds,
  ) => caller.callServerEndpoint<void>('user', 'updateRoles', {
    'userId': userId,
    'roleIds': roleIds,
  });

  /// Retorna as empresas as quais o usuário logado tem acesso.
  /// Implementa lógica de auto-admin para proprietários.
  _ida.Future<List<_i3sd1a32.Company>> getMyCompanies() =>
      caller.callServerEndpoint<List<_i3sd1a32.Company>>(
        'user',
        'getMyCompanies',
        {},
      );
}

/// {@category Endpoint}
class EndpointViaCepGateway extends _isc.EndpointRef {
  EndpointViaCepGateway(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'viaCepGateway';

  _ida.Future<_isei4bbw.Address?> getAddressByCep(String zipcode) =>
      caller.callServerEndpoint<_isei4bbw.Address?>(
        'viaCepGateway',
        'getAddressByCep',
        {'zipcode': zipcode},
      );
}

/// {@category Endpoint}
class EndpointAsaasAccount extends _isc.EndpointRef {
  EndpointAsaasAccount(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasAccount';

  _ida.Future<Map<String, dynamic>> createSubaccount(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasAccount',
    'createSubaccount',
    {'requestData': requestData},
  );

  _ida.Future<List<Map<String, dynamic>>> listSubaccounts({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasAccount',
    'listSubaccounts',
    {'limit': limit, 'offset': offset},
  );

  _ida.Future<Map<String, dynamic>> getAccountNumber() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasAccount',
        'getAccountNumber',
        {},
      );

  _ida.Future<Map<String, dynamic>> getAccountStatus() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasAccount',
        'getAccountStatus',
        {},
      );
}

/// {@category Endpoint}
class EndpointAsaasCustomer extends _isc.EndpointRef {
  EndpointAsaasCustomer(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasCustomer';

  _ida.Future<Map<String, dynamic>> createCustomer(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'createCustomer',
    {'requestData': requestData},
  );

  _ida.Future<Map<String, dynamic>> listCustomers({
    int? limit,
    int? offset,
    String? name,
    String? cpfCnpj,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'listCustomers',
    {'limit': limit, 'offset': offset, 'name': name, 'cpfCnpj': cpfCnpj},
  );

  _ida.Future<Map<String, dynamic>> getCustomer(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'getCustomer',
        {'id': id},
      );

  _ida.Future<Map<String, dynamic>> updateCustomer(
    String id,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'updateCustomer',
    {'id': id, 'requestData': requestData},
  );

  _ida.Future<void> deleteCustomer(String id) => caller
      .callServerEndpoint<void>('asaasCustomer', 'deleteCustomer', {'id': id});

  _ida.Future<Map<String, dynamic>> restoreCustomer(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'restoreCustomer',
        {'id': id},
      );

  _ida.Future<Map<String, dynamic>> getCustomerNotifications(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'getCustomerNotifications',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointAsaasInstallment extends _isc.EndpointRef {
  EndpointAsaasInstallment(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasInstallment';

  _ida.Future<Map<String, dynamic>> createInstallment(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasInstallment',
    'createInstallment',
    {'requestData': requestData},
  );

  _ida.Future<List<Map<String, dynamic>>> listInstallments({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasInstallment',
    'listInstallments',
    {'limit': limit, 'offset': offset},
  );

  _ida.Future<Map<String, dynamic>> getInstallment(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasInstallment',
        'getInstallment',
        {'id': id},
      );

  _ida.Future<void> deleteInstallment(String id) =>
      caller.callServerEndpoint<void>('asaasInstallment', 'deleteInstallment', {
        'id': id,
      });

  _ida.Future<List<Map<String, dynamic>>> listInstallmentPayments(String id) =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasInstallment',
        'listInstallmentPayments',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointAsaasPayment extends _isc.EndpointRef {
  EndpointAsaasPayment(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasPayment';

  _ida.Future<Map<String, dynamic>> createPayment(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPayment',
    'createPayment',
    {'requestData': requestData},
  );

  _ida.Future<List<Map<String, dynamic>>> listPayments({
    String? customer,
    String? status,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasPayment',
    'listPayments',
    {'customer': customer, 'status': status, 'limit': limit, 'offset': offset},
  );

  _ida.Future<Map<String, dynamic>> captureAuthorizedPayment(
    String paymentId,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPayment',
    'captureAuthorizedPayment',
    {'paymentId': paymentId},
  );

  _ida.Future<Map<String, dynamic>> payWithCreditCard(
    String paymentId,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPayment',
    'payWithCreditCard',
    {'paymentId': paymentId, 'requestData': requestData},
  );

  _ida.Future<Map<String, dynamic>> getBillingInfo(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'getBillingInfo',
        {'paymentId': paymentId},
      );

  _ida.Future<String> getPaymentStatus(String paymentId) =>
      caller.callServerEndpoint<String>('asaasPayment', 'getPaymentStatus', {
        'paymentId': paymentId,
      });

  _ida.Future<Map<String, dynamic>> refundPayment(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'refundPayment',
        {'paymentId': paymentId},
      );

  _ida.Future<Map<String, dynamic>> getPixQrCode(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'getPixQrCode',
        {'paymentId': paymentId},
      );
}

/// {@category Endpoint}
class EndpointAsaasPix extends _isc.EndpointRef {
  EndpointAsaasPix(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasPix';

  _ida.Future<Map<String, dynamic>> createKey(String type) =>
      caller.callServerEndpoint<Map<String, dynamic>>('asaasPix', 'createKey', {
        'type': type,
      });

  _ida.Future<List<Map<String, dynamic>>> listKeys() =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasPix',
        'listKeys',
        {},
      );

  _ida.Future<Map<String, dynamic>> createStaticQrCode(
    Map<String, dynamic> request,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPix',
    'createStaticQrCode',
    {'request': request},
  );

  _ida.Future<Map<String, dynamic>> payQrCode(Map<String, dynamic> request) =>
      caller.callServerEndpoint<Map<String, dynamic>>('asaasPix', 'payQrCode', {
        'request': request,
      });

  _ida.Future<List<Map<String, dynamic>>> listTransactions({
    int? limit,
    int? offset,
    String? startDate,
    String? endDate,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasPix',
    'listTransactions',
    {
      'limit': limit,
      'offset': offset,
      'startDate': startDate,
      'endDate': endDate,
    },
  );
}

/// {@category Endpoint}
class EndpointAsaasTransfer extends _isc.EndpointRef {
  EndpointAsaasTransfer(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasTransfer';

  _ida.Future<Map<String, dynamic>> createTransfer(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasTransfer',
    'createTransfer',
    {'requestData': requestData},
  );

  _ida.Future<List<Map<String, dynamic>>> listTransfers({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasTransfer',
    'listTransfers',
    {'limit': limit, 'offset': offset},
  );

  _ida.Future<List<Map<String, dynamic>>> getExtract({
    String? startDate,
    String? endDate,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasTransfer',
    'getExtract',
    {
      'startDate': startDate,
      'endDate': endDate,
      'limit': limit,
      'offset': offset,
    },
  );

  _ida.Future<Map<String, dynamic>> getBalance() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasTransfer',
        'getBalance',
        {},
      );
}

/// {@category Endpoint}
class EndpointAsaasWebhookConfig extends _isc.EndpointRef {
  EndpointAsaasWebhookConfig(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasWebhookConfig';

  _ida.Future<Map<String, dynamic>> createWebhook(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasWebhookConfig',
    'createWebhook',
    {'requestData': requestData},
  );

  _ida.Future<List<Map<String, dynamic>>> listWebhooks() =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasWebhookConfig',
        'listWebhooks',
        {},
      );

  _ida.Future<Map<String, dynamic>> updateWebhook(
    String id,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasWebhookConfig',
    'updateWebhook',
    {'id': id, 'requestData': requestData},
  );

  _ida.Future<void> deleteWebhook(String id) => caller.callServerEndpoint<void>(
    'asaasWebhookConfig',
    'deleteWebhook',
    {'id': id},
  );
}

/// Endpoint público que recebe notificações de eventos enviados pelo Asaas via webhook.
/// A URL deste endpoint deve ser configurada no painel do Asaas como URL de webhook.
/// Não requer autenticação de usuário Serverpod (server-to-server).
/// {@category Endpoint}
class EndpointAsaasWebhookReceiver extends _isc.EndpointRef {
  EndpointAsaasWebhookReceiver(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasWebhookReceiver';

  /// Recebe e processa um evento de webhook enviado pelo Asaas.
  _ida.Future<void> handleEvent(Map<String, dynamic> payload) =>
      caller.callServerEndpoint<void>('asaasWebhookReceiver', 'handleEvent', {
        'payload': payload,
      });
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _isc.EndpointRef {
  EndpointGreeting(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _ida.Future<_igq4abt2.Greeting> hello(String name) =>
      caller.callServerEndpoint<_igq4abt2.Greeting>('greeting', 'hello', {
        'name': name,
      });
}

class Modules {
  Modules(Client client) {
    auth = _i312scxx.Caller(client);
  }

  late final _i312scxx.Caller auth;
}

class Client extends _isc.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(_isc.MethodCallContext, Object, StackTrace)? onFailedCall,
    Function(_isc.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
    _i85jenna.Client? httpClientOverride,
  }) : super(
         host,
         _il2as5qe.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
         httpClientOverride: httpClientOverride,
       ) {
    accessory = EndpointAccessory(this);
    ammunition = EndpointAmmunition(this);
    bankAccount = EndpointBankAccount(this);
    brasilApiGateway = EndpointBrasilApiGateway(this);
    company = EndpointCompany(this);
    document = EndpointDocument(this);
    financialEntry = EndpointFinancialEntry(this);
    firearm = EndpointFirearm(this);
    gunsmith = EndpointGunsmith(this);
    invoice = EndpointInvoice(this);
    payment = EndpointPayment(this);
    product = EndpointProduct(this);
    productGroup = EndpointProductGroup(this);
    profile = EndpointProfile(this);
    reload = EndpointReload(this);
    securityRole = EndpointSecurityRole(this);
    subscriptionPlan = EndpointSubscriptionPlan(this);
    training = EndpointTraining(this);
    user = EndpointUser(this);
    viaCepGateway = EndpointViaCepGateway(this);
    asaasAccount = EndpointAsaasAccount(this);
    asaasCustomer = EndpointAsaasCustomer(this);
    asaasInstallment = EndpointAsaasInstallment(this);
    asaasPayment = EndpointAsaasPayment(this);
    asaasPix = EndpointAsaasPix(this);
    asaasTransfer = EndpointAsaasTransfer(this);
    asaasWebhookConfig = EndpointAsaasWebhookConfig(this);
    asaasWebhookReceiver = EndpointAsaasWebhookReceiver(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointAccessory accessory;

  late final EndpointAmmunition ammunition;

  late final EndpointBankAccount bankAccount;

  late final EndpointBrasilApiGateway brasilApiGateway;

  late final EndpointCompany company;

  late final EndpointDocument document;

  late final EndpointFinancialEntry financialEntry;

  late final EndpointFirearm firearm;

  late final EndpointGunsmith gunsmith;

  late final EndpointInvoice invoice;

  late final EndpointPayment payment;

  late final EndpointProduct product;

  late final EndpointProductGroup productGroup;

  late final EndpointProfile profile;

  late final EndpointReload reload;

  late final EndpointSecurityRole securityRole;

  late final EndpointSubscriptionPlan subscriptionPlan;

  late final EndpointTraining training;

  late final EndpointUser user;

  late final EndpointViaCepGateway viaCepGateway;

  late final EndpointAsaasAccount asaasAccount;

  late final EndpointAsaasCustomer asaasCustomer;

  late final EndpointAsaasInstallment asaasInstallment;

  late final EndpointAsaasPayment asaasPayment;

  late final EndpointAsaasPix asaasPix;

  late final EndpointAsaasTransfer asaasTransfer;

  late final EndpointAsaasWebhookConfig asaasWebhookConfig;

  late final EndpointAsaasWebhookReceiver asaasWebhookReceiver;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {
    'accessory': accessory,
    'ammunition': ammunition,
    'bankAccount': bankAccount,
    'brasilApiGateway': brasilApiGateway,
    'company': company,
    'document': document,
    'financialEntry': financialEntry,
    'firearm': firearm,
    'gunsmith': gunsmith,
    'invoice': invoice,
    'payment': payment,
    'product': product,
    'productGroup': productGroup,
    'profile': profile,
    'reload': reload,
    'securityRole': securityRole,
    'subscriptionPlan': subscriptionPlan,
    'training': training,
    'user': user,
    'viaCepGateway': viaCepGateway,
    'asaasAccount': asaasAccount,
    'asaasCustomer': asaasCustomer,
    'asaasInstallment': asaasInstallment,
    'asaasPayment': asaasPayment,
    'asaasPix': asaasPix,
    'asaasTransfer': asaasTransfer,
    'asaasWebhookConfig': asaasWebhookConfig,
    'asaasWebhookReceiver': asaasWebhookReceiver,
    'greeting': greeting,
  };

  @override
  Map<String, _isc.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
