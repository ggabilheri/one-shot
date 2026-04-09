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
import 'package:oneshot_client/src/protocol/common/accessory.dart' as _i3;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _i4;
import 'package:oneshot_client/src/protocol/finance/bank_account.dart' as _i5;
import 'package:oneshot_client/src/protocol/company/company.dart' as _i6;
import 'package:oneshot_client/src/protocol/common/address.dart' as _i7;
import 'package:oneshot_client/src/protocol/finance/bank.dart' as _i8;
import 'package:oneshot_client/src/protocol/company/membership.dart' as _i9;
import 'package:oneshot_client/src/protocol/company/range_visit.dart' as _i10;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i11;
import 'package:oneshot_client/src/protocol/finance/financial_entry.dart'
    as _i12;
import 'package:oneshot_client/src/protocol/enums/platform_app.enum.dart'
    as _i13;
import 'package:oneshot_client/src/protocol/enums/financial_entry_type.dart'
    as _i14;
import 'package:oneshot_client/src/protocol/enums/financial_entry_status.dart'
    as _i15;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i16;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart' as _i17;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i18;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _i19;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i20;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _i21;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart' as _i22;
import 'package:oneshot_client/src/protocol/enums/invoice_status.enum.dart'
    as _i23;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _i24;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i25;
import 'package:oneshot_client/src/protocol/product/product_group.dart' as _i26;
import 'package:oneshot_client/src/protocol/common/user_profile.dart' as _i27;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i28;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i29;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i30;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _i31;
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _i32;
import 'package:oneshot_client/src/protocol/subscription/subscription_plan.dart'
    as _i33;
import 'package:oneshot_client/src/protocol/enums/plan_type.enum.dart' as _i34;
import 'package:oneshot_client/src/protocol/enums/plan_status.enum.dart'
    as _i35;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i36;
import 'package:oneshot_client/src/protocol/greeting.dart' as _i37;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i38;
import 'protocol.dart' as _i39;

/// {@category Endpoint}
class EndpointAccessory extends _i1.EndpointRef {
  EndpointAccessory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'accessory';

  _i2.Future<_i3.Accessory?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i3.Accessory?>(
        'accessory',
        'getById',
        {'id': id},
      );

  _i2.Future<_i3.Accessory> create(_i3.Accessory accessory) =>
      caller.callServerEndpoint<_i3.Accessory>(
        'accessory',
        'create',
        {'accessory': accessory},
      );

  _i2.Future<_i3.Accessory> update(_i3.Accessory accessory) =>
      caller.callServerEndpoint<_i3.Accessory>(
        'accessory',
        'update',
        {'accessory': accessory},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'accessory',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i3.Accessory>> listByUser(
    _i1.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i3.Accessory>>(
    'accessory',
    'listByUser',
    {
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointAmmunition extends _i1.EndpointRef {
  EndpointAmmunition(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ammunition';

  /// Lista todo o estoque de munições prontas do usuário logado.
  _i2.Future<List<_i4.AmmunitionStock>> getMyAmmunition() =>
      caller.callServerEndpoint<List<_i4.AmmunitionStock>>(
        'ammunition',
        'getMyAmmunition',
        {},
      );

  /// Adiciona uma nova munição ao estoque (ex: compra).
  _i2.Future<_i4.AmmunitionStock> addAmmunition(_i4.AmmunitionStock ammo) =>
      caller.callServerEndpoint<_i4.AmmunitionStock>(
        'ammunition',
        'addAmmunition',
        {'ammo': ammo},
      );

  /// Ajusta a quantidade manualmente.
  _i2.Future<_i4.AmmunitionStock?> adjustQuantity(
    _i1.UuidValue id,
    int change,
  ) => caller.callServerEndpoint<_i4.AmmunitionStock?>(
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
class EndpointBankAccount extends _i1.EndpointRef {
  EndpointBankAccount(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'bankAccount';

  /// Cria uma nova conta bancária.
  _i2.Future<_i5.BankAccount> createAccount(_i5.BankAccount account) =>
      caller.callServerEndpoint<_i5.BankAccount>(
        'bankAccount',
        'createAccount',
        {'account': account},
      );

  /// Busca uma conta bancária pelo ID.
  _i2.Future<_i5.BankAccount?> readAccount(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i5.BankAccount?>(
        'bankAccount',
        'readAccount',
        {'id': id},
      );

  /// Atualiza os dados de uma conta bancária.
  _i2.Future<_i5.BankAccount> updateAccount(_i5.BankAccount account) =>
      caller.callServerEndpoint<_i5.BankAccount>(
        'bankAccount',
        'updateAccount',
        {'account': account},
      );

  /// Remove uma conta bancária pelo ID.
  _i2.Future<bool> deleteAccount(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'bankAccount',
        'deleteAccount',
        {'id': id},
      );

  /// Lista contas bancárias filtrando obrigatoriamente pelo [originModule].
  /// Opcionalmente filtra por [status] (ACTIVE / INACTIVE).
  _i2.Future<List<_i5.BankAccount>> listAccounts({
    required String originModule,
    String? status,
    _i1.UuidValue? companyId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i5.BankAccount>>(
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
class EndpointBrasilApiGateway extends _i1.EndpointRef {
  EndpointBrasilApiGateway(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'brasilApiGateway';

  _i2.Future<_i6.Company?> getCompanyInfo(String cnpj) =>
      caller.callServerEndpoint<_i6.Company?>(
        'brasilApiGateway',
        'getCompanyInfo',
        {'cnpj': cnpj},
      );

  _i2.Future<_i7.Address?> getAddressByCep(String zipcode) =>
      caller.callServerEndpoint<_i7.Address?>(
        'brasilApiGateway',
        'getAddressByCep',
        {'zipcode': zipcode},
      );

  _i2.Future<List<_i8.Bank>> getBanks() =>
      caller.callServerEndpoint<List<_i8.Bank>>(
        'brasilApiGateway',
        'getBanks',
        {},
      );
}

/// {@category Endpoint}
class EndpointCompany extends _i1.EndpointRef {
  EndpointCompany(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  /// Cria uma nova empresa no sistema e uma subconta Asaas correspondente.
  /// A criação é bloqueante: se a subconta Asaas falhar, a empresa não é criada.
  _i2.Future<_i6.Company> createCompany(_i6.Company company) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'createCompany',
        {'company': company},
      );

  /// Lista todas as empresas ativas.
  _i2.Future<List<_i6.Company>> listCompanies() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'company',
        'listCompanies',
        {},
      );

  /// Atualiza uma empresa existente.
  _i2.Future<_i6.Company> updateCompany(_i6.Company company) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'updateCompany',
        {'company': company},
      );

  /// Exclui uma empresa (Soft Delete) definindo active = false.
  _i2.Future<_i6.Company> deleteCompany(_i1.UuidValue companyId) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'deleteCompany',
        {'companyId': companyId},
      );

  /// Solicita filiação a uma empresa (Clube).
  _i2.Future<_i9.Membership> requestMembership(_i1.UuidValue companyId) =>
      caller.callServerEndpoint<_i9.Membership>(
        'company',
        'requestMembership',
        {'companyId': companyId},
      );

  /// Lista minhas filiações.
  _i2.Future<List<_i9.Membership>> getMyMemberships() =>
      caller.callServerEndpoint<List<_i9.Membership>>(
        'company',
        'getMyMemberships',
        {},
      );

  /// Registra entrada no estande (Check-in).
  _i2.Future<_i10.RangeVisit> checkIn(
    _i1.UuidValue companyId,
    _i1.UuidValue? firearmId,
  ) => caller.callServerEndpoint<_i10.RangeVisit>(
    'company',
    'checkIn',
    {
      'companyId': companyId,
      'firearmId': firearmId,
    },
  );

  /// Registra saída do estande (Check-out).
  _i2.Future<_i10.RangeVisit> checkOut(
    _i1.UuidValue visitId,
    int shotsFired,
  ) => caller.callServerEndpoint<_i10.RangeVisit>(
    'company',
    'checkOut',
    {
      'visitId': visitId,
      'shotsFired': shotsFired,
    },
  );

  /// Lista minhas visitas.
  _i2.Future<List<_i10.RangeVisit>> getMyVisits() =>
      caller.callServerEndpoint<List<_i10.RangeVisit>>(
        'company',
        'getMyVisits',
        {},
      );

  /// Obtém a empresa gerenciada pelo usuário logado (Dono do Clube).
  _i2.Future<_i6.Company> getManagedCompany() =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'getManagedCompany',
        {},
      );
}

/// {@category Endpoint}
class EndpointDocument extends _i1.EndpointRef {
  EndpointDocument(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'document';

  _i2.Future<_i11.Document?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i11.Document?>(
        'document',
        'getById',
        {'id': id},
      );

  _i2.Future<_i11.Document> create(_i11.Document document) =>
      caller.callServerEndpoint<_i11.Document>(
        'document',
        'create',
        {'document': document},
      );

  _i2.Future<_i11.Document> update(_i11.Document document) =>
      caller.callServerEndpoint<_i11.Document>(
        'document',
        'update',
        {'document': document},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'document',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i11.Document>> listByUser(
    _i1.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i11.Document>>(
    'document',
    'listByUser',
    {
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<List<_i11.Document>> listByFirearm(_i1.UuidValue firearmId) =>
      caller.callServerEndpoint<List<_i11.Document>>(
        'document',
        'listByFirearm',
        {'firearmId': firearmId},
      );

  _i2.Future<List<_i11.Document>> listByAccessory(_i1.UuidValue accessoryId) =>
      caller.callServerEndpoint<List<_i11.Document>>(
        'document',
        'listByAccessory',
        {'accessoryId': accessoryId},
      );

  /// Gera uma descrição de upload para o arquivo.
  _i2.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>(
        'document',
        'getUploadDescription',
        {'path': path},
      );

  /// Verifica se o upload ocorreu e retorna a URL pública.
  _i2.Future<String?> verifyUpload(String path) =>
      caller.callServerEndpoint<String?>(
        'document',
        'verifyUpload',
        {'path': path},
      );
}

/// {@category Endpoint}
class EndpointFinancialEntry extends _i1.EndpointRef {
  EndpointFinancialEntry(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'financialEntry';

  /// Cria um novo lançamento financeiro (A Pagar ou A Receber).
  _i2.Future<_i12.FinancialEntry> createEntry(_i12.FinancialEntry entry) =>
      caller.callServerEndpoint<_i12.FinancialEntry>(
        'financialEntry',
        'createEntry',
        {'entry': entry},
      );

  /// Busca um lançamento financeiro pelo ID.
  /// Retorna o lançamento com a [BankAccount] e [Invoice] vinculados (via include).
  _i2.Future<_i12.FinancialEntry?> readEntry(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i12.FinancialEntry?>(
        'financialEntry',
        'readEntry',
        {'id': id},
      );

  /// Atualiza um lançamento financeiro existente.
  _i2.Future<_i12.FinancialEntry> updateEntry(_i12.FinancialEntry entry) =>
      caller.callServerEndpoint<_i12.FinancialEntry>(
        'financialEntry',
        'updateEntry',
        {'entry': entry},
      );

  /// Remove um lançamento financeiro pelo ID.
  _i2.Future<bool> deleteEntry(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'financialEntry',
        'deleteEntry',
        {'id': id},
      );

  /// Lista lançamentos financeiros com filtros dinâmicos.
  ///
  /// - [originModule]: Filtro **obrigatório**. Isola os dados por módulo (BACKOFFICE, COMPANY, GUNSMITH).
  /// - [type]: Filtro opcional por tipo (`payable` = A Pagar, `receivable` = A Receber).
  /// - [status]: Filtro opcional por status (`pending`, `paid`, `overdue`, etc.).
  /// - [dueDateFrom] e [dueDateTo]: Intervalo opcional de datas de vencimento.
  _i2.Future<List<_i12.FinancialEntry>> listEntries({
    required _i13.PlatformApp originModule,
    DateTime? dueDateTo,
    _i1.UuidValue? companyId,
    int? limit,
    int? offset,
    _i14.FinancialEntryType? type,
    _i15.FinancialEntryStatus? status,
    DateTime? dueDateFrom,
  }) => caller.callServerEndpoint<List<_i12.FinancialEntry>>(
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
class EndpointFirearm extends _i1.EndpointRef {
  EndpointFirearm(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'firearm';

  _i2.Future<_i16.Firearm?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i16.Firearm?>(
        'firearm',
        'getById',
        {'id': id},
      );

  _i2.Future<_i16.Firearm?> getBySerialNumber(String serialNumber) =>
      caller.callServerEndpoint<_i16.Firearm?>(
        'firearm',
        'getBySerialNumber',
        {'serialNumber': serialNumber},
      );

  _i2.Future<_i16.Firearm> create(_i16.Firearm firearm) =>
      caller.callServerEndpoint<_i16.Firearm>(
        'firearm',
        'create',
        {'firearm': firearm},
      );

  _i2.Future<_i16.Firearm> update(_i16.Firearm firearm) =>
      caller.callServerEndpoint<_i16.Firearm>(
        'firearm',
        'update',
        {'firearm': firearm},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'firearm',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i16.Firearm>> listByUser(
    _i1.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i16.Firearm>>(
    'firearm',
    'listByUser',
    {
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointGunsmith extends _i1.EndpointRef {
  EndpointGunsmith(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gunsmith';

  /// Registra uma nova armaria no sistema e cria uma subconta Asaas para ela.
  /// A criação é bloqueante: se a subconta Asaas falhar, a armaria não é criada.
  _i2.Future<_i17.Gunsmith> createGunsmith(_i17.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i17.Gunsmith>(
        'gunsmith',
        'createGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Busca os detalhes de uma armaria pelo ID.
  _i2.Future<_i17.Gunsmith?> getGunsmith(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i17.Gunsmith?>(
        'gunsmith',
        'getGunsmith',
        {'id': id},
      );

  /// Busca a armaria de um proprietário específico.
  _i2.Future<_i17.Gunsmith?> findGunsmithByOwner(_i1.UuidValue ownerId) =>
      caller.callServerEndpoint<_i17.Gunsmith?>(
        'gunsmith',
        'findGunsmithByOwner',
        {'ownerId': ownerId},
      );

  /// Lista todas as armarias cadastradas.
  _i2.Future<List<_i17.Gunsmith>> listGunsmiths({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i17.Gunsmith>>(
    'gunsmith',
    'listGunsmiths',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  /// Atualiza os dados de uma armaria.
  _i2.Future<_i17.Gunsmith> updateGunsmith(_i17.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i17.Gunsmith>(
        'gunsmith',
        'updateGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Cria um novo cliente para o armeiro logado.
  _i2.Future<_i18.GunsmithClient> createClient(_i18.GunsmithClient client) =>
      caller.callServerEndpoint<_i18.GunsmithClient>(
        'gunsmith',
        'createClient',
        {'client': client},
      );

  /// Busca um cliente pelo CPF.
  _i2.Future<_i18.GunsmithClient?> findClientByCpf(String cpf) =>
      caller.callServerEndpoint<_i18.GunsmithClient?>(
        'gunsmith',
        'findClientByCpf',
        {'cpf': cpf},
      );

  /// Lista todos os clientes de um armeiro específico.
  _i2.Future<List<_i18.GunsmithClient>> getMyClients() =>
      caller.callServerEndpoint<List<_i18.GunsmithClient>>(
        'gunsmith',
        'getMyClients',
        {},
      );

  /// Registra uma nova Ordem de Serviço com seus itens.
  _i2.Future<_i19.ServiceOrder> registerServiceOrder(
    _i19.ServiceOrder order,
    List<_i20.ServiceOrderItem> items,
  ) => caller.callServerEndpoint<_i19.ServiceOrder>(
    'gunsmith',
    'registerServiceOrder',
    {
      'order': order,
      'items': items,
    },
  );

  /// Lista as ordens de serviço de um cliente.
  _i2.Future<List<_i19.ServiceOrder>> getOrdersByClient(
    _i1.UuidValue clientId,
  ) => caller.callServerEndpoint<List<_i19.ServiceOrder>>(
    'gunsmith',
    'getOrdersByClient',
    {'clientId': clientId},
  );

  /// Busca os itens de uma ordem específica.
  _i2.Future<List<_i20.ServiceOrderItem>> getOrderItems(
    _i1.UuidValue serviceOrderId,
  ) => caller.callServerEndpoint<List<_i20.ServiceOrderItem>>(
    'gunsmith',
    'getOrderItems',
    {'serviceOrderId': serviceOrderId},
  );
}

/// {@category Endpoint}
class EndpointInvoice extends _i1.EndpointRef {
  EndpointInvoice(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'invoice';

  /// Cria uma nova fatura com seus itens.
  _i2.Future<_i21.Invoice> createInvoice(
    _i21.Invoice invoice,
    List<_i22.InvoiceItem> items,
  ) => caller.callServerEndpoint<_i21.Invoice>(
    'invoice',
    'createInvoice',
    {
      'invoice': invoice,
      'items': items,
    },
  );

  /// Busca uma fatura detalhada pelo ID.
  _i2.Future<_i21.Invoice?> getInvoice(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i21.Invoice?>(
        'invoice',
        'getInvoice',
        {'id': id},
      );

  /// Lista faturas com filtros dinâmicos.
  _i2.Future<List<_i21.Invoice>> listInvoices({
    String? originModule,
    String? direction,
    _i23.InvoiceStatus? status,
    _i1.UuidValue? companyId,
    _i1.UuidValue? gunsmithId,
    _i1.UuidValue? userId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i21.Invoice>>(
    'invoice',
    'listInvoices',
    {
      'originModule': originModule,
      'direction': direction,
      'status': status,
      'companyId': companyId,
      'gunsmithId': gunsmithId,
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );

  /// Atualiza uma fatura.
  _i2.Future<_i21.Invoice> updateInvoice(_i21.Invoice invoice) =>
      caller.callServerEndpoint<_i21.Invoice>(
        'invoice',
        'updateInvoice',
        {'invoice': invoice},
      );

  /// Remove uma fatura.
  _i2.Future<bool> deleteInvoice(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'invoice',
        'deleteInvoice',
        {'id': id},
      );

  /// Busca itens de uma fatura.
  _i2.Future<List<_i22.InvoiceItem>> getInvoiceItems(_i1.UuidValue invoiceId) =>
      caller.callServerEndpoint<List<_i22.InvoiceItem>>(
        'invoice',
        'getInvoiceItems',
        {'invoiceId': invoiceId},
      );
}

/// {@category Endpoint}
class EndpointPayment extends _i1.EndpointRef {
  EndpointPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  /// Registra um novo pagamento vinculado a uma fatura.
  _i2.Future<_i24.Payment> registerPayment(_i24.Payment payment) =>
      caller.callServerEndpoint<_i24.Payment>(
        'payment',
        'registerPayment',
        {'payment': payment},
      );

  /// Lista pagamentos de uma fatura específica.
  _i2.Future<List<_i24.Payment>> getPaymentsByInvoice(
    _i1.UuidValue invoiceId,
  ) => caller.callServerEndpoint<List<_i24.Payment>>(
    'payment',
    'getPaymentsByInvoice',
    {'invoiceId': invoiceId},
  );

  /// Lista todos os pagamentos (Geral ou por período).
  _i2.Future<List<_i24.Payment>> listPayments({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i24.Payment>>(
    'payment',
    'listPayments',
    {
      'limit': limit,
      'offset': offset,
    },
  );
}

/// {@category Endpoint}
class EndpointProduct extends _i1.EndpointRef {
  EndpointProduct(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'product';

  /// Cria um novo produto no sistema.
  _i2.Future<_i25.Product> createProduct(_i25.Product product) =>
      caller.callServerEndpoint<_i25.Product>(
        'product',
        'createProduct',
        {'product': product},
      );

  /// Busca o detalhe de um produto por ID.
  _i2.Future<_i25.Product?> readProduct(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i25.Product?>(
        'product',
        'readProduct',
        {'id': id},
      );

  /// Busca o detalhe de um produto por Código SKU.
  _i2.Future<_i25.Product?> findByCode(String code) =>
      caller.callServerEndpoint<_i25.Product?>(
        'product',
        'findByCode',
        {'code': code},
      );

  /// Atualiza os dados de um produto existente.
  _i2.Future<_i25.Product> updateProduct(_i25.Product product) =>
      caller.callServerEndpoint<_i25.Product>(
        'product',
        'updateProduct',
        {'product': product},
      );

  /// Remove um produto por ID.
  _i2.Future<bool> deleteProduct(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'product',
        'deleteProduct',
        {'id': id},
      );

  /// Lista produtos com filtro obrigatório por módulo de origem (ex: BACKOFFICE, COMPANY, GUNSMITH).
  _i2.Future<List<_i25.Product>> listProducts({
    required String originModule,
    _i1.UuidValue? groupId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i25.Product>>(
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
class EndpointProductGroup extends _i1.EndpointRef {
  EndpointProductGroup(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'productGroup';

  _i2.Future<List<_i26.ProductGroup>> listGroups({
    required String originModule,
    _i1.UuidValue? ownerId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i26.ProductGroup>>(
    'productGroup',
    'listGroups',
    {
      'originModule': originModule,
      'ownerId': ownerId,
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<_i26.ProductGroup> createProductGroup(_i26.ProductGroup group) =>
      caller.callServerEndpoint<_i26.ProductGroup>(
        'productGroup',
        'createProductGroup',
        {'group': group},
      );

  _i2.Future<_i26.ProductGroup> updateProductGroup(_i26.ProductGroup group) =>
      caller.callServerEndpoint<_i26.ProductGroup>(
        'productGroup',
        'updateProductGroup',
        {'group': group},
      );

  _i2.Future<bool> deleteProductGroup(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'productGroup',
        'deleteProductGroup',
        {'id': id},
      );

  _i2.Future<_i26.ProductGroup?> findById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i26.ProductGroup?>(
        'productGroup',
        'findById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointProfile extends _i1.EndpointRef {
  EndpointProfile(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'profile';

  /// Garante que o perfil do usuário logado exista no domínio OneShot.
  _i2.Future<_i27.UserProfile> getOrCreateMyProfile() =>
      caller.callServerEndpoint<_i27.UserProfile>(
        'profile',
        'getOrCreateMyProfile',
        {},
      );

  /// Atualiza os dados do perfil (CPF, CR, etc).
  _i2.Future<_i27.UserProfile> updateMyProfile(_i27.UserProfile profile) =>
      caller.callServerEndpoint<_i27.UserProfile>(
        'profile',
        'updateMyProfile',
        {'profile': profile},
      );

  /// Busca o perfil pelo ID (para visualização de outros administradores ou clubes).
  _i2.Future<_i27.UserProfile?> getProfileById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i27.UserProfile?>(
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
  _i2.Future<_i28.ReloadSession> executeReloadSession(
    _i28.ReloadSession reloadSession,
  ) => caller.callServerEndpoint<_i28.ReloadSession>(
    'reload',
    'executeReloadSession',
    {'reloadSession': reloadSession},
  );

  /// Lista sessões de recarga do usuário logado.
  _i2.Future<List<_i28.ReloadSession>> getMyReloadSessions() =>
      caller.callServerEndpoint<List<_i28.ReloadSession>>(
        'reload',
        'getMyReloadSessions',
        {},
      );

  /// Registra resultados de um teste de cronógrafo vinculado a uma sessão.
  _i2.Future<_i29.ReloadTest> registerTest(_i29.ReloadTest test) =>
      caller.callServerEndpoint<_i29.ReloadTest>(
        'reload',
        'registerTest',
        {'test': test},
      );

  /// Lista testes de uma sessão específica.
  _i2.Future<List<_i29.ReloadTest>> getTestsBySession(
    _i1.UuidValue sessionId,
  ) => caller.callServerEndpoint<List<_i29.ReloadTest>>(
    'reload',
    'getTestsBySession',
    {'sessionId': sessionId},
  );

  /// Lista todo o estoque de insumos (Pólvora, Espoleta, Projetis etc) do usuário.
  _i2.Future<List<_i30.SupplyStock>> getMySupplies() =>
      caller.callServerEndpoint<List<_i30.SupplyStock>>(
        'reload',
        'getMySupplies',
        {},
      );

  /// Cadastra um novo insumo ao estoque.
  _i2.Future<_i30.SupplyStock> addSupply(_i30.SupplyStock supply) =>
      caller.callServerEndpoint<_i30.SupplyStock>(
        'reload',
        'addSupply',
        {'supply': supply},
      );

  /// Atualiza dados de um insumo.
  _i2.Future<_i30.SupplyStock> updateSupply(_i30.SupplyStock supply) =>
      caller.callServerEndpoint<_i30.SupplyStock>(
        'reload',
        'updateSupply',
        {'supply': supply},
      );
}

/// {@category Endpoint}
class EndpointSecurityRole extends _i1.EndpointRef {
  EndpointSecurityRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'securityRole';

  _i2.Future<_i31.SecurityRole> createRole(
    _i31.SecurityRole role,
    List<_i32.RolePermission> permissions,
  ) => caller.callServerEndpoint<_i31.SecurityRole>(
    'securityRole',
    'createRole',
    {
      'role': role,
      'permissions': permissions,
    },
  );

  _i2.Future<_i31.SecurityRole> updateRole(
    _i31.SecurityRole role,
    List<_i32.RolePermission> permissions,
  ) => caller.callServerEndpoint<_i31.SecurityRole>(
    'securityRole',
    'updateRole',
    {
      'role': role,
      'permissions': permissions,
    },
  );

  _i2.Future<bool> deleteRole(_i31.SecurityRole role) =>
      caller.callServerEndpoint<bool>(
        'securityRole',
        'deleteRole',
        {'role': role},
      );

  _i2.Future<List<_i31.SecurityRole>> listRoles() =>
      caller.callServerEndpoint<List<_i31.SecurityRole>>(
        'securityRole',
        'listRoles',
        {},
      );

  _i2.Future<List<_i32.RolePermission>> listRolePermissions(
    _i31.SecurityRole role,
  ) => caller.callServerEndpoint<List<_i32.RolePermission>>(
    'securityRole',
    'listRolePermissions',
    {'role': role},
  );
}

/// {@category Endpoint}
class EndpointSubscriptionPlan extends _i1.EndpointRef {
  EndpointSubscriptionPlan(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subscriptionPlan';

  /// Cria um novo plano de assinatura.
  _i2.Future<_i33.SubscriptionPlan> createPlan(_i33.SubscriptionPlan plan) =>
      caller.callServerEndpoint<_i33.SubscriptionPlan>(
        'subscriptionPlan',
        'createPlan',
        {'plan': plan},
      );

  /// Busca um plano de assinatura por ID.
  _i2.Future<_i33.SubscriptionPlan?> readPlan(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i33.SubscriptionPlan?>(
        'subscriptionPlan',
        'readPlan',
        {'id': id},
      );

  /// Atualiza um plano de assinatura existente.
  _i2.Future<_i33.SubscriptionPlan> updatePlan(_i33.SubscriptionPlan plan) =>
      caller.callServerEndpoint<_i33.SubscriptionPlan>(
        'subscriptionPlan',
        'updatePlan',
        {'plan': plan},
      );

  /// Remove um plano de assinatura por ID.
  _i2.Future<bool> deletePlan(_i1.UuidValue id) =>
      caller.callServerEndpoint<bool>(
        'subscriptionPlan',
        'deletePlan',
        {'id': id},
      );

  /// Lista planos de assinatura com filtros opcionais.
  _i2.Future<List<_i33.SubscriptionPlan>> listPlans({
    _i34.PlanType? planType,
    _i35.PlanStatus? status,
    _i1.UuidValue? companyId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i33.SubscriptionPlan>>(
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
class EndpointTraining extends _i1.EndpointRef {
  EndpointTraining(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'training';

  /// Registro de um novo treino.
  /// O userId será validado dentro do caso de uso.
  _i2.Future<_i36.Training> register(_i36.Training training) =>
      caller.callServerEndpoint<_i36.Training>(
        'training',
        'register',
        {'training': training},
      );

  /// Lista todos os treinos do usuário logado.
  _i2.Future<List<_i36.Training>> getMyTrainings() =>
      caller.callServerEndpoint<List<_i36.Training>>(
        'training',
        'getMyTrainings',
        {},
      );

  /// Busca um treino específico.
  _i2.Future<_i36.Training?> getTraining(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i36.Training?>(
        'training',
        'getTraining',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i27.UserProfile?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i27.UserProfile?>(
        'user',
        'getById',
        {'id': id},
      );

  _i2.Future<_i27.UserProfile?> getByCpf(String cpf) =>
      caller.callServerEndpoint<_i27.UserProfile?>(
        'user',
        'getByCpf',
        {'cpf': cpf},
      );

  _i2.Future<_i27.UserProfile> create(_i27.UserProfile user) =>
      caller.callServerEndpoint<_i27.UserProfile>(
        'user',
        'create',
        {'user': user},
      );

  _i2.Future<_i27.UserProfile> update(_i27.UserProfile user) =>
      caller.callServerEndpoint<_i27.UserProfile>(
        'user',
        'update',
        {'user': user},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'user',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i27.UserProfile>> list({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i27.UserProfile>>(
    'user',
    'list',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<List<_i27.UserProfile>> search(String query) =>
      caller.callServerEndpoint<List<_i27.UserProfile>>(
        'user',
        'search',
        {'query': query},
      );

  _i2.Future<List<_i31.SecurityRole>> getRoles(_i1.UuidValue userId) =>
      caller.callServerEndpoint<List<_i31.SecurityRole>>(
        'user',
        'getRoles',
        {'userId': userId},
      );

  _i2.Future<void> updateRoles(
    _i1.UuidValue userId,
    List<_i1.UuidValue> roleIds,
  ) => caller.callServerEndpoint<void>(
    'user',
    'updateRoles',
    {
      'userId': userId,
      'roleIds': roleIds,
    },
  );

  /// Retorna as empresas as quais o usuário logado tem acesso.
  /// Implementa lógica de auto-admin para proprietários.
  _i2.Future<List<_i6.Company>> getMyCompanies() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'user',
        'getMyCompanies',
        {},
      );
}

/// {@category Endpoint}
class EndpointViaCepGateway extends _i1.EndpointRef {
  EndpointViaCepGateway(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'viaCepGateway';

  _i2.Future<_i7.Address?> getAddressByCep(String zipcode) =>
      caller.callServerEndpoint<_i7.Address?>(
        'viaCepGateway',
        'getAddressByCep',
        {'zipcode': zipcode},
      );
}

/// {@category Endpoint}
class EndpointAsaasAccount extends _i1.EndpointRef {
  EndpointAsaasAccount(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasAccount';

  _i2.Future<Map<String, dynamic>> createSubaccount(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasAccount',
    'createSubaccount',
    {'requestData': requestData},
  );

  _i2.Future<List<Map<String, dynamic>>> listSubaccounts({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasAccount',
    'listSubaccounts',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<Map<String, dynamic>> getAccountNumber() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasAccount',
        'getAccountNumber',
        {},
      );

  _i2.Future<Map<String, dynamic>> getAccountStatus() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasAccount',
        'getAccountStatus',
        {},
      );
}

/// {@category Endpoint}
class EndpointAsaasCustomer extends _i1.EndpointRef {
  EndpointAsaasCustomer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasCustomer';

  _i2.Future<Map<String, dynamic>> createCustomer(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'createCustomer',
    {'requestData': requestData},
  );

  _i2.Future<Map<String, dynamic>> listCustomers({
    int? limit,
    int? offset,
    String? name,
    String? cpfCnpj,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'listCustomers',
    {
      'limit': limit,
      'offset': offset,
      'name': name,
      'cpfCnpj': cpfCnpj,
    },
  );

  _i2.Future<Map<String, dynamic>> getCustomer(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'getCustomer',
        {'id': id},
      );

  _i2.Future<Map<String, dynamic>> updateCustomer(
    String id,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasCustomer',
    'updateCustomer',
    {
      'id': id,
      'requestData': requestData,
    },
  );

  _i2.Future<void> deleteCustomer(String id) => caller.callServerEndpoint<void>(
    'asaasCustomer',
    'deleteCustomer',
    {'id': id},
  );

  _i2.Future<Map<String, dynamic>> restoreCustomer(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'restoreCustomer',
        {'id': id},
      );

  _i2.Future<Map<String, dynamic>> getCustomerNotifications(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasCustomer',
        'getCustomerNotifications',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointAsaasInstallment extends _i1.EndpointRef {
  EndpointAsaasInstallment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasInstallment';

  _i2.Future<Map<String, dynamic>> createInstallment(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasInstallment',
    'createInstallment',
    {'requestData': requestData},
  );

  _i2.Future<List<Map<String, dynamic>>> listInstallments({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasInstallment',
    'listInstallments',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<Map<String, dynamic>> getInstallment(String id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasInstallment',
        'getInstallment',
        {'id': id},
      );

  _i2.Future<void> deleteInstallment(String id) =>
      caller.callServerEndpoint<void>(
        'asaasInstallment',
        'deleteInstallment',
        {'id': id},
      );

  _i2.Future<List<Map<String, dynamic>>> listInstallmentPayments(String id) =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasInstallment',
        'listInstallmentPayments',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointAsaasPayment extends _i1.EndpointRef {
  EndpointAsaasPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasPayment';

  _i2.Future<Map<String, dynamic>> createPayment(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPayment',
    'createPayment',
    {'requestData': requestData},
  );

  _i2.Future<List<Map<String, dynamic>>> listPayments({
    String? customer,
    String? status,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasPayment',
    'listPayments',
    {
      'customer': customer,
      'status': status,
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<Map<String, dynamic>> captureAuthorizedPayment(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'captureAuthorizedPayment',
        {'paymentId': paymentId},
      );

  _i2.Future<Map<String, dynamic>> payWithCreditCard(
    String paymentId,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPayment',
    'payWithCreditCard',
    {
      'paymentId': paymentId,
      'requestData': requestData,
    },
  );

  _i2.Future<Map<String, dynamic>> getBillingInfo(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'getBillingInfo',
        {'paymentId': paymentId},
      );

  _i2.Future<String> getPaymentStatus(String paymentId) =>
      caller.callServerEndpoint<String>(
        'asaasPayment',
        'getPaymentStatus',
        {'paymentId': paymentId},
      );

  _i2.Future<Map<String, dynamic>> refundPayment(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'refundPayment',
        {'paymentId': paymentId},
      );

  _i2.Future<Map<String, dynamic>> getPixQrCode(String paymentId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPayment',
        'getPixQrCode',
        {'paymentId': paymentId},
      );
}

/// {@category Endpoint}
class EndpointAsaasPix extends _i1.EndpointRef {
  EndpointAsaasPix(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasPix';

  _i2.Future<Map<String, dynamic>> createKey(String type) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPix',
        'createKey',
        {'type': type},
      );

  _i2.Future<List<Map<String, dynamic>>> listKeys() =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasPix',
        'listKeys',
        {},
      );

  _i2.Future<Map<String, dynamic>> createStaticQrCode(
    Map<String, dynamic> request,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasPix',
    'createStaticQrCode',
    {'request': request},
  );

  _i2.Future<Map<String, dynamic>> payQrCode(Map<String, dynamic> request) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasPix',
        'payQrCode',
        {'request': request},
      );

  _i2.Future<List<Map<String, dynamic>>> listTransactions({
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
class EndpointAsaasTransfer extends _i1.EndpointRef {
  EndpointAsaasTransfer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasTransfer';

  _i2.Future<Map<String, dynamic>> createTransfer(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasTransfer',
    'createTransfer',
    {'requestData': requestData},
  );

  _i2.Future<List<Map<String, dynamic>>> listTransfers({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<Map<String, dynamic>>>(
    'asaasTransfer',
    'listTransfers',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<List<Map<String, dynamic>>> getExtract({
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

  _i2.Future<Map<String, dynamic>> getBalance() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'asaasTransfer',
        'getBalance',
        {},
      );
}

/// {@category Endpoint}
class EndpointAsaasWebhookConfig extends _i1.EndpointRef {
  EndpointAsaasWebhookConfig(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasWebhookConfig';

  _i2.Future<Map<String, dynamic>> createWebhook(
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasWebhookConfig',
    'createWebhook',
    {'requestData': requestData},
  );

  _i2.Future<List<Map<String, dynamic>>> listWebhooks() =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'asaasWebhookConfig',
        'listWebhooks',
        {},
      );

  _i2.Future<Map<String, dynamic>> updateWebhook(
    String id,
    Map<String, dynamic> requestData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'asaasWebhookConfig',
    'updateWebhook',
    {
      'id': id,
      'requestData': requestData,
    },
  );

  _i2.Future<void> deleteWebhook(String id) => caller.callServerEndpoint<void>(
    'asaasWebhookConfig',
    'deleteWebhook',
    {'id': id},
  );
}

/// Endpoint público que recebe notificações de eventos enviados pelo Asaas via webhook.
/// A URL deste endpoint deve ser configurada no painel do Asaas como URL de webhook.
/// Não requer autenticação de usuário Serverpod (server-to-server).
/// {@category Endpoint}
class EndpointAsaasWebhookReceiver extends _i1.EndpointRef {
  EndpointAsaasWebhookReceiver(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asaasWebhookReceiver';

  /// Recebe e processa um evento de webhook enviado pelo Asaas.
  _i2.Future<void> handleEvent(Map<String, dynamic> payload) =>
      caller.callServerEndpoint<void>(
        'asaasWebhookReceiver',
        'handleEvent',
        {'payload': payload},
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
  _i2.Future<_i37.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i37.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i38.Caller(client);
  }

  late final _i38.Caller auth;
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
         _i39.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
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
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
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
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
