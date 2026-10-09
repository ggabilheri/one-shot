/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

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
import 'package:oneshot_server/src/generated/company/membership.dart'
    as _i1s6ob71;
import 'package:oneshot_server/src/generated/company/range_visit.dart'
    as _illbufnr;
import 'package:oneshot_server/src/generated/finance/bank.dart' as _ij8k7xum;
import 'package:oneshot_server/src/generated/finance/bank_account.dart'
    as _ix4lc03l;
import 'package:oneshot_server/src/generated/finance/financial_entry.dart'
    as _ibsfr7x7;
import 'package:oneshot_server/src/generated/finance/invoice.dart' as _i30q017a;
import 'package:oneshot_server/src/generated/finance/invoice_item.dart'
    as _i4dj62ps;
import 'package:oneshot_server/src/generated/finance/payment.dart' as _i2rb000s;
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
import 'package:serverpod/protocol.dart' as _isp;
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i1n3uhu0;
import 'access_control/role_permission.dart' as _itwd6fku;
import 'access_control/security_role.dart' as _in9fkuzh;
import 'access_control/user_role.dart' as _iflys0o9;
import 'common/accessory.dart' as _i18rxkcg;
import 'common/address.dart' as _ii1cybhg;
import 'common/document.dart' as _i023ezu2;
import 'common/one_shot_exception.dart' as _i2v0zfwt;
import 'common/supply_stock.dart' as _i8y573y6;
import 'common/user_profile.dart' as _izgbvseu;
import 'company/company.dart' as _ienljv70;
import 'company/company_type.dart' as _i7fsgy8h;
import 'company/membership.dart' as _i29p8qv7;
import 'company/range_visit.dart' as _iqo0zmu4;
import 'enums/access_level.enum.dart' as _iugjo2wb;
import 'enums/accessory.enum.dart' as _ip9lql6r;
import 'enums/app_module.enum.dart' as _iyudezai;
import 'enums/asaas_webhook_event_type.enum.dart' as _iy4kwzbj;
import 'enums/conservation_state.enum.dart' as _iuu90wd5;
import 'enums/currency.enum.dart' as _ictknidt;
import 'enums/document_type.enum.dart' as _ibornalb;
import 'enums/financial_entry_status.dart' as _idw6xq4s;
import 'enums/financial_entry_type.dart' as _iv2iml2v;
import 'enums/firearm_action.enum.dart' as _itctldyk;
import 'enums/firearm_purpose.enum.dart' as _ipfzkkcy;
import 'enums/firearm_type.enum.dart' as _iv6h25me;
import 'enums/gender.enum.dart' as _ivjv70nm;
import 'enums/invoice_status.enum.dart' as _iwp0wycx;
import 'enums/membership_status.dart' as _iaawilat;
import 'enums/payment_method.enum.dart' as _ir7lu9de;
import 'enums/payment_status.enum.dart' as _ikjzbt8l;
import 'enums/pix_key_type.dart' as _i2xwc0ya;
import 'enums/plan_periodicity.enum.dart' as _ihsiicw8;
import 'enums/plan_status.enum.dart' as _i3zf9gwu;
import 'enums/plan_type.enum.dart' as _itku2k2q;
import 'enums/platform_app.enum.dart' as _i2yfqo06;
import 'enums/registry_body.enum.dart' as _ibbobdoe;
import 'enums/usage_type.enum.dart' as _ixsenwfe;
import 'enums/user_status.enum.dart' as _ihk15r1q;
import 'enums/user_type.enum.dart' as _i6i91bhn;
import 'finance/asaas_webhook_event.dart' as _i268wbv5;
import 'finance/bank.dart' as _i7csfp3a;
import 'finance/bank_account.dart' as _i1qq6iwp;
import 'finance/financial_entry.dart' as _irygpv1g;
import 'finance/invoice.dart' as _ivdiuwq4;
import 'finance/invoice_item.dart' as _izi6zi6k;
import 'finance/payment.dart' as _i3em9ox0;
import 'greeting.dart' as _ig8bxnp5;
import 'gunsmith/gunsmith.dart' as _i1xnjo88;
import 'gunsmith/gunsmith_client.dart' as _iov85fbn;
import 'gunsmith/service_order.dart' as _itc8b666;
import 'gunsmith/service_order_item.dart' as _igkm4f4b;
import 'product/product.dart' as _ip2j4rpy;
import 'product/product_group.dart' as _iy51xlx2;
import 'shooter/ammunition_stock.dart' as _ig3iv7v1;
import 'shooter/firearm.dart' as _i7i930pv;
import 'shooter/reload_session.dart' as _ipl25531;
import 'shooter/reload_test.dart' as _ikjmk4up;
import 'shooter/training.dart' as _iujmcebm;
import 'subscription/subscription_plan.dart' as _iq5ctf45;
export 'access_control/role_permission.dart';
export 'access_control/security_role.dart';
export 'access_control/user_role.dart';
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/one_shot_exception.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
export 'company/company.dart';
export 'company/company_type.dart';
export 'company/membership.dart';
export 'company/range_visit.dart';
export 'enums/access_level.enum.dart';
export 'enums/accessory.enum.dart';
export 'enums/app_module.enum.dart';
export 'enums/asaas_webhook_event_type.enum.dart';
export 'enums/conservation_state.enum.dart';
export 'enums/currency.enum.dart';
export 'enums/document_type.enum.dart';
export 'enums/financial_entry_status.dart';
export 'enums/financial_entry_type.dart';
export 'enums/firearm_action.enum.dart';
export 'enums/firearm_purpose.enum.dart';
export 'enums/firearm_type.enum.dart';
export 'enums/gender.enum.dart';
export 'enums/invoice_status.enum.dart';
export 'enums/membership_status.dart';
export 'enums/payment_method.enum.dart';
export 'enums/payment_status.enum.dart';
export 'enums/pix_key_type.dart';
export 'enums/plan_periodicity.enum.dart';
export 'enums/plan_status.enum.dart';
export 'enums/plan_type.enum.dart';
export 'enums/platform_app.enum.dart';
export 'enums/registry_body.enum.dart';
export 'enums/usage_type.enum.dart';
export 'enums/user_status.enum.dart';
export 'enums/user_type.enum.dart';
export 'finance/asaas_webhook_event.dart';
export 'finance/bank.dart';
export 'finance/bank_account.dart';
export 'finance/financial_entry.dart';
export 'finance/invoice.dart';
export 'finance/invoice_item.dart';
export 'finance/payment.dart';
export 'greeting.dart';
export 'gunsmith/gunsmith.dart';
export 'gunsmith/gunsmith_client.dart';
export 'gunsmith/service_order.dart';
export 'gunsmith/service_order_item.dart';
export 'product/product.dart';
export 'product/product_group.dart';
export 'shooter/ammunition_stock.dart';
export 'shooter/firearm.dart';
export 'shooter/reload_session.dart';
export 'shooter/reload_test.dart';
export 'shooter/training.dart';
export 'subscription/subscription_plan.dart';

class Protocol extends _is.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static List<_isp.TableDefinition> get targetTableDefinitions => [
    _isp.TableDefinition(
      name: 'accessories',
      dartName: 'Accessory',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'purpose',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:AccessoryType',
        ),
        _isp.ColumnDefinition(
          name: 'serialNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'manufactureCountry',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'model',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'conservationState',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:ConservationState?',
        ),
        _isp.ColumnDefinition(
          name: 'usageType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:UsageType?',
        ),
        _isp.ColumnDefinition(
          name: 'dimensions',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'weight',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'color',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'finishMaterial',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceEmissionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'sellerData',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'registryBody',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:RegistryBody?',
        ),
        _isp.ColumnDefinition(
          name: 'customizations',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'maintenanceHistory',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'images',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'accessories_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'accessories_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'accessory_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'accessory_firearm_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'firearmId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'accessory_serial_number_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'serialNumber',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'addresses',
      dartName: 'Address',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'street',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'number',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'complement',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'neighborhood',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'city',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'zipCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'userProfileId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'addresses_fk_0',
          columns: ['userProfileId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'address_zip_code_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'zipCode',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'ammunition_stocks',
      dartName: 'AmmunitionStock',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'caliber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'projectileType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'projectileWeightGrains',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'casingBatch',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'ammunition_stocks_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'ammo_stock_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'ammo_stock_caliber_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'caliber',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'asaas_webhook_events',
      dartName: 'AsaasWebhookEvent',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'eventId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'event',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'payload',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'processed',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _isp.ColumnDefinition(
          name: 'processedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'error',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'receivedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'asaas_event_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'eventId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'asaas_event_processed_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'processed',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'asaas_event_type_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'event',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'asaas_event_received_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'receivedAt',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'bank_accounts',
      dartName: 'BankAccount',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'bankName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'agency',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'agencyDigit',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'accountNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'accountDigit',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'balance',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'originModule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'pixKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'pixKeyType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:PixKeyType?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'bank_accounts_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'bank_account_origin_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'bank_account_status_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'companies',
      dartName: 'Company',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'cnpj',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:CompanyType',
        ),
        _isp.ColumnDefinition(
          name: 'addressId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'ownerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'active',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _isp.ColumnDefinition(
          name: 'incomeValue',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
          columnDefault: '1000.00',
        ),
        _isp.ColumnDefinition(
          name: 'parentCompanyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasAccountId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasWalletId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasApiKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'companies_fk_0',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'companies_fk_1',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'companies_fk_2',
          columns: ['parentCompanyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'company_cnpj_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'cnpj',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'company_owner_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'ownerId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'company_parent_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'parentCompanyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'documents',
      dartName: 'Document',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'accessoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:DocumentType',
        ),
        _isp.ColumnDefinition(
          name: 'registryBody',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:RegistryBody',
        ),
        _isp.ColumnDefinition(
          name: 'number',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'emissionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'expirationDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'filePath',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supplierName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supplierCpfCnpj',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supplierPhone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supplierAddress',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'documents_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'documents_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'documents_fk_2',
          columns: ['accessoryId'],
          referenceTable: 'accessories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'document_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'document_number_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'number',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'document_firearm_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'firearmId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'document_accessory_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'accessoryId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'financial_entries',
      dartName: 'FinancialEntry',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FinancialEntryType',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'amount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'dueDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'paymentDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FinancialEntryStatus',
        ),
        _isp.ColumnDefinition(
          name: 'originModule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlatformApp',
        ),
        _isp.ColumnDefinition(
          name: 'bankAccountId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_0',
          columns: ['bankAccountId'],
          referenceTable: 'bank_accounts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_1',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_2',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'financial_entry_type_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'type',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'financial_entry_status_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'financial_entry_due_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'dueDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'financial_entry_origin_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'firearms',
      dartName: 'Firearm',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'purpose',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmPurpose',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmType',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmAction',
        ),
        _isp.ColumnDefinition(
          name: 'usageType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:UsageType',
        ),
        _isp.ColumnDefinition(
          name: 'serialNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'manufactureCountry',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'model',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'bolt',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'frame',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'grip',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'conservationState',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ConservationState',
        ),
        _isp.ColumnDefinition(
          name: 'caliber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'barrelsCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'barrelLength',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'soulType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'sightType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'riflingCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'riflingDirection',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'magazineCapacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'magazineCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'dimensions',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'weight',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'saleDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'salePrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'buyerData',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'customizations',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'images',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _isp.ColumnDefinition(
          name: 'cleaningHistory',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'maintenanceHistory',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'totalShots',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'firearms_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'firearm_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'firearm_serial_number_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'serialNumber',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'gunsmith_clients',
      dartName: 'GunsmithClient',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'gunsmithUserInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'cpf',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'rg',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'phone',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'addressId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'gunsmith_clients_fk_0',
          columns: ['gunsmithUserInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'gunsmith_clients_fk_1',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'gunsmith_client_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'gunsmithUserInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'gunsmith_client_cpf_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'cpf',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'gunsmiths',
      dartName: 'Gunsmith',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'taxId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'addressId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'ownerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'active',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _isp.ColumnDefinition(
          name: 'incomeValue',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
          columnDefault: '1000.00',
        ),
        _isp.ColumnDefinition(
          name: 'asaasAccountId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasWalletId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasApiKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'gunsmiths_fk_0',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'gunsmiths_fk_1',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'gunsmith_tax_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'taxId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'gunsmith_owner_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'ownerId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'invoice_items',
      dartName: 'InvoiceItem',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'unitPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'totalPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'invoice_items_fk_0',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'invoice_item_invoice_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'invoiceId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'invoices',
      dartName: 'Invoice',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'originModule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'direction',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:InvoiceStatus',
        ),
        _isp.ColumnDefinition(
          name: 'issueDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'dueDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'totalAmount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'discount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'finalAmount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:Currency',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isRecurrent',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _isp.ColumnDefinition(
          name: 'asaasInstallmentId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'gunsmithId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'draweeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'invoices_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'invoices_fk_1',
          columns: ['gunsmithId'],
          referenceTable: 'gunsmiths',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'invoices_fk_2',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'invoices_fk_3',
          columns: ['draweeId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'invoice_status_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'invoice_due_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'dueDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'invoice_company_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'invoice_gunsmith_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'gunsmithId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'invoice_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'invoice_asaas_installment_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'asaasInstallmentId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'memberships',
      dartName: 'Membership',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'membershipNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'startDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'validUntil',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:MembershipStatus',
          columnDefault: '\'active\'',
        ),
        _isp.ColumnDefinition(
          name: 'planName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'memberships_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'memberships_fk_1',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'membership_user_company_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'membership_company_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'payments',
      dartName: 'Payment',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'paymentDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'amountPaid',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'paymentMethod',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PaymentMethod',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PaymentStatus',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:Currency',
        ),
        _isp.ColumnDefinition(
          name: 'asaasPaymentId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasBillingType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasDueDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasNetValue',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasInvoiceUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasBankSlipUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasPixQrCodePayload',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasPixQrCodeImage',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasRefundedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'payments_fk_0',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'payment_invoice_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'invoiceId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'payment_status_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'payment_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'paymentDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'payment_asaas_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'asaasPaymentId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'product_groups',
      dartName: 'ProductGroup',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'originModule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'ownerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'product_groups_fk_0',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'product_group_origin_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'product_group_owner_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'ownerId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'products',
      dartName: 'Product',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'unit',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'unitPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'originModule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'groupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'products_fk_0',
          columns: ['groupId'],
          referenceTable: 'product_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'products_code_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'products_origin_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'product_group_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'groupId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'range_visits',
      dartName: 'RangeVisit',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'checkIn',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'checkOut',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'shotsFired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'habitualityReportGenerated',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_1',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_2',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'range_visit_user_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'range_visit_company_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'range_visit_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'checkIn',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'reload_sessions',
      dartName: 'ReloadSession',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'reloadDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'pressId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'caliber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'casingBatch',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reloadsCompleted',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'powderId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'powderGrains',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'primerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'projectileId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'oal',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'totalCost',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'unitCost',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_1',
          columns: ['pressId'],
          referenceTable: 'accessories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_2',
          columns: ['powderId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_3',
          columns: ['primerId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_4',
          columns: ['projectileId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'reload_session_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'reload_session_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reloadDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'reload_tests',
      dartName: 'ReloadTest',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'reloadSessionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'testDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'shotsFired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'highestVelocityFps',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'lowestVelocityFps',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'averageVelocityFps',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'powerFactor',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'averageEnergy',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'groupingMeasurement',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'crackedCasings',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_tests_fk_0',
          columns: ['reloadSessionId'],
          referenceTable: 'reload_sessions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'reload_tests_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'reload_test_session_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reloadSessionId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'reload_test_firearm_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'firearmId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'role_permissions',
      dartName: 'RolePermission',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'securityRoleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'platform',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlatformApp',
        ),
        _isp.ColumnDefinition(
          name: 'module',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:AppModule?',
        ),
        _isp.ColumnDefinition(
          name: 'level',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:AccessLevel',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'role_permissions_fk_0',
          columns: ['securityRoleId'],
          referenceTable: 'security_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'security_roles',
      dartName: 'SecurityRole',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'active',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'service_order_items',
      dartName: 'ServiceOrderItem',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'serviceOrderId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isStockPart',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'supplyPartId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'servicePrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'service_order_items_fk_0',
          columns: ['serviceOrderId'],
          referenceTable: 'service_orders',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'service_order_items_fk_1',
          columns: ['supplyPartId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'service_order_item_order_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'serviceOrderId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'service_orders',
      dartName: 'ServiceOrder',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'clientId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'entryDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'estimatedDeliveryDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'totalPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'discount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'finalPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'paymentMethod',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'service_orders_fk_0',
          columns: ['clientId'],
          referenceTable: 'gunsmith_clients',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'service_orders_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'service_order_client_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'clientId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'service_order_entry_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'entryDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'subscription_plans',
      dartName: 'SubscriptionPlan',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'planType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanType',
        ),
        _isp.ColumnDefinition(
          name: 'unitValue',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'totalValue',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'periodicity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanPeriodicity',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanStatus',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'subscription_plans_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'plan_type_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'planType',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'plan_status_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'supply_stocks',
      dartName: 'SupplyStock',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'unit',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'batchNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'supply_stocks_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'supply_stock_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'trainings',
      dartName: 'Training',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'date',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'location',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'environmentType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'firearmId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'ammunitionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'shotsFired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'distanceMeters',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'score',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'targetImagesUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'trainings_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'trainings_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'trainings_fk_2',
          columns: ['ammunitionId'],
          referenceTable: 'ammunition_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'training_user_id_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'training_date_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'date',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'user_profile',
      dartName: 'UserProfile',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userInfoId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'gender',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:Gender?',
        ),
        _isp.ColumnDefinition(
          name: 'birthDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'rg',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'cpf',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'phone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'addressId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'types',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:UserType>?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:UserStatus',
        ),
        _isp.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'user_profile_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'user_profile_fk_1',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'user_cpf_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'cpf',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'user_email_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'user_roles',
      dartName: 'UserRole',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'userProfileId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'securityRoleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_0',
          columns: ['userProfileId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_1',
          columns: ['securityRoleId'],
          referenceTable: 'security_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_2',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    ..._i1n3uhu0.Protocol.targetTableDefinitions,
    ..._isp.Protocol.targetTableDefinitions,
  ];

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(dynamic data, [Type? t]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _is.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _itwd6fku.RolePermission) {
      return _itwd6fku.RolePermission.fromJson(data) as T;
    }
    if (t == _in9fkuzh.SecurityRole) {
      return _in9fkuzh.SecurityRole.fromJson(data) as T;
    }
    if (t == _iflys0o9.UserRole) {
      return _iflys0o9.UserRole.fromJson(data) as T;
    }
    if (t == _i18rxkcg.Accessory) {
      return _i18rxkcg.Accessory.fromJson(data) as T;
    }
    if (t == _ii1cybhg.Address) {
      return _ii1cybhg.Address.fromJson(data) as T;
    }
    if (t == _i023ezu2.Document) {
      return _i023ezu2.Document.fromJson(data) as T;
    }
    if (t == _i2v0zfwt.AppException) {
      return _i2v0zfwt.AppException.fromJson(data) as T;
    }
    if (t == _i8y573y6.SupplyStock) {
      return _i8y573y6.SupplyStock.fromJson(data) as T;
    }
    if (t == _izgbvseu.UserProfile) {
      return _izgbvseu.UserProfile.fromJson(data) as T;
    }
    if (t == _ienljv70.Company) {
      return _ienljv70.Company.fromJson(data) as T;
    }
    if (t == _i7fsgy8h.CompanyType) {
      return _i7fsgy8h.CompanyType.fromJson(data) as T;
    }
    if (t == _i29p8qv7.Membership) {
      return _i29p8qv7.Membership.fromJson(data) as T;
    }
    if (t == _iqo0zmu4.RangeVisit) {
      return _iqo0zmu4.RangeVisit.fromJson(data) as T;
    }
    if (t == _iugjo2wb.AccessLevel) {
      return _iugjo2wb.AccessLevel.fromJson(data) as T;
    }
    if (t == _ip9lql6r.AccessoryType) {
      return _ip9lql6r.AccessoryType.fromJson(data) as T;
    }
    if (t == _iyudezai.AppModule) {
      return _iyudezai.AppModule.fromJson(data) as T;
    }
    if (t == _iy4kwzbj.AsaasWebhookEventType) {
      return _iy4kwzbj.AsaasWebhookEventType.fromJson(data) as T;
    }
    if (t == _iuu90wd5.ConservationState) {
      return _iuu90wd5.ConservationState.fromJson(data) as T;
    }
    if (t == _ictknidt.Currency) {
      return _ictknidt.Currency.fromJson(data) as T;
    }
    if (t == _ibornalb.DocumentType) {
      return _ibornalb.DocumentType.fromJson(data) as T;
    }
    if (t == _idw6xq4s.FinancialEntryStatus) {
      return _idw6xq4s.FinancialEntryStatus.fromJson(data) as T;
    }
    if (t == _iv2iml2v.FinancialEntryType) {
      return _iv2iml2v.FinancialEntryType.fromJson(data) as T;
    }
    if (t == _itctldyk.FirearmAction) {
      return _itctldyk.FirearmAction.fromJson(data) as T;
    }
    if (t == _ipfzkkcy.FirearmPurpose) {
      return _ipfzkkcy.FirearmPurpose.fromJson(data) as T;
    }
    if (t == _iv6h25me.FirearmType) {
      return _iv6h25me.FirearmType.fromJson(data) as T;
    }
    if (t == _ivjv70nm.Gender) {
      return _ivjv70nm.Gender.fromJson(data) as T;
    }
    if (t == _iwp0wycx.InvoiceStatus) {
      return _iwp0wycx.InvoiceStatus.fromJson(data) as T;
    }
    if (t == _iaawilat.MembershipStatus) {
      return _iaawilat.MembershipStatus.fromJson(data) as T;
    }
    if (t == _ir7lu9de.PaymentMethod) {
      return _ir7lu9de.PaymentMethod.fromJson(data) as T;
    }
    if (t == _ikjzbt8l.PaymentStatus) {
      return _ikjzbt8l.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i2xwc0ya.PixKeyType) {
      return _i2xwc0ya.PixKeyType.fromJson(data) as T;
    }
    if (t == _ihsiicw8.PlanPeriodicity) {
      return _ihsiicw8.PlanPeriodicity.fromJson(data) as T;
    }
    if (t == _i3zf9gwu.PlanStatus) {
      return _i3zf9gwu.PlanStatus.fromJson(data) as T;
    }
    if (t == _itku2k2q.PlanType) {
      return _itku2k2q.PlanType.fromJson(data) as T;
    }
    if (t == _i2yfqo06.PlatformApp) {
      return _i2yfqo06.PlatformApp.fromJson(data) as T;
    }
    if (t == _ibbobdoe.RegistryBody) {
      return _ibbobdoe.RegistryBody.fromJson(data) as T;
    }
    if (t == _ixsenwfe.UsageType) {
      return _ixsenwfe.UsageType.fromJson(data) as T;
    }
    if (t == _ihk15r1q.UserStatus) {
      return _ihk15r1q.UserStatus.fromJson(data) as T;
    }
    if (t == _i6i91bhn.UserType) {
      return _i6i91bhn.UserType.fromJson(data) as T;
    }
    if (t == _i268wbv5.AsaasWebhookEvent) {
      return _i268wbv5.AsaasWebhookEvent.fromJson(data) as T;
    }
    if (t == _i7csfp3a.Bank) {
      return _i7csfp3a.Bank.fromJson(data) as T;
    }
    if (t == _i1qq6iwp.BankAccount) {
      return _i1qq6iwp.BankAccount.fromJson(data) as T;
    }
    if (t == _irygpv1g.FinancialEntry) {
      return _irygpv1g.FinancialEntry.fromJson(data) as T;
    }
    if (t == _ivdiuwq4.Invoice) {
      return _ivdiuwq4.Invoice.fromJson(data) as T;
    }
    if (t == _izi6zi6k.InvoiceItem) {
      return _izi6zi6k.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i3em9ox0.Payment) {
      return _i3em9ox0.Payment.fromJson(data) as T;
    }
    if (t == _ig8bxnp5.Greeting) {
      return _ig8bxnp5.Greeting.fromJson(data) as T;
    }
    if (t == _i1xnjo88.Gunsmith) {
      return _i1xnjo88.Gunsmith.fromJson(data) as T;
    }
    if (t == _iov85fbn.GunsmithClient) {
      return _iov85fbn.GunsmithClient.fromJson(data) as T;
    }
    if (t == _itc8b666.ServiceOrder) {
      return _itc8b666.ServiceOrder.fromJson(data) as T;
    }
    if (t == _igkm4f4b.ServiceOrderItem) {
      return _igkm4f4b.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _ip2j4rpy.Product) {
      return _ip2j4rpy.Product.fromJson(data) as T;
    }
    if (t == _iy51xlx2.ProductGroup) {
      return _iy51xlx2.ProductGroup.fromJson(data) as T;
    }
    if (t == _ig3iv7v1.AmmunitionStock) {
      return _ig3iv7v1.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i7i930pv.Firearm) {
      return _i7i930pv.Firearm.fromJson(data) as T;
    }
    if (t == _ipl25531.ReloadSession) {
      return _ipl25531.ReloadSession.fromJson(data) as T;
    }
    if (t == _ikjmk4up.ReloadTest) {
      return _ikjmk4up.ReloadTest.fromJson(data) as T;
    }
    if (t == _iujmcebm.Training) {
      return _iujmcebm.Training.fromJson(data) as T;
    }
    if (t == _iq5ctf45.SubscriptionPlan) {
      return _iq5ctf45.SubscriptionPlan.fromJson(data) as T;
    }
    if (t == _is.getType<_itwd6fku.RolePermission?>()) {
      return (data != null ? _itwd6fku.RolePermission.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_in9fkuzh.SecurityRole?>()) {
      return (data != null ? _in9fkuzh.SecurityRole.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iflys0o9.UserRole?>()) {
      return (data != null ? _iflys0o9.UserRole.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i18rxkcg.Accessory?>()) {
      return (data != null ? _i18rxkcg.Accessory.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ii1cybhg.Address?>()) {
      return (data != null ? _ii1cybhg.Address.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i023ezu2.Document?>()) {
      return (data != null ? _i023ezu2.Document.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i2v0zfwt.AppException?>()) {
      return (data != null ? _i2v0zfwt.AppException.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i8y573y6.SupplyStock?>()) {
      return (data != null ? _i8y573y6.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_izgbvseu.UserProfile?>()) {
      return (data != null ? _izgbvseu.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ienljv70.Company?>()) {
      return (data != null ? _ienljv70.Company.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i7fsgy8h.CompanyType?>()) {
      return (data != null ? _i7fsgy8h.CompanyType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i29p8qv7.Membership?>()) {
      return (data != null ? _i29p8qv7.Membership.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iqo0zmu4.RangeVisit?>()) {
      return (data != null ? _iqo0zmu4.RangeVisit.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iugjo2wb.AccessLevel?>()) {
      return (data != null ? _iugjo2wb.AccessLevel.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ip9lql6r.AccessoryType?>()) {
      return (data != null ? _ip9lql6r.AccessoryType.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iyudezai.AppModule?>()) {
      return (data != null ? _iyudezai.AppModule.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iy4kwzbj.AsaasWebhookEventType?>()) {
      return (data != null
              ? _iy4kwzbj.AsaasWebhookEventType.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iuu90wd5.ConservationState?>()) {
      return (data != null ? _iuu90wd5.ConservationState.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ictknidt.Currency?>()) {
      return (data != null ? _ictknidt.Currency.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ibornalb.DocumentType?>()) {
      return (data != null ? _ibornalb.DocumentType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_idw6xq4s.FinancialEntryStatus?>()) {
      return (data != null
              ? _idw6xq4s.FinancialEntryStatus.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iv2iml2v.FinancialEntryType?>()) {
      return (data != null ? _iv2iml2v.FinancialEntryType.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_itctldyk.FirearmAction?>()) {
      return (data != null ? _itctldyk.FirearmAction.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ipfzkkcy.FirearmPurpose?>()) {
      return (data != null ? _ipfzkkcy.FirearmPurpose.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iv6h25me.FirearmType?>()) {
      return (data != null ? _iv6h25me.FirearmType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ivjv70nm.Gender?>()) {
      return (data != null ? _ivjv70nm.Gender.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iwp0wycx.InvoiceStatus?>()) {
      return (data != null ? _iwp0wycx.InvoiceStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iaawilat.MembershipStatus?>()) {
      return (data != null ? _iaawilat.MembershipStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ir7lu9de.PaymentMethod?>()) {
      return (data != null ? _ir7lu9de.PaymentMethod.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ikjzbt8l.PaymentStatus?>()) {
      return (data != null ? _ikjzbt8l.PaymentStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i2xwc0ya.PixKeyType?>()) {
      return (data != null ? _i2xwc0ya.PixKeyType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ihsiicw8.PlanPeriodicity?>()) {
      return (data != null ? _ihsiicw8.PlanPeriodicity.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i3zf9gwu.PlanStatus?>()) {
      return (data != null ? _i3zf9gwu.PlanStatus.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_itku2k2q.PlanType?>()) {
      return (data != null ? _itku2k2q.PlanType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i2yfqo06.PlatformApp?>()) {
      return (data != null ? _i2yfqo06.PlatformApp.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ibbobdoe.RegistryBody?>()) {
      return (data != null ? _ibbobdoe.RegistryBody.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ixsenwfe.UsageType?>()) {
      return (data != null ? _ixsenwfe.UsageType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ihk15r1q.UserStatus?>()) {
      return (data != null ? _ihk15r1q.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i6i91bhn.UserType?>()) {
      return (data != null ? _i6i91bhn.UserType.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i268wbv5.AsaasWebhookEvent?>()) {
      return (data != null ? _i268wbv5.AsaasWebhookEvent.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i7csfp3a.Bank?>()) {
      return (data != null ? _i7csfp3a.Bank.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i1qq6iwp.BankAccount?>()) {
      return (data != null ? _i1qq6iwp.BankAccount.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_irygpv1g.FinancialEntry?>()) {
      return (data != null ? _irygpv1g.FinancialEntry.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivdiuwq4.Invoice?>()) {
      return (data != null ? _ivdiuwq4.Invoice.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_izi6zi6k.InvoiceItem?>()) {
      return (data != null ? _izi6zi6k.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i3em9ox0.Payment?>()) {
      return (data != null ? _i3em9ox0.Payment.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ig8bxnp5.Greeting?>()) {
      return (data != null ? _ig8bxnp5.Greeting.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i1xnjo88.Gunsmith?>()) {
      return (data != null ? _i1xnjo88.Gunsmith.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iov85fbn.GunsmithClient?>()) {
      return (data != null ? _iov85fbn.GunsmithClient.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_itc8b666.ServiceOrder?>()) {
      return (data != null ? _itc8b666.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_igkm4f4b.ServiceOrderItem?>()) {
      return (data != null ? _igkm4f4b.ServiceOrderItem.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ip2j4rpy.Product?>()) {
      return (data != null ? _ip2j4rpy.Product.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iy51xlx2.ProductGroup?>()) {
      return (data != null ? _iy51xlx2.ProductGroup.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ig3iv7v1.AmmunitionStock?>()) {
      return (data != null ? _ig3iv7v1.AmmunitionStock.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i7i930pv.Firearm?>()) {
      return (data != null ? _i7i930pv.Firearm.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ipl25531.ReloadSession?>()) {
      return (data != null ? _ipl25531.ReloadSession.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ikjmk4up.ReloadTest?>()) {
      return (data != null ? _ikjmk4up.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iujmcebm.Training?>()) {
      return (data != null ? _iujmcebm.Training.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iq5ctf45.SubscriptionPlan?>()) {
      return (data != null ? _iq5ctf45.SubscriptionPlan.fromJson(data) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _is.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i6i91bhn.UserType>) {
      return (data as List)
              .map((e) => deserialize<_i6i91bhn.UserType>(e))
              .toList()
          as T;
    }
    if (t == _is.getType<List<_i6i91bhn.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i6i91bhn.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_ieqpa344.Accessory>) {
      return (data as List)
              .map((e) => deserialize<_ieqpa344.Accessory>(e))
              .toList()
          as T;
    }
    if (t == List<_iznitra9.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_iznitra9.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_ix4lc03l.BankAccount>) {
      return (data as List)
              .map((e) => deserialize<_ix4lc03l.BankAccount>(e))
              .toList()
          as T;
    }
    if (t == List<_ij8k7xum.Bank>) {
      return (data as List).map((e) => deserialize<_ij8k7xum.Bank>(e)).toList()
          as T;
    }
    if (t == List<_ic0khr1u.Company>) {
      return (data as List)
              .map((e) => deserialize<_ic0khr1u.Company>(e))
              .toList()
          as T;
    }
    if (t == List<_i1s6ob71.Membership>) {
      return (data as List)
              .map((e) => deserialize<_i1s6ob71.Membership>(e))
              .toList()
          as T;
    }
    if (t == List<_illbufnr.RangeVisit>) {
      return (data as List)
              .map((e) => deserialize<_illbufnr.RangeVisit>(e))
              .toList()
          as T;
    }
    if (t == List<_is536eiv.Document>) {
      return (data as List)
              .map((e) => deserialize<_is536eiv.Document>(e))
              .toList()
          as T;
    }
    if (t == List<_ibsfr7x7.FinancialEntry>) {
      return (data as List)
              .map((e) => deserialize<_ibsfr7x7.FinancialEntry>(e))
              .toList()
          as T;
    }
    if (t == List<_iv8sr5qk.Firearm>) {
      return (data as List)
              .map((e) => deserialize<_iv8sr5qk.Firearm>(e))
              .toList()
          as T;
    }
    if (t == List<_icrmzcgd.Gunsmith>) {
      return (data as List)
              .map((e) => deserialize<_icrmzcgd.Gunsmith>(e))
              .toList()
          as T;
    }
    if (t == List<_i3v21vya.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_i3v21vya.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_ipjdt3yw.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_ipjdt3yw.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_ilfracgz.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_ilfracgz.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_i4dj62ps.InvoiceItem>) {
      return (data as List)
              .map((e) => deserialize<_i4dj62ps.InvoiceItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i30q017a.Invoice>) {
      return (data as List)
              .map((e) => deserialize<_i30q017a.Invoice>(e))
              .toList()
          as T;
    }
    if (t == List<_i2rb000s.Payment>) {
      return (data as List)
              .map((e) => deserialize<_i2rb000s.Payment>(e))
              .toList()
          as T;
    }
    if (t == List<_ichcxeb2.Product>) {
      return (data as List)
              .map((e) => deserialize<_ichcxeb2.Product>(e))
              .toList()
          as T;
    }
    if (t == List<_isb7m7oi.ProductGroup>) {
      return (data as List)
              .map((e) => deserialize<_isb7m7oi.ProductGroup>(e))
              .toList()
          as T;
    }
    if (t == List<_ir80yzxg.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_ir80yzxg.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_ifny91bp.ReloadTest>) {
      return (data as List)
              .map((e) => deserialize<_ifny91bp.ReloadTest>(e))
              .toList()
          as T;
    }
    if (t == List<_i8gnh98r.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i8gnh98r.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_itb2zhn4.RolePermission>) {
      return (data as List)
              .map((e) => deserialize<_itb2zhn4.RolePermission>(e))
              .toList()
          as T;
    }
    if (t == List<_i1xchi60.SecurityRole>) {
      return (data as List)
              .map((e) => deserialize<_i1xchi60.SecurityRole>(e))
              .toList()
          as T;
    }
    if (t == List<_ilwo31st.SubscriptionPlan>) {
      return (data as List)
              .map((e) => deserialize<_ilwo31st.SubscriptionPlan>(e))
              .toList()
          as T;
    }
    if (t == List<_i8n7svi8.Training>) {
      return (data as List)
              .map((e) => deserialize<_i8n7svi8.Training>(e))
              .toList()
          as T;
    }
    if (t == List<_i2pyoxii.UserProfile>) {
      return (data as List)
              .map((e) => deserialize<_i2pyoxii.UserProfile>(e))
              .toList()
          as T;
    }
    if (t == List<_is.UuidValue>) {
      return (data as List).map((e) => deserialize<_is.UuidValue>(e)).toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == dynamic) {
      return deserializeDynamicFieldValue(data) as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    try {
      return _i1n3uhu0.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _isp.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _itwd6fku.RolePermission => 'RolePermission',
      _in9fkuzh.SecurityRole => 'SecurityRole',
      _iflys0o9.UserRole => 'UserRole',
      _i18rxkcg.Accessory => 'Accessory',
      _ii1cybhg.Address => 'Address',
      _i023ezu2.Document => 'Document',
      _i2v0zfwt.AppException => 'AppException',
      _i8y573y6.SupplyStock => 'SupplyStock',
      _izgbvseu.UserProfile => 'UserProfile',
      _ienljv70.Company => 'Company',
      _i7fsgy8h.CompanyType => 'CompanyType',
      _i29p8qv7.Membership => 'Membership',
      _iqo0zmu4.RangeVisit => 'RangeVisit',
      _iugjo2wb.AccessLevel => 'AccessLevel',
      _ip9lql6r.AccessoryType => 'AccessoryType',
      _iyudezai.AppModule => 'AppModule',
      _iy4kwzbj.AsaasWebhookEventType => 'AsaasWebhookEventType',
      _iuu90wd5.ConservationState => 'ConservationState',
      _ictknidt.Currency => 'Currency',
      _ibornalb.DocumentType => 'DocumentType',
      _idw6xq4s.FinancialEntryStatus => 'FinancialEntryStatus',
      _iv2iml2v.FinancialEntryType => 'FinancialEntryType',
      _itctldyk.FirearmAction => 'FirearmAction',
      _ipfzkkcy.FirearmPurpose => 'FirearmPurpose',
      _iv6h25me.FirearmType => 'FirearmType',
      _ivjv70nm.Gender => 'Gender',
      _iwp0wycx.InvoiceStatus => 'InvoiceStatus',
      _iaawilat.MembershipStatus => 'MembershipStatus',
      _ir7lu9de.PaymentMethod => 'PaymentMethod',
      _ikjzbt8l.PaymentStatus => 'PaymentStatus',
      _i2xwc0ya.PixKeyType => 'PixKeyType',
      _ihsiicw8.PlanPeriodicity => 'PlanPeriodicity',
      _i3zf9gwu.PlanStatus => 'PlanStatus',
      _itku2k2q.PlanType => 'PlanType',
      _i2yfqo06.PlatformApp => 'PlatformApp',
      _ibbobdoe.RegistryBody => 'RegistryBody',
      _ixsenwfe.UsageType => 'UsageType',
      _ihk15r1q.UserStatus => 'UserStatus',
      _i6i91bhn.UserType => 'UserType',
      _i268wbv5.AsaasWebhookEvent => 'AsaasWebhookEvent',
      _i7csfp3a.Bank => 'Bank',
      _i1qq6iwp.BankAccount => 'BankAccount',
      _irygpv1g.FinancialEntry => 'FinancialEntry',
      _ivdiuwq4.Invoice => 'Invoice',
      _izi6zi6k.InvoiceItem => 'InvoiceItem',
      _i3em9ox0.Payment => 'Payment',
      _ig8bxnp5.Greeting => 'Greeting',
      _i1xnjo88.Gunsmith => 'Gunsmith',
      _iov85fbn.GunsmithClient => 'GunsmithClient',
      _itc8b666.ServiceOrder => 'ServiceOrder',
      _igkm4f4b.ServiceOrderItem => 'ServiceOrderItem',
      _ip2j4rpy.Product => 'Product',
      _iy51xlx2.ProductGroup => 'ProductGroup',
      _ig3iv7v1.AmmunitionStock => 'AmmunitionStock',
      _i7i930pv.Firearm => 'Firearm',
      _ipl25531.ReloadSession => 'ReloadSession',
      _ikjmk4up.ReloadTest => 'ReloadTest',
      _iujmcebm.Training => 'Training',
      _iq5ctf45.SubscriptionPlan => 'SubscriptionPlan',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('oneshot.', '');
    }

    switch (data) {
      case _itwd6fku.RolePermission():
        return 'RolePermission';
      case _in9fkuzh.SecurityRole():
        return 'SecurityRole';
      case _iflys0o9.UserRole():
        return 'UserRole';
      case _i18rxkcg.Accessory():
        return 'Accessory';
      case _ii1cybhg.Address():
        return 'Address';
      case _i023ezu2.Document():
        return 'Document';
      case _i2v0zfwt.AppException():
        return 'AppException';
      case _i8y573y6.SupplyStock():
        return 'SupplyStock';
      case _izgbvseu.UserProfile():
        return 'UserProfile';
      case _ienljv70.Company():
        return 'Company';
      case _i7fsgy8h.CompanyType():
        return 'CompanyType';
      case _i29p8qv7.Membership():
        return 'Membership';
      case _iqo0zmu4.RangeVisit():
        return 'RangeVisit';
      case _iugjo2wb.AccessLevel():
        return 'AccessLevel';
      case _ip9lql6r.AccessoryType():
        return 'AccessoryType';
      case _iyudezai.AppModule():
        return 'AppModule';
      case _iy4kwzbj.AsaasWebhookEventType():
        return 'AsaasWebhookEventType';
      case _iuu90wd5.ConservationState():
        return 'ConservationState';
      case _ictknidt.Currency():
        return 'Currency';
      case _ibornalb.DocumentType():
        return 'DocumentType';
      case _idw6xq4s.FinancialEntryStatus():
        return 'FinancialEntryStatus';
      case _iv2iml2v.FinancialEntryType():
        return 'FinancialEntryType';
      case _itctldyk.FirearmAction():
        return 'FirearmAction';
      case _ipfzkkcy.FirearmPurpose():
        return 'FirearmPurpose';
      case _iv6h25me.FirearmType():
        return 'FirearmType';
      case _ivjv70nm.Gender():
        return 'Gender';
      case _iwp0wycx.InvoiceStatus():
        return 'InvoiceStatus';
      case _iaawilat.MembershipStatus():
        return 'MembershipStatus';
      case _ir7lu9de.PaymentMethod():
        return 'PaymentMethod';
      case _ikjzbt8l.PaymentStatus():
        return 'PaymentStatus';
      case _i2xwc0ya.PixKeyType():
        return 'PixKeyType';
      case _ihsiicw8.PlanPeriodicity():
        return 'PlanPeriodicity';
      case _i3zf9gwu.PlanStatus():
        return 'PlanStatus';
      case _itku2k2q.PlanType():
        return 'PlanType';
      case _i2yfqo06.PlatformApp():
        return 'PlatformApp';
      case _ibbobdoe.RegistryBody():
        return 'RegistryBody';
      case _ixsenwfe.UsageType():
        return 'UsageType';
      case _ihk15r1q.UserStatus():
        return 'UserStatus';
      case _i6i91bhn.UserType():
        return 'UserType';
      case _i268wbv5.AsaasWebhookEvent():
        return 'AsaasWebhookEvent';
      case _i7csfp3a.Bank():
        return 'Bank';
      case _i1qq6iwp.BankAccount():
        return 'BankAccount';
      case _irygpv1g.FinancialEntry():
        return 'FinancialEntry';
      case _ivdiuwq4.Invoice():
        return 'Invoice';
      case _izi6zi6k.InvoiceItem():
        return 'InvoiceItem';
      case _i3em9ox0.Payment():
        return 'Payment';
      case _ig8bxnp5.Greeting():
        return 'Greeting';
      case _i1xnjo88.Gunsmith():
        return 'Gunsmith';
      case _iov85fbn.GunsmithClient():
        return 'GunsmithClient';
      case _itc8b666.ServiceOrder():
        return 'ServiceOrder';
      case _igkm4f4b.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _ip2j4rpy.Product():
        return 'Product';
      case _iy51xlx2.ProductGroup():
        return 'ProductGroup';
      case _ig3iv7v1.AmmunitionStock():
        return 'AmmunitionStock';
      case _i7i930pv.Firearm():
        return 'Firearm';
      case _ipl25531.ReloadSession():
        return 'ReloadSession';
      case _ikjmk4up.ReloadTest():
        return 'ReloadTest';
      case _iujmcebm.Training():
        return 'Training';
      case _iq5ctf45.SubscriptionPlan():
        return 'SubscriptionPlan';
    }
    className = _i1n3uhu0.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod_auth.$className';
    }
    className = _isp.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'RolePermission') {
      return deserialize<_itwd6fku.RolePermission>(data['data']);
    }
    if (dataClassName == 'SecurityRole') {
      return deserialize<_in9fkuzh.SecurityRole>(data['data']);
    }
    if (dataClassName == 'UserRole') {
      return deserialize<_iflys0o9.UserRole>(data['data']);
    }
    if (dataClassName == 'Accessory') {
      return deserialize<_i18rxkcg.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_ii1cybhg.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i023ezu2.Document>(data['data']);
    }
    if (dataClassName == 'AppException') {
      return deserialize<_i2v0zfwt.AppException>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i8y573y6.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_izgbvseu.UserProfile>(data['data']);
    }
    if (dataClassName == 'Company') {
      return deserialize<_ienljv70.Company>(data['data']);
    }
    if (dataClassName == 'CompanyType') {
      return deserialize<_i7fsgy8h.CompanyType>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i29p8qv7.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_iqo0zmu4.RangeVisit>(data['data']);
    }
    if (dataClassName == 'AccessLevel') {
      return deserialize<_iugjo2wb.AccessLevel>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_ip9lql6r.AccessoryType>(data['data']);
    }
    if (dataClassName == 'AppModule') {
      return deserialize<_iyudezai.AppModule>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEventType') {
      return deserialize<_iy4kwzbj.AsaasWebhookEventType>(data['data']);
    }
    if (dataClassName == 'ConservationState') {
      return deserialize<_iuu90wd5.ConservationState>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_ictknidt.Currency>(data['data']);
    }
    if (dataClassName == 'DocumentType') {
      return deserialize<_ibornalb.DocumentType>(data['data']);
    }
    if (dataClassName == 'FinancialEntryStatus') {
      return deserialize<_idw6xq4s.FinancialEntryStatus>(data['data']);
    }
    if (dataClassName == 'FinancialEntryType') {
      return deserialize<_iv2iml2v.FinancialEntryType>(data['data']);
    }
    if (dataClassName == 'FirearmAction') {
      return deserialize<_itctldyk.FirearmAction>(data['data']);
    }
    if (dataClassName == 'FirearmPurpose') {
      return deserialize<_ipfzkkcy.FirearmPurpose>(data['data']);
    }
    if (dataClassName == 'FirearmType') {
      return deserialize<_iv6h25me.FirearmType>(data['data']);
    }
    if (dataClassName == 'Gender') {
      return deserialize<_ivjv70nm.Gender>(data['data']);
    }
    if (dataClassName == 'InvoiceStatus') {
      return deserialize<_iwp0wycx.InvoiceStatus>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_iaawilat.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_ir7lu9de.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_ikjzbt8l.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'PixKeyType') {
      return deserialize<_i2xwc0ya.PixKeyType>(data['data']);
    }
    if (dataClassName == 'PlanPeriodicity') {
      return deserialize<_ihsiicw8.PlanPeriodicity>(data['data']);
    }
    if (dataClassName == 'PlanStatus') {
      return deserialize<_i3zf9gwu.PlanStatus>(data['data']);
    }
    if (dataClassName == 'PlanType') {
      return deserialize<_itku2k2q.PlanType>(data['data']);
    }
    if (dataClassName == 'PlatformApp') {
      return deserialize<_i2yfqo06.PlatformApp>(data['data']);
    }
    if (dataClassName == 'RegistryBody') {
      return deserialize<_ibbobdoe.RegistryBody>(data['data']);
    }
    if (dataClassName == 'UsageType') {
      return deserialize<_ixsenwfe.UsageType>(data['data']);
    }
    if (dataClassName == 'UserStatus') {
      return deserialize<_ihk15r1q.UserStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i6i91bhn.UserType>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEvent') {
      return deserialize<_i268wbv5.AsaasWebhookEvent>(data['data']);
    }
    if (dataClassName == 'Bank') {
      return deserialize<_i7csfp3a.Bank>(data['data']);
    }
    if (dataClassName == 'BankAccount') {
      return deserialize<_i1qq6iwp.BankAccount>(data['data']);
    }
    if (dataClassName == 'FinancialEntry') {
      return deserialize<_irygpv1g.FinancialEntry>(data['data']);
    }
    if (dataClassName == 'Invoice') {
      return deserialize<_ivdiuwq4.Invoice>(data['data']);
    }
    if (dataClassName == 'InvoiceItem') {
      return deserialize<_izi6zi6k.InvoiceItem>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i3em9ox0.Payment>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_ig8bxnp5.Greeting>(data['data']);
    }
    if (dataClassName == 'Gunsmith') {
      return deserialize<_i1xnjo88.Gunsmith>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_iov85fbn.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_itc8b666.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_igkm4f4b.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_ip2j4rpy.Product>(data['data']);
    }
    if (dataClassName == 'ProductGroup') {
      return deserialize<_iy51xlx2.ProductGroup>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_ig3iv7v1.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i7i930pv.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_ipl25531.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_ikjmk4up.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_iujmcebm.Training>(data['data']);
    }
    if (dataClassName == 'SubscriptionPlan') {
      return deserialize<_iq5ctf45.SubscriptionPlan>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i1n3uhu0.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _isp.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _i1n3uhu0.Protocol().registerHostProtocol('oneshot', this);
  }

  @override
  _is.Table? getTableForType(Type t) {
    {
      var table = _i1n3uhu0.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _isp.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _itwd6fku.RolePermission:
        return _itwd6fku.RolePermission.t;
      case _in9fkuzh.SecurityRole:
        return _in9fkuzh.SecurityRole.t;
      case _iflys0o9.UserRole:
        return _iflys0o9.UserRole.t;
      case _i18rxkcg.Accessory:
        return _i18rxkcg.Accessory.t;
      case _ii1cybhg.Address:
        return _ii1cybhg.Address.t;
      case _i023ezu2.Document:
        return _i023ezu2.Document.t;
      case _i8y573y6.SupplyStock:
        return _i8y573y6.SupplyStock.t;
      case _izgbvseu.UserProfile:
        return _izgbvseu.UserProfile.t;
      case _ienljv70.Company:
        return _ienljv70.Company.t;
      case _i29p8qv7.Membership:
        return _i29p8qv7.Membership.t;
      case _iqo0zmu4.RangeVisit:
        return _iqo0zmu4.RangeVisit.t;
      case _i268wbv5.AsaasWebhookEvent:
        return _i268wbv5.AsaasWebhookEvent.t;
      case _i1qq6iwp.BankAccount:
        return _i1qq6iwp.BankAccount.t;
      case _irygpv1g.FinancialEntry:
        return _irygpv1g.FinancialEntry.t;
      case _ivdiuwq4.Invoice:
        return _ivdiuwq4.Invoice.t;
      case _izi6zi6k.InvoiceItem:
        return _izi6zi6k.InvoiceItem.t;
      case _i3em9ox0.Payment:
        return _i3em9ox0.Payment.t;
      case _i1xnjo88.Gunsmith:
        return _i1xnjo88.Gunsmith.t;
      case _iov85fbn.GunsmithClient:
        return _iov85fbn.GunsmithClient.t;
      case _itc8b666.ServiceOrder:
        return _itc8b666.ServiceOrder.t;
      case _igkm4f4b.ServiceOrderItem:
        return _igkm4f4b.ServiceOrderItem.t;
      case _ip2j4rpy.Product:
        return _ip2j4rpy.Product.t;
      case _iy51xlx2.ProductGroup:
        return _iy51xlx2.ProductGroup.t;
      case _ig3iv7v1.AmmunitionStock:
        return _ig3iv7v1.AmmunitionStock.t;
      case _i7i930pv.Firearm:
        return _i7i930pv.Firearm.t;
      case _ipl25531.ReloadSession:
        return _ipl25531.ReloadSession.t;
      case _ikjmk4up.ReloadTest:
        return _ikjmk4up.ReloadTest.t;
      case _iujmcebm.Training:
        return _iujmcebm.Training.t;
      case _iq5ctf45.SubscriptionPlan:
        return _iq5ctf45.SubscriptionPlan.t;
    }
    return null;
  }

  @override
  List<_isp.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'oneshot';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i1n3uhu0.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
