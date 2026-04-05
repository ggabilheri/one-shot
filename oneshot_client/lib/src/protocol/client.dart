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
import 'package:oneshot_client/src/protocol/club/club.dart' as _i5;
import 'package:oneshot_client/src/protocol/club/membership.dart' as _i6;
import 'package:oneshot_client/src/protocol/club/range_visit.dart' as _i7;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i8;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _i9;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart' as _i10;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _i11;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _i12;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _i13;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _i14;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart' as _i15;
import 'package:oneshot_client/src/protocol/enums/invoice_status.enum.dart'
    as _i16;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _i17;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i18;
import 'package:oneshot_client/src/protocol/product/product_group.dart' as _i19;
import 'package:oneshot_client/src/protocol/common/user_profile.dart' as _i20;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i21;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart' as _i22;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart' as _i23;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _i24;
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _i25;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _i26;
import 'package:oneshot_client/src/protocol/common/address.dart' as _i27;
import 'package:oneshot_client/src/protocol/greeting.dart' as _i28;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i29;
import 'protocol.dart' as _i30;

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
class EndpointClub extends _i1.EndpointRef {
  EndpointClub(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'club';

  /// Cria um novo clube de tiro no sistema.
  _i2.Future<_i5.Club> createClub(_i5.Club club) =>
      caller.callServerEndpoint<_i5.Club>(
        'club',
        'createClub',
        {'club': club},
      );

  /// Lista todos os clubes ativos.
  _i2.Future<List<_i5.Club>> listClubs() =>
      caller.callServerEndpoint<List<_i5.Club>>(
        'club',
        'listClubs',
        {},
      );

  /// Atualiza um clube existente.
  _i2.Future<_i5.Club> updateClub(_i5.Club club) =>
      caller.callServerEndpoint<_i5.Club>(
        'club',
        'updateClub',
        {'club': club},
      );

  /// Exclui um clube (Soft Delete) definindo active = false.
  _i2.Future<_i5.Club> deleteClub(_i1.UuidValue clubId) =>
      caller.callServerEndpoint<_i5.Club>(
        'club',
        'deleteClub',
        {'clubId': clubId},
      );

  /// Solicita filiação a um clube.
  _i2.Future<_i6.Membership> requestMembership(_i1.UuidValue clubId) =>
      caller.callServerEndpoint<_i6.Membership>(
        'club',
        'requestMembership',
        {'clubId': clubId},
      );

  /// Lista minhas filiações.
  _i2.Future<List<_i6.Membership>> getMyMemberships() =>
      caller.callServerEndpoint<List<_i6.Membership>>(
        'club',
        'getMyMemberships',
        {},
      );

  /// Registra entrada no estande (Check-in).
  _i2.Future<_i7.RangeVisit> checkIn(
    _i1.UuidValue clubId,
    _i1.UuidValue? firearmId,
  ) => caller.callServerEndpoint<_i7.RangeVisit>(
    'club',
    'checkIn',
    {
      'clubId': clubId,
      'firearmId': firearmId,
    },
  );

  /// Registra saída do estande (Check-out).
  _i2.Future<_i7.RangeVisit> checkOut(
    _i1.UuidValue visitId,
    int shotsFired,
  ) => caller.callServerEndpoint<_i7.RangeVisit>(
    'club',
    'checkOut',
    {
      'visitId': visitId,
      'shotsFired': shotsFired,
    },
  );

  /// Lista minhas visitas.
  _i2.Future<List<_i7.RangeVisit>> getMyVisits() =>
      caller.callServerEndpoint<List<_i7.RangeVisit>>(
        'club',
        'getMyVisits',
        {},
      );
}

/// {@category Endpoint}
class EndpointDocument extends _i1.EndpointRef {
  EndpointDocument(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'document';

  _i2.Future<_i8.Document?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i8.Document?>(
        'document',
        'getById',
        {'id': id},
      );

  _i2.Future<_i8.Document> create(_i8.Document document) =>
      caller.callServerEndpoint<_i8.Document>(
        'document',
        'create',
        {'document': document},
      );

  _i2.Future<_i8.Document> update(_i8.Document document) =>
      caller.callServerEndpoint<_i8.Document>(
        'document',
        'update',
        {'document': document},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'document',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i8.Document>> listByUser(
    _i1.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i8.Document>>(
    'document',
    'listByUser',
    {
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<List<_i8.Document>> listByFirearm(_i1.UuidValue firearmId) =>
      caller.callServerEndpoint<List<_i8.Document>>(
        'document',
        'listByFirearm',
        {'firearmId': firearmId},
      );

  _i2.Future<List<_i8.Document>> listByAccessory(_i1.UuidValue accessoryId) =>
      caller.callServerEndpoint<List<_i8.Document>>(
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
class EndpointFirearm extends _i1.EndpointRef {
  EndpointFirearm(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'firearm';

  _i2.Future<_i9.Firearm?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i9.Firearm?>(
        'firearm',
        'getById',
        {'id': id},
      );

  _i2.Future<_i9.Firearm?> getBySerialNumber(String serialNumber) =>
      caller.callServerEndpoint<_i9.Firearm?>(
        'firearm',
        'getBySerialNumber',
        {'serialNumber': serialNumber},
      );

  _i2.Future<_i9.Firearm> create(_i9.Firearm firearm) =>
      caller.callServerEndpoint<_i9.Firearm>(
        'firearm',
        'create',
        {'firearm': firearm},
      );

  _i2.Future<_i9.Firearm> update(_i9.Firearm firearm) =>
      caller.callServerEndpoint<_i9.Firearm>(
        'firearm',
        'update',
        {'firearm': firearm},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'firearm',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i9.Firearm>> listByUser(
    _i1.UuidValue userId, {
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i9.Firearm>>(
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

  /// Registra uma nova armaria no sistema.
  _i2.Future<_i10.Gunsmith> createGunsmith(_i10.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i10.Gunsmith>(
        'gunsmith',
        'createGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Busca os detalhes de uma armaria pelo ID.
  _i2.Future<_i10.Gunsmith?> getGunsmith(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i10.Gunsmith?>(
        'gunsmith',
        'getGunsmith',
        {'id': id},
      );

  /// Busca a armaria de um proprietário específico.
  _i2.Future<_i10.Gunsmith?> findGunsmithByOwner(_i1.UuidValue ownerId) =>
      caller.callServerEndpoint<_i10.Gunsmith?>(
        'gunsmith',
        'findGunsmithByOwner',
        {'ownerId': ownerId},
      );

  /// Lista todas as armarias cadastradas.
  _i2.Future<List<_i10.Gunsmith>> listGunsmiths({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i10.Gunsmith>>(
    'gunsmith',
    'listGunsmiths',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  /// Atualiza os dados de uma armaria.
  _i2.Future<_i10.Gunsmith> updateGunsmith(_i10.Gunsmith gunsmith) =>
      caller.callServerEndpoint<_i10.Gunsmith>(
        'gunsmith',
        'updateGunsmith',
        {'gunsmith': gunsmith},
      );

  /// Cria um novo cliente para o armeiro logado.
  _i2.Future<_i11.GunsmithClient> createClient(_i11.GunsmithClient client) =>
      caller.callServerEndpoint<_i11.GunsmithClient>(
        'gunsmith',
        'createClient',
        {'client': client},
      );

  /// Busca um cliente pelo CPF.
  _i2.Future<_i11.GunsmithClient?> findClientByCpf(String cpf) =>
      caller.callServerEndpoint<_i11.GunsmithClient?>(
        'gunsmith',
        'findClientByCpf',
        {'cpf': cpf},
      );

  /// Lista todos os clientes de um armeiro específico.
  _i2.Future<List<_i11.GunsmithClient>> getMyClients() =>
      caller.callServerEndpoint<List<_i11.GunsmithClient>>(
        'gunsmith',
        'getMyClients',
        {},
      );

  /// Registra uma nova Ordem de Serviço com seus itens.
  _i2.Future<_i12.ServiceOrder> registerServiceOrder(
    _i12.ServiceOrder order,
    List<_i13.ServiceOrderItem> items,
  ) => caller.callServerEndpoint<_i12.ServiceOrder>(
    'gunsmith',
    'registerServiceOrder',
    {
      'order': order,
      'items': items,
    },
  );

  /// Lista as ordens de serviço de um cliente.
  _i2.Future<List<_i12.ServiceOrder>> getOrdersByClient(
    _i1.UuidValue clientId,
  ) => caller.callServerEndpoint<List<_i12.ServiceOrder>>(
    'gunsmith',
    'getOrdersByClient',
    {'clientId': clientId},
  );

  /// Busca os itens de uma ordem específica.
  _i2.Future<List<_i13.ServiceOrderItem>> getOrderItems(
    _i1.UuidValue serviceOrderId,
  ) => caller.callServerEndpoint<List<_i13.ServiceOrderItem>>(
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
  _i2.Future<_i14.Invoice> createInvoice(
    _i14.Invoice invoice,
    List<_i15.InvoiceItem> items,
  ) => caller.callServerEndpoint<_i14.Invoice>(
    'invoice',
    'createInvoice',
    {
      'invoice': invoice,
      'items': items,
    },
  );

  /// Busca uma fatura detalhada pelo ID.
  _i2.Future<_i14.Invoice?> getInvoice(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i14.Invoice?>(
        'invoice',
        'getInvoice',
        {'id': id},
      );

  /// Lista faturas com filtros dinâmicos.
  _i2.Future<List<_i14.Invoice>> listInvoices({
    String? originModule,
    String? direction,
    _i16.InvoiceStatus? status,
    _i1.UuidValue? clubId,
    _i1.UuidValue? gunsmithId,
    _i1.UuidValue? userId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i14.Invoice>>(
    'invoice',
    'listInvoices',
    {
      'originModule': originModule,
      'direction': direction,
      'status': status,
      'clubId': clubId,
      'gunsmithId': gunsmithId,
      'userId': userId,
      'limit': limit,
      'offset': offset,
    },
  );

  /// Atualiza uma fatura.
  _i2.Future<_i14.Invoice> updateInvoice(_i14.Invoice invoice) =>
      caller.callServerEndpoint<_i14.Invoice>(
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
  _i2.Future<List<_i15.InvoiceItem>> getInvoiceItems(_i1.UuidValue invoiceId) =>
      caller.callServerEndpoint<List<_i15.InvoiceItem>>(
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
  _i2.Future<_i17.Payment> registerPayment(_i17.Payment payment) =>
      caller.callServerEndpoint<_i17.Payment>(
        'payment',
        'registerPayment',
        {'payment': payment},
      );

  /// Lista pagamentos de uma fatura específica.
  _i2.Future<List<_i17.Payment>> getPaymentsByInvoice(
    _i1.UuidValue invoiceId,
  ) => caller.callServerEndpoint<List<_i17.Payment>>(
    'payment',
    'getPaymentsByInvoice',
    {'invoiceId': invoiceId},
  );

  /// Lista todos os pagamentos (Geral ou por período).
  _i2.Future<List<_i17.Payment>> listPayments({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i17.Payment>>(
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
  _i2.Future<_i18.Product> createProduct(_i18.Product product) =>
      caller.callServerEndpoint<_i18.Product>(
        'product',
        'createProduct',
        {'product': product},
      );

  /// Busca o detalhe de um produto por ID.
  _i2.Future<_i18.Product?> readProduct(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i18.Product?>(
        'product',
        'readProduct',
        {'id': id},
      );

  /// Busca o detalhe de um produto por Código SKU.
  _i2.Future<_i18.Product?> findByCode(String code) =>
      caller.callServerEndpoint<_i18.Product?>(
        'product',
        'findByCode',
        {'code': code},
      );

  /// Atualiza os dados de um produto existente.
  _i2.Future<_i18.Product> updateProduct(_i18.Product product) =>
      caller.callServerEndpoint<_i18.Product>(
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

  /// Lista produtos com filtro obrigatório por módulo de origem (ex: BACKOFFICE, CLUB, GUNSMITH).
  _i2.Future<List<_i18.Product>> listProducts({
    required String originModule,
    _i1.UuidValue? groupId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i18.Product>>(
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

  _i2.Future<List<_i19.ProductGroup>> listGroups({
    required String originModule,
    _i1.UuidValue? ownerId,
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i19.ProductGroup>>(
    'productGroup',
    'listGroups',
    {
      'originModule': originModule,
      'ownerId': ownerId,
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<_i19.ProductGroup> createProductGroup(_i19.ProductGroup group) =>
      caller.callServerEndpoint<_i19.ProductGroup>(
        'productGroup',
        'createProductGroup',
        {'group': group},
      );

  _i2.Future<_i19.ProductGroup> updateProductGroup(_i19.ProductGroup group) =>
      caller.callServerEndpoint<_i19.ProductGroup>(
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

  _i2.Future<_i19.ProductGroup?> findById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i19.ProductGroup?>(
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
  _i2.Future<_i20.UserProfile> getOrCreateMyProfile() =>
      caller.callServerEndpoint<_i20.UserProfile>(
        'profile',
        'getOrCreateMyProfile',
        {},
      );

  /// Atualiza os dados do perfil (CPF, CR, etc).
  _i2.Future<_i20.UserProfile> updateMyProfile(_i20.UserProfile profile) =>
      caller.callServerEndpoint<_i20.UserProfile>(
        'profile',
        'updateMyProfile',
        {'profile': profile},
      );

  /// Busca o perfil pelo ID (para visualização de outros administradores ou clubes).
  _i2.Future<_i20.UserProfile?> getProfileById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i20.UserProfile?>(
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
  _i2.Future<_i21.ReloadSession> executeReloadSession(
    _i21.ReloadSession reloadSession,
  ) => caller.callServerEndpoint<_i21.ReloadSession>(
    'reload',
    'executeReloadSession',
    {'reloadSession': reloadSession},
  );

  /// Lista sessões de recarga do usuário logado.
  _i2.Future<List<_i21.ReloadSession>> getMyReloadSessions() =>
      caller.callServerEndpoint<List<_i21.ReloadSession>>(
        'reload',
        'getMyReloadSessions',
        {},
      );

  /// Registra resultados de um teste de cronógrafo vinculado a uma sessão.
  _i2.Future<_i22.ReloadTest> registerTest(_i22.ReloadTest test) =>
      caller.callServerEndpoint<_i22.ReloadTest>(
        'reload',
        'registerTest',
        {'test': test},
      );

  /// Lista testes de uma sessão específica.
  _i2.Future<List<_i22.ReloadTest>> getTestsBySession(
    _i1.UuidValue sessionId,
  ) => caller.callServerEndpoint<List<_i22.ReloadTest>>(
    'reload',
    'getTestsBySession',
    {'sessionId': sessionId},
  );

  /// Lista todo o estoque de insumos (Pólvora, Espoleta, Projetis etc) do usuário.
  _i2.Future<List<_i23.SupplyStock>> getMySupplies() =>
      caller.callServerEndpoint<List<_i23.SupplyStock>>(
        'reload',
        'getMySupplies',
        {},
      );

  /// Cadastra um novo insumo ao estoque.
  _i2.Future<_i23.SupplyStock> addSupply(_i23.SupplyStock supply) =>
      caller.callServerEndpoint<_i23.SupplyStock>(
        'reload',
        'addSupply',
        {'supply': supply},
      );

  /// Atualiza dados de um insumo.
  _i2.Future<_i23.SupplyStock> updateSupply(_i23.SupplyStock supply) =>
      caller.callServerEndpoint<_i23.SupplyStock>(
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

  _i2.Future<_i24.SecurityRole> createRole(
    _i24.SecurityRole role,
    List<_i25.RolePermission> permissions,
  ) => caller.callServerEndpoint<_i24.SecurityRole>(
    'securityRole',
    'createRole',
    {
      'role': role,
      'permissions': permissions,
    },
  );

  _i2.Future<_i24.SecurityRole> updateRole(
    _i24.SecurityRole role,
    List<_i25.RolePermission> permissions,
  ) => caller.callServerEndpoint<_i24.SecurityRole>(
    'securityRole',
    'updateRole',
    {
      'role': role,
      'permissions': permissions,
    },
  );

  _i2.Future<bool> deleteRole(_i24.SecurityRole role) =>
      caller.callServerEndpoint<bool>(
        'securityRole',
        'deleteRole',
        {'role': role},
      );

  _i2.Future<List<_i24.SecurityRole>> listRoles() =>
      caller.callServerEndpoint<List<_i24.SecurityRole>>(
        'securityRole',
        'listRoles',
        {},
      );

  _i2.Future<List<_i25.RolePermission>> listRolePermissions(
    _i24.SecurityRole role,
  ) => caller.callServerEndpoint<List<_i25.RolePermission>>(
    'securityRole',
    'listRolePermissions',
    {'role': role},
  );
}

/// {@category Endpoint}
class EndpointTraining extends _i1.EndpointRef {
  EndpointTraining(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'training';

  /// Registro de um novo treino.
  /// O userId será validado dentro do caso de uso.
  _i2.Future<_i26.Training> register(_i26.Training training) =>
      caller.callServerEndpoint<_i26.Training>(
        'training',
        'register',
        {'training': training},
      );

  /// Lista todos os treinos do usuário logado.
  _i2.Future<List<_i26.Training>> getMyTrainings() =>
      caller.callServerEndpoint<List<_i26.Training>>(
        'training',
        'getMyTrainings',
        {},
      );

  /// Busca um treino específico.
  _i2.Future<_i26.Training?> getTraining(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i26.Training?>(
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

  _i2.Future<_i20.UserProfile?> getById(_i1.UuidValue id) =>
      caller.callServerEndpoint<_i20.UserProfile?>(
        'user',
        'getById',
        {'id': id},
      );

  _i2.Future<_i20.UserProfile?> getByCpf(String cpf) =>
      caller.callServerEndpoint<_i20.UserProfile?>(
        'user',
        'getByCpf',
        {'cpf': cpf},
      );

  _i2.Future<_i20.UserProfile> create(_i20.UserProfile user) =>
      caller.callServerEndpoint<_i20.UserProfile>(
        'user',
        'create',
        {'user': user},
      );

  _i2.Future<_i20.UserProfile> update(_i20.UserProfile user) =>
      caller.callServerEndpoint<_i20.UserProfile>(
        'user',
        'update',
        {'user': user},
      );

  _i2.Future<bool> delete(_i1.UuidValue id) => caller.callServerEndpoint<bool>(
    'user',
    'delete',
    {'id': id},
  );

  _i2.Future<List<_i20.UserProfile>> list({
    int? limit,
    int? offset,
  }) => caller.callServerEndpoint<List<_i20.UserProfile>>(
    'user',
    'list',
    {
      'limit': limit,
      'offset': offset,
    },
  );

  _i2.Future<List<_i24.SecurityRole>> getRoles(_i1.UuidValue userId) =>
      caller.callServerEndpoint<List<_i24.SecurityRole>>(
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
}

/// {@category Endpoint}
class EndpointViaCepGateway extends _i1.EndpointRef {
  EndpointViaCepGateway(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'viaCepGateway';

  _i2.Future<_i27.Address?> getAddressByCep(String zipcode) =>
      caller.callServerEndpoint<_i27.Address?>(
        'viaCepGateway',
        'getAddressByCep',
        {'zipcode': zipcode},
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
  _i2.Future<_i28.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i28.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i29.Caller(client);
  }

  late final _i29.Caller auth;
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
         _i30.Protocol(),
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
    club = EndpointClub(this);
    document = EndpointDocument(this);
    firearm = EndpointFirearm(this);
    gunsmith = EndpointGunsmith(this);
    invoice = EndpointInvoice(this);
    payment = EndpointPayment(this);
    product = EndpointProduct(this);
    productGroup = EndpointProductGroup(this);
    profile = EndpointProfile(this);
    reload = EndpointReload(this);
    securityRole = EndpointSecurityRole(this);
    training = EndpointTraining(this);
    user = EndpointUser(this);
    viaCepGateway = EndpointViaCepGateway(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointAccessory accessory;

  late final EndpointAmmunition ammunition;

  late final EndpointClub club;

  late final EndpointDocument document;

  late final EndpointFirearm firearm;

  late final EndpointGunsmith gunsmith;

  late final EndpointInvoice invoice;

  late final EndpointPayment payment;

  late final EndpointProduct product;

  late final EndpointProductGroup productGroup;

  late final EndpointProfile profile;

  late final EndpointReload reload;

  late final EndpointSecurityRole securityRole;

  late final EndpointTraining training;

  late final EndpointUser user;

  late final EndpointViaCepGateway viaCepGateway;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'accessory': accessory,
    'ammunition': ammunition,
    'club': club,
    'document': document,
    'firearm': firearm,
    'gunsmith': gunsmith,
    'invoice': invoice,
    'payment': payment,
    'product': product,
    'productGroup': productGroup,
    'profile': profile,
    'reload': reload,
    'securityRole': securityRole,
    'training': training,
    'user': user,
    'viaCepGateway': viaCepGateway,
    'greeting': greeting,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
