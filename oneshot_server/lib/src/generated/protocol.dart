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
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'access_control/role_permission.dart' as _i4;
import 'access_control/security_role.dart' as _i5;
import 'access_control/user_role.dart' as _i6;
import 'common/accessory.dart' as _i7;
import 'common/address.dart' as _i8;
import 'common/document.dart' as _i9;
import 'common/one_shot_exception.dart' as _i10;
import 'common/supply_stock.dart' as _i11;
import 'common/user_profile.dart' as _i12;
import 'company/company.dart' as _i13;
import 'company/company_type.dart' as _i14;
import 'company/membership.dart' as _i15;
import 'company/range_visit.dart' as _i16;
import 'enums/access_level.enum.dart' as _i17;
import 'enums/accessory.enum.dart' as _i18;
import 'enums/app_module.enum.dart' as _i19;
import 'enums/asaas_webhook_event_type.enum.dart' as _i20;
import 'enums/conservation_state.enum.dart' as _i21;
import 'enums/currency.enum.dart' as _i22;
import 'enums/document_type.enum.dart' as _i23;
import 'enums/financial_entry_status.dart' as _i24;
import 'enums/financial_entry_type.dart' as _i25;
import 'enums/firearm_action.enum.dart' as _i26;
import 'enums/firearm_purpose.enum.dart' as _i27;
import 'enums/firearm_type.enum.dart' as _i28;
import 'enums/gender.enum.dart' as _i29;
import 'enums/invoice_status.enum.dart' as _i30;
import 'enums/membership_status.dart' as _i31;
import 'enums/payment_method.enum.dart' as _i32;
import 'enums/payment_status.enum.dart' as _i33;
import 'enums/pix_key_type.dart' as _i34;
import 'enums/plan_periodicity.enum.dart' as _i35;
import 'enums/plan_status.enum.dart' as _i36;
import 'enums/plan_type.enum.dart' as _i37;
import 'enums/platform_app.enum.dart' as _i38;
import 'enums/registry_body.enum.dart' as _i39;
import 'enums/usage_type.enum.dart' as _i40;
import 'enums/user_status.enum.dart' as _i41;
import 'enums/user_type.enum.dart' as _i42;
import 'finance/asaas_webhook_event.dart' as _i43;
import 'finance/bank.dart' as _i44;
import 'finance/bank_account.dart' as _i45;
import 'finance/financial_entry.dart' as _i46;
import 'finance/invoice.dart' as _i47;
import 'finance/invoice_item.dart' as _i48;
import 'finance/payment.dart' as _i49;
import 'greeting.dart' as _i50;
import 'gunsmith/gunsmith.dart' as _i51;
import 'gunsmith/gunsmith_client.dart' as _i52;
import 'gunsmith/service_order.dart' as _i53;
import 'gunsmith/service_order_item.dart' as _i54;
import 'product/product.dart' as _i55;
import 'product/product_group.dart' as _i56;
import 'shooter/ammunition_stock.dart' as _i57;
import 'shooter/firearm.dart' as _i58;
import 'shooter/reload_session.dart' as _i59;
import 'shooter/reload_test.dart' as _i60;
import 'shooter/training.dart' as _i61;
import 'subscription/subscription_plan.dart' as _i62;
import 'package:oneshot_server/src/generated/common/accessory.dart' as _i63;
import 'package:oneshot_server/src/generated/shooter/ammunition_stock.dart'
    as _i64;
import 'package:oneshot_server/src/generated/finance/bank_account.dart' as _i65;
import 'package:oneshot_server/src/generated/finance/bank.dart' as _i66;
import 'package:oneshot_server/src/generated/company/company.dart' as _i67;
import 'package:oneshot_server/src/generated/company/membership.dart' as _i68;
import 'package:oneshot_server/src/generated/company/range_visit.dart' as _i69;
import 'package:oneshot_server/src/generated/common/document.dart' as _i70;
import 'package:oneshot_server/src/generated/finance/financial_entry.dart'
    as _i71;
import 'package:oneshot_server/src/generated/shooter/firearm.dart' as _i72;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith.dart' as _i73;
import 'package:oneshot_server/src/generated/gunsmith/gunsmith_client.dart'
    as _i74;
import 'package:oneshot_server/src/generated/gunsmith/service_order_item.dart'
    as _i75;
import 'package:oneshot_server/src/generated/gunsmith/service_order.dart'
    as _i76;
import 'package:oneshot_server/src/generated/finance/invoice_item.dart' as _i77;
import 'package:oneshot_server/src/generated/finance/invoice.dart' as _i78;
import 'package:oneshot_server/src/generated/finance/payment.dart' as _i79;
import 'package:oneshot_server/src/generated/product/product.dart' as _i80;
import 'package:oneshot_server/src/generated/product/product_group.dart'
    as _i81;
import 'package:oneshot_server/src/generated/shooter/reload_session.dart'
    as _i82;
import 'package:oneshot_server/src/generated/shooter/reload_test.dart' as _i83;
import 'package:oneshot_server/src/generated/common/supply_stock.dart' as _i84;
import 'package:oneshot_server/src/generated/access_control/role_permission.dart'
    as _i85;
import 'package:oneshot_server/src/generated/access_control/security_role.dart'
    as _i86;
import 'package:oneshot_server/src/generated/subscription/subscription_plan.dart'
    as _i87;
import 'package:oneshot_server/src/generated/shooter/training.dart' as _i88;
import 'package:oneshot_server/src/generated/common/user_profile.dart' as _i89;
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

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'accessories',
      dartName: 'Accessory',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'purpose',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:AccessoryType',
        ),
        _i2.ColumnDefinition(
          name: 'serialNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'manufactureCountry',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'manufacturer',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'model',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'conservationState',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:ConservationState?',
        ),
        _i2.ColumnDefinition(
          name: 'usageType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:UsageType?',
        ),
        _i2.ColumnDefinition(
          name: 'dimensions',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'weight',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'finishMaterial',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'invoiceNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'invoiceEmissionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'sellerData',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'registryBody',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:RegistryBody?',
        ),
        _i2.ColumnDefinition(
          name: 'customizations',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'maintenanceHistory',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'images',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'accessories_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'accessories_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'accessories_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'accessory_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'accessory_firearm_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'firearmId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'accessory_serial_number_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'addresses',
      dartName: 'Address',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'street',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'number',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'complement',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'neighborhood',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'city',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'state',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'zipCode',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userProfileId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'addresses_fk_0',
          columns: ['userProfileId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'addresses_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'address_zip_code_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'ammunition_stocks',
      dartName: 'AmmunitionStock',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'manufacturer',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'caliber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'projectileType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'projectileWeightGrains',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'quantity',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'casingBatch',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'ammunition_stocks_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'ammunition_stocks_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'ammo_stock_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'ammo_stock_caliber_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'asaas_webhook_events',
      dartName: 'AsaasWebhookEvent',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'event',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'payload',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'processed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'processedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'error',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'receivedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'asaas_webhook_events_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'asaas_event_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'eventId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'asaas_event_processed_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'processed',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'asaas_event_type_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'event',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'asaas_event_received_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'bank_accounts',
      dartName: 'BankAccount',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bankName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'agency',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'agencyDigit',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'accountNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'accountDigit',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'balance',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'originModule',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'pixKey',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'pixKeyType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:PixKeyType?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'bank_accounts_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'bank_accounts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'bank_account_origin_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'bank_account_status_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'companies',
      dartName: 'Company',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'cnpj',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:CompanyType',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'active',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _i2.ColumnDefinition(
          name: 'incomeValue',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
          columnDefault: '1000.00',
        ),
        _i2.ColumnDefinition(
          name: 'asaasAccountId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasWalletId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasApiKey',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'companies_fk_0',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'companies_fk_1',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'companies_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'company_cnpj_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'cnpj',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'company_owner_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'documents',
      dartName: 'Document',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'accessoryId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:DocumentType',
        ),
        _i2.ColumnDefinition(
          name: 'registryBody',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:RegistryBody',
        ),
        _i2.ColumnDefinition(
          name: 'number',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'emissionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'expirationDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'filePath',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'supplierName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'supplierCpfCnpj',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'supplierPhone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'supplierAddress',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'documents_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'documents_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'documents_fk_2',
          columns: ['accessoryId'],
          referenceTable: 'accessories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'documents_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'document_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'document_number_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'number',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'document_firearm_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'firearmId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'document_accessory_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'financial_entries',
      dartName: 'FinancialEntry',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FinancialEntryType',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'amount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'dueDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'paymentDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FinancialEntryStatus',
        ),
        _i2.ColumnDefinition(
          name: 'originModule',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlatformApp',
        ),
        _i2.ColumnDefinition(
          name: 'bankAccountId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'invoiceId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_0',
          columns: ['bankAccountId'],
          referenceTable: 'bank_accounts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_1',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'financial_entries_fk_2',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'financial_entries_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'financial_entry_type_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'type',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'financial_entry_status_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'financial_entry_due_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'dueDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'financial_entry_origin_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'firearms',
      dartName: 'Firearm',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'purpose',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmPurpose',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmType',
        ),
        _i2.ColumnDefinition(
          name: 'action',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:FirearmAction',
        ),
        _i2.ColumnDefinition(
          name: 'usageType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:UsageType',
        ),
        _i2.ColumnDefinition(
          name: 'serialNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'manufactureCountry',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'manufacturer',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'model',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bolt',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'frame',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'grip',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'conservationState',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ConservationState',
        ),
        _i2.ColumnDefinition(
          name: 'caliber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'barrelsCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'barrelLength',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'soulType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'sightType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'riflingCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'riflingDirection',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'magazineCapacity',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'magazineCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'dimensions',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'weight',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'purchasePrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'saleDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'salePrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'buyerData',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'customizations',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'images',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _i2.ColumnDefinition(
          name: 'cleaningHistory',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'maintenanceHistory',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'totalShots',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'firearms_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'firearms_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'firearm_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'firearm_serial_number_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'gunsmith_clients',
      dartName: 'GunsmithClient',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'gunsmithUserInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'cpf',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'rg',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'gunsmith_clients_fk_0',
          columns: ['gunsmithUserInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'gunsmith_clients_fk_1',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'gunsmith_clients_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'gunsmith_client_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'gunsmithUserInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'gunsmith_client_cpf_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'gunsmiths',
      dartName: 'Gunsmith',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'taxId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'active',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _i2.ColumnDefinition(
          name: 'incomeValue',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
          columnDefault: '1000.00',
        ),
        _i2.ColumnDefinition(
          name: 'asaasAccountId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasWalletId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasApiKey',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'gunsmiths_fk_0',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'gunsmiths_fk_1',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'gunsmiths_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'gunsmith_tax_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'taxId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'gunsmith_owner_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'invoice_items',
      dartName: 'InvoiceItem',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'quantity',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'unitPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'totalPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'invoiceId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'invoice_items_fk_0',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'invoice_items_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_item_invoice_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'invoices',
      dartName: 'Invoice',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'originModule',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'direction',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:InvoiceStatus',
        ),
        _i2.ColumnDefinition(
          name: 'issueDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'dueDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'totalAmount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'discount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'finalAmount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'currency',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:Currency',
        ),
        _i2.ColumnDefinition(
          name: 'notes',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'isRecurrent',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'asaasInstallmentId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'gunsmithId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'draweeId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'invoices_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'invoices_fk_1',
          columns: ['gunsmithId'],
          referenceTable: 'gunsmiths',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'invoices_fk_2',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'invoices_fk_3',
          columns: ['draweeId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'invoices_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_status_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_due_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'dueDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_company_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_gunsmith_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'gunsmithId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'invoice_asaas_installment_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'memberships',
      dartName: 'Membership',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'membershipNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'startDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'validUntil',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:MembershipStatus',
          columnDefault: '\'active\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'planName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'memberships_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'memberships_fk_1',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'memberships_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'membership_user_company_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'membership_company_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'payments',
      dartName: 'Payment',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'paymentDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'amountPaid',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'paymentMethod',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PaymentMethod',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PaymentStatus',
        ),
        _i2.ColumnDefinition(
          name: 'currency',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:Currency',
        ),
        _i2.ColumnDefinition(
          name: 'asaasPaymentId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasBillingType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasDueDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasNetValue',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasInvoiceUrl',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasBankSlipUrl',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasPixQrCodePayload',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasPixQrCodeImage',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasRefundedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'invoiceId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'payments_fk_0',
          columns: ['invoiceId'],
          referenceTable: 'invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'payments_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'payment_invoice_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'invoiceId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'payment_status_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'status',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'payment_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'paymentDate',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'payment_asaas_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'product_groups',
      dartName: 'ProductGroup',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'originModule',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'product_groups_fk_0',
          columns: ['ownerId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'product_groups_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'product_group_origin_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'product_group_owner_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'products',
      dartName: 'Product',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'unit',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'unitPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'originModule',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'groupId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'products_fk_0',
          columns: ['groupId'],
          referenceTable: 'product_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'products_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'products_code_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'products_origin_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'originModule',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'product_group_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'range_visits',
      dartName: 'RangeVisit',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'checkIn',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'checkOut',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'shotsFired',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _i2.ColumnDefinition(
          name: 'notes',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'habitualityReportGenerated',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_0',
          columns: ['userId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_1',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'range_visits_fk_2',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'range_visits_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'range_visit_user_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'range_visit_company_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'companyId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'range_visit_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'reload_sessions',
      dartName: 'ReloadSession',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'reloadDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'pressId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'caliber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'casingBatch',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'reloadsCompleted',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'powderId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'powderGrains',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'primerId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'projectileId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'oal',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'totalCost',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'unitCost',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_1',
          columns: ['pressId'],
          referenceTable: 'accessories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_2',
          columns: ['powderId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_3',
          columns: ['primerId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_sessions_fk_4',
          columns: ['projectileId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'reload_sessions_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'reload_session_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'reload_session_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'reload_tests',
      dartName: 'ReloadTest',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'reloadSessionId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'testDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'shotsFired',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'highestVelocityFps',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'lowestVelocityFps',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'averageVelocityFps',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'powerFactor',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'averageEnergy',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'groupingMeasurement',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'crackedCasings',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_tests_fk_0',
          columns: ['reloadSessionId'],
          referenceTable: 'reload_sessions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'reload_tests_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'reload_tests_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'reload_test_session_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'reloadSessionId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'reload_test_firearm_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'role_permissions',
      dartName: 'RolePermission',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'securityRoleId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'platform',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlatformApp',
        ),
        _i2.ColumnDefinition(
          name: 'module',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:AppModule?',
        ),
        _i2.ColumnDefinition(
          name: 'level',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:AccessLevel',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'role_permissions_fk_0',
          columns: ['securityRoleId'],
          referenceTable: 'security_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'role_permissions_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'security_roles',
      dartName: 'SecurityRole',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'active',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'security_roles_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'service_order_items',
      dartName: 'ServiceOrderItem',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'serviceOrderId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isStockPart',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'supplyPartId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'servicePrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'service_order_items_fk_0',
          columns: ['serviceOrderId'],
          referenceTable: 'service_orders',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'service_order_items_fk_1',
          columns: ['supplyPartId'],
          referenceTable: 'supply_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'service_order_items_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'service_order_item_order_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'service_orders',
      dartName: 'ServiceOrder',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'clientId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'entryDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'estimatedDeliveryDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'totalPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'discount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'finalPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'paymentMethod',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'notes',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'service_orders_fk_0',
          columns: ['clientId'],
          referenceTable: 'gunsmith_clients',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'service_orders_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'service_orders_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'service_order_client_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'clientId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'service_order_entry_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'subscription_plans',
      dartName: 'SubscriptionPlan',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'planType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanType',
        ),
        _i2.ColumnDefinition(
          name: 'unitValue',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'quantity',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'totalValue',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'periodicity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanPeriodicity',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanStatus',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'subscription_plans_fk_0',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'subscription_plans_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'plan_type_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'planType',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'plan_status_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'supply_stocks',
      dartName: 'SupplyStock',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'quantity',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'unit',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'acquisitionDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'batchNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'supply_stocks_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'supply_stocks_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'supply_stock_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'trainings',
      dartName: 'Training',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'environmentType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'firearmId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'ammunitionId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'shotsFired',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'distanceMeters',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'score',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'targetImagesUrl',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'trainings_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'trainings_fk_1',
          columns: ['firearmId'],
          referenceTable: 'firearms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'trainings_fk_2',
          columns: ['ammunitionId'],
          referenceTable: 'ammunition_stocks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'trainings_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'training_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userInfoId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'training_date_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'user_profile',
      dartName: 'UserProfile',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userInfoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:Gender?',
        ),
        _i2.ColumnDefinition(
          name: 'birthDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'rg',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'cpf',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'types',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:UserType>?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:UserStatus',
        ),
        _i2.ColumnDefinition(
          name: 'asaasCustomerId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'asaasOnboardingFailureReason',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_profile_fk_0',
          columns: ['userInfoId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_profile_fk_1',
          columns: ['addressId'],
          referenceTable: 'addresses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_profile_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'user_cpf_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'cpf',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'user_email_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
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
    _i2.TableDefinition(
      name: 'user_roles',
      dartName: 'UserRole',
      schema: 'public',
      module: 'oneshot',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'userProfileId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'securityRoleId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_0',
          columns: ['userProfileId'],
          referenceTable: 'user_profile',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_1',
          columns: ['securityRoleId'],
          referenceTable: 'security_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_roles_fk_2',
          columns: ['companyId'],
          referenceTable: 'companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_roles_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i4.RolePermission) {
      return _i4.RolePermission.fromJson(data) as T;
    }
    if (t == _i5.SecurityRole) {
      return _i5.SecurityRole.fromJson(data) as T;
    }
    if (t == _i6.UserRole) {
      return _i6.UserRole.fromJson(data) as T;
    }
    if (t == _i7.Accessory) {
      return _i7.Accessory.fromJson(data) as T;
    }
    if (t == _i8.Address) {
      return _i8.Address.fromJson(data) as T;
    }
    if (t == _i9.Document) {
      return _i9.Document.fromJson(data) as T;
    }
    if (t == _i10.AppException) {
      return _i10.AppException.fromJson(data) as T;
    }
    if (t == _i11.SupplyStock) {
      return _i11.SupplyStock.fromJson(data) as T;
    }
    if (t == _i12.UserProfile) {
      return _i12.UserProfile.fromJson(data) as T;
    }
    if (t == _i13.Company) {
      return _i13.Company.fromJson(data) as T;
    }
    if (t == _i14.CompanyType) {
      return _i14.CompanyType.fromJson(data) as T;
    }
    if (t == _i15.Membership) {
      return _i15.Membership.fromJson(data) as T;
    }
    if (t == _i16.RangeVisit) {
      return _i16.RangeVisit.fromJson(data) as T;
    }
    if (t == _i17.AccessLevel) {
      return _i17.AccessLevel.fromJson(data) as T;
    }
    if (t == _i18.AccessoryType) {
      return _i18.AccessoryType.fromJson(data) as T;
    }
    if (t == _i19.AppModule) {
      return _i19.AppModule.fromJson(data) as T;
    }
    if (t == _i20.AsaasWebhookEventType) {
      return _i20.AsaasWebhookEventType.fromJson(data) as T;
    }
    if (t == _i21.ConservationState) {
      return _i21.ConservationState.fromJson(data) as T;
    }
    if (t == _i22.Currency) {
      return _i22.Currency.fromJson(data) as T;
    }
    if (t == _i23.DocumentType) {
      return _i23.DocumentType.fromJson(data) as T;
    }
    if (t == _i24.FinancialEntryStatus) {
      return _i24.FinancialEntryStatus.fromJson(data) as T;
    }
    if (t == _i25.FinancialEntryType) {
      return _i25.FinancialEntryType.fromJson(data) as T;
    }
    if (t == _i26.FirearmAction) {
      return _i26.FirearmAction.fromJson(data) as T;
    }
    if (t == _i27.FirearmPurpose) {
      return _i27.FirearmPurpose.fromJson(data) as T;
    }
    if (t == _i28.FirearmType) {
      return _i28.FirearmType.fromJson(data) as T;
    }
    if (t == _i29.Gender) {
      return _i29.Gender.fromJson(data) as T;
    }
    if (t == _i30.InvoiceStatus) {
      return _i30.InvoiceStatus.fromJson(data) as T;
    }
    if (t == _i31.MembershipStatus) {
      return _i31.MembershipStatus.fromJson(data) as T;
    }
    if (t == _i32.PaymentMethod) {
      return _i32.PaymentMethod.fromJson(data) as T;
    }
    if (t == _i33.PaymentStatus) {
      return _i33.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i34.PixKeyType) {
      return _i34.PixKeyType.fromJson(data) as T;
    }
    if (t == _i35.PlanPeriodicity) {
      return _i35.PlanPeriodicity.fromJson(data) as T;
    }
    if (t == _i36.PlanStatus) {
      return _i36.PlanStatus.fromJson(data) as T;
    }
    if (t == _i37.PlanType) {
      return _i37.PlanType.fromJson(data) as T;
    }
    if (t == _i38.PlatformApp) {
      return _i38.PlatformApp.fromJson(data) as T;
    }
    if (t == _i39.RegistryBody) {
      return _i39.RegistryBody.fromJson(data) as T;
    }
    if (t == _i40.UsageType) {
      return _i40.UsageType.fromJson(data) as T;
    }
    if (t == _i41.UserStatus) {
      return _i41.UserStatus.fromJson(data) as T;
    }
    if (t == _i42.UserType) {
      return _i42.UserType.fromJson(data) as T;
    }
    if (t == _i43.AsaasWebhookEvent) {
      return _i43.AsaasWebhookEvent.fromJson(data) as T;
    }
    if (t == _i44.Bank) {
      return _i44.Bank.fromJson(data) as T;
    }
    if (t == _i45.BankAccount) {
      return _i45.BankAccount.fromJson(data) as T;
    }
    if (t == _i46.FinancialEntry) {
      return _i46.FinancialEntry.fromJson(data) as T;
    }
    if (t == _i47.Invoice) {
      return _i47.Invoice.fromJson(data) as T;
    }
    if (t == _i48.InvoiceItem) {
      return _i48.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i49.Payment) {
      return _i49.Payment.fromJson(data) as T;
    }
    if (t == _i50.Greeting) {
      return _i50.Greeting.fromJson(data) as T;
    }
    if (t == _i51.Gunsmith) {
      return _i51.Gunsmith.fromJson(data) as T;
    }
    if (t == _i52.GunsmithClient) {
      return _i52.GunsmithClient.fromJson(data) as T;
    }
    if (t == _i53.ServiceOrder) {
      return _i53.ServiceOrder.fromJson(data) as T;
    }
    if (t == _i54.ServiceOrderItem) {
      return _i54.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _i55.Product) {
      return _i55.Product.fromJson(data) as T;
    }
    if (t == _i56.ProductGroup) {
      return _i56.ProductGroup.fromJson(data) as T;
    }
    if (t == _i57.AmmunitionStock) {
      return _i57.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i58.Firearm) {
      return _i58.Firearm.fromJson(data) as T;
    }
    if (t == _i59.ReloadSession) {
      return _i59.ReloadSession.fromJson(data) as T;
    }
    if (t == _i60.ReloadTest) {
      return _i60.ReloadTest.fromJson(data) as T;
    }
    if (t == _i61.Training) {
      return _i61.Training.fromJson(data) as T;
    }
    if (t == _i62.SubscriptionPlan) {
      return _i62.SubscriptionPlan.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.RolePermission?>()) {
      return (data != null ? _i4.RolePermission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.SecurityRole?>()) {
      return (data != null ? _i5.SecurityRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.UserRole?>()) {
      return (data != null ? _i6.UserRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Accessory?>()) {
      return (data != null ? _i7.Accessory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Address?>()) {
      return (data != null ? _i8.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Document?>()) {
      return (data != null ? _i9.Document.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.AppException?>()) {
      return (data != null ? _i10.AppException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.SupplyStock?>()) {
      return (data != null ? _i11.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.UserProfile?>()) {
      return (data != null ? _i12.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Company?>()) {
      return (data != null ? _i13.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.CompanyType?>()) {
      return (data != null ? _i14.CompanyType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Membership?>()) {
      return (data != null ? _i15.Membership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.RangeVisit?>()) {
      return (data != null ? _i16.RangeVisit.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.AccessLevel?>()) {
      return (data != null ? _i17.AccessLevel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.AccessoryType?>()) {
      return (data != null ? _i18.AccessoryType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.AppModule?>()) {
      return (data != null ? _i19.AppModule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.AsaasWebhookEventType?>()) {
      return (data != null ? _i20.AsaasWebhookEventType.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i21.ConservationState?>()) {
      return (data != null ? _i21.ConservationState.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.Currency?>()) {
      return (data != null ? _i22.Currency.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.DocumentType?>()) {
      return (data != null ? _i23.DocumentType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.FinancialEntryStatus?>()) {
      return (data != null ? _i24.FinancialEntryStatus.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i25.FinancialEntryType?>()) {
      return (data != null ? _i25.FinancialEntryType.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i26.FirearmAction?>()) {
      return (data != null ? _i26.FirearmAction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.FirearmPurpose?>()) {
      return (data != null ? _i27.FirearmPurpose.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.FirearmType?>()) {
      return (data != null ? _i28.FirearmType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.Gender?>()) {
      return (data != null ? _i29.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.InvoiceStatus?>()) {
      return (data != null ? _i30.InvoiceStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.MembershipStatus?>()) {
      return (data != null ? _i31.MembershipStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.PaymentMethod?>()) {
      return (data != null ? _i32.PaymentMethod.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.PaymentStatus?>()) {
      return (data != null ? _i33.PaymentStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.PixKeyType?>()) {
      return (data != null ? _i34.PixKeyType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.PlanPeriodicity?>()) {
      return (data != null ? _i35.PlanPeriodicity.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.PlanStatus?>()) {
      return (data != null ? _i36.PlanStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.PlanType?>()) {
      return (data != null ? _i37.PlanType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i38.PlatformApp?>()) {
      return (data != null ? _i38.PlatformApp.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i39.RegistryBody?>()) {
      return (data != null ? _i39.RegistryBody.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i40.UsageType?>()) {
      return (data != null ? _i40.UsageType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i41.UserStatus?>()) {
      return (data != null ? _i41.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i42.UserType?>()) {
      return (data != null ? _i42.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i43.AsaasWebhookEvent?>()) {
      return (data != null ? _i43.AsaasWebhookEvent.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i44.Bank?>()) {
      return (data != null ? _i44.Bank.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i45.BankAccount?>()) {
      return (data != null ? _i45.BankAccount.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i46.FinancialEntry?>()) {
      return (data != null ? _i46.FinancialEntry.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i47.Invoice?>()) {
      return (data != null ? _i47.Invoice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i48.InvoiceItem?>()) {
      return (data != null ? _i48.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i49.Payment?>()) {
      return (data != null ? _i49.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i50.Greeting?>()) {
      return (data != null ? _i50.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i51.Gunsmith?>()) {
      return (data != null ? _i51.Gunsmith.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i52.GunsmithClient?>()) {
      return (data != null ? _i52.GunsmithClient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i53.ServiceOrder?>()) {
      return (data != null ? _i53.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i54.ServiceOrderItem?>()) {
      return (data != null ? _i54.ServiceOrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i55.Product?>()) {
      return (data != null ? _i55.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i56.ProductGroup?>()) {
      return (data != null ? _i56.ProductGroup.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i57.AmmunitionStock?>()) {
      return (data != null ? _i57.AmmunitionStock.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i58.Firearm?>()) {
      return (data != null ? _i58.Firearm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i59.ReloadSession?>()) {
      return (data != null ? _i59.ReloadSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i60.ReloadTest?>()) {
      return (data != null ? _i60.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i61.Training?>()) {
      return (data != null ? _i61.Training.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i62.SubscriptionPlan?>()) {
      return (data != null ? _i62.SubscriptionPlan.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i42.UserType>) {
      return (data as List).map((e) => deserialize<_i42.UserType>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<_i42.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i42.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_i63.Accessory>) {
      return (data as List).map((e) => deserialize<_i63.Accessory>(e)).toList()
          as T;
    }
    if (t == List<_i64.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_i64.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i65.BankAccount>) {
      return (data as List)
              .map((e) => deserialize<_i65.BankAccount>(e))
              .toList()
          as T;
    }
    if (t == List<_i66.Bank>) {
      return (data as List).map((e) => deserialize<_i66.Bank>(e)).toList() as T;
    }
    if (t == List<_i67.Company>) {
      return (data as List).map((e) => deserialize<_i67.Company>(e)).toList()
          as T;
    }
    if (t == List<_i68.Membership>) {
      return (data as List).map((e) => deserialize<_i68.Membership>(e)).toList()
          as T;
    }
    if (t == List<_i69.RangeVisit>) {
      return (data as List).map((e) => deserialize<_i69.RangeVisit>(e)).toList()
          as T;
    }
    if (t == List<_i70.Document>) {
      return (data as List).map((e) => deserialize<_i70.Document>(e)).toList()
          as T;
    }
    if (t == List<_i71.FinancialEntry>) {
      return (data as List)
              .map((e) => deserialize<_i71.FinancialEntry>(e))
              .toList()
          as T;
    }
    if (t == List<_i72.Firearm>) {
      return (data as List).map((e) => deserialize<_i72.Firearm>(e)).toList()
          as T;
    }
    if (t == List<_i73.Gunsmith>) {
      return (data as List).map((e) => deserialize<_i73.Gunsmith>(e)).toList()
          as T;
    }
    if (t == List<_i74.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_i74.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_i75.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_i75.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i76.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_i76.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_i77.InvoiceItem>) {
      return (data as List)
              .map((e) => deserialize<_i77.InvoiceItem>(e))
              .toList()
          as T;
    }
    if (t == List<_i78.Invoice>) {
      return (data as List).map((e) => deserialize<_i78.Invoice>(e)).toList()
          as T;
    }
    if (t == List<_i79.Payment>) {
      return (data as List).map((e) => deserialize<_i79.Payment>(e)).toList()
          as T;
    }
    if (t == List<_i80.Product>) {
      return (data as List).map((e) => deserialize<_i80.Product>(e)).toList()
          as T;
    }
    if (t == List<_i81.ProductGroup>) {
      return (data as List)
              .map((e) => deserialize<_i81.ProductGroup>(e))
              .toList()
          as T;
    }
    if (t == List<_i82.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_i82.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_i83.ReloadTest>) {
      return (data as List).map((e) => deserialize<_i83.ReloadTest>(e)).toList()
          as T;
    }
    if (t == List<_i84.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i84.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i85.RolePermission>) {
      return (data as List)
              .map((e) => deserialize<_i85.RolePermission>(e))
              .toList()
          as T;
    }
    if (t == List<_i86.SecurityRole>) {
      return (data as List)
              .map((e) => deserialize<_i86.SecurityRole>(e))
              .toList()
          as T;
    }
    if (t == List<_i87.SubscriptionPlan>) {
      return (data as List)
              .map((e) => deserialize<_i87.SubscriptionPlan>(e))
              .toList()
          as T;
    }
    if (t == List<_i88.Training>) {
      return (data as List).map((e) => deserialize<_i88.Training>(e)).toList()
          as T;
    }
    if (t == List<_i89.UserProfile>) {
      return (data as List)
              .map((e) => deserialize<_i89.UserProfile>(e))
              .toList()
          as T;
    }
    if (t == List<_i1.UuidValue>) {
      return (data as List).map((e) => deserialize<_i1.UuidValue>(e)).toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i4.RolePermission => 'RolePermission',
      _i5.SecurityRole => 'SecurityRole',
      _i6.UserRole => 'UserRole',
      _i7.Accessory => 'Accessory',
      _i8.Address => 'Address',
      _i9.Document => 'Document',
      _i10.AppException => 'AppException',
      _i11.SupplyStock => 'SupplyStock',
      _i12.UserProfile => 'UserProfile',
      _i13.Company => 'Company',
      _i14.CompanyType => 'CompanyType',
      _i15.Membership => 'Membership',
      _i16.RangeVisit => 'RangeVisit',
      _i17.AccessLevel => 'AccessLevel',
      _i18.AccessoryType => 'AccessoryType',
      _i19.AppModule => 'AppModule',
      _i20.AsaasWebhookEventType => 'AsaasWebhookEventType',
      _i21.ConservationState => 'ConservationState',
      _i22.Currency => 'Currency',
      _i23.DocumentType => 'DocumentType',
      _i24.FinancialEntryStatus => 'FinancialEntryStatus',
      _i25.FinancialEntryType => 'FinancialEntryType',
      _i26.FirearmAction => 'FirearmAction',
      _i27.FirearmPurpose => 'FirearmPurpose',
      _i28.FirearmType => 'FirearmType',
      _i29.Gender => 'Gender',
      _i30.InvoiceStatus => 'InvoiceStatus',
      _i31.MembershipStatus => 'MembershipStatus',
      _i32.PaymentMethod => 'PaymentMethod',
      _i33.PaymentStatus => 'PaymentStatus',
      _i34.PixKeyType => 'PixKeyType',
      _i35.PlanPeriodicity => 'PlanPeriodicity',
      _i36.PlanStatus => 'PlanStatus',
      _i37.PlanType => 'PlanType',
      _i38.PlatformApp => 'PlatformApp',
      _i39.RegistryBody => 'RegistryBody',
      _i40.UsageType => 'UsageType',
      _i41.UserStatus => 'UserStatus',
      _i42.UserType => 'UserType',
      _i43.AsaasWebhookEvent => 'AsaasWebhookEvent',
      _i44.Bank => 'Bank',
      _i45.BankAccount => 'BankAccount',
      _i46.FinancialEntry => 'FinancialEntry',
      _i47.Invoice => 'Invoice',
      _i48.InvoiceItem => 'InvoiceItem',
      _i49.Payment => 'Payment',
      _i50.Greeting => 'Greeting',
      _i51.Gunsmith => 'Gunsmith',
      _i52.GunsmithClient => 'GunsmithClient',
      _i53.ServiceOrder => 'ServiceOrder',
      _i54.ServiceOrderItem => 'ServiceOrderItem',
      _i55.Product => 'Product',
      _i56.ProductGroup => 'ProductGroup',
      _i57.AmmunitionStock => 'AmmunitionStock',
      _i58.Firearm => 'Firearm',
      _i59.ReloadSession => 'ReloadSession',
      _i60.ReloadTest => 'ReloadTest',
      _i61.Training => 'Training',
      _i62.SubscriptionPlan => 'SubscriptionPlan',
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
      case _i4.RolePermission():
        return 'RolePermission';
      case _i5.SecurityRole():
        return 'SecurityRole';
      case _i6.UserRole():
        return 'UserRole';
      case _i7.Accessory():
        return 'Accessory';
      case _i8.Address():
        return 'Address';
      case _i9.Document():
        return 'Document';
      case _i10.AppException():
        return 'AppException';
      case _i11.SupplyStock():
        return 'SupplyStock';
      case _i12.UserProfile():
        return 'UserProfile';
      case _i13.Company():
        return 'Company';
      case _i14.CompanyType():
        return 'CompanyType';
      case _i15.Membership():
        return 'Membership';
      case _i16.RangeVisit():
        return 'RangeVisit';
      case _i17.AccessLevel():
        return 'AccessLevel';
      case _i18.AccessoryType():
        return 'AccessoryType';
      case _i19.AppModule():
        return 'AppModule';
      case _i20.AsaasWebhookEventType():
        return 'AsaasWebhookEventType';
      case _i21.ConservationState():
        return 'ConservationState';
      case _i22.Currency():
        return 'Currency';
      case _i23.DocumentType():
        return 'DocumentType';
      case _i24.FinancialEntryStatus():
        return 'FinancialEntryStatus';
      case _i25.FinancialEntryType():
        return 'FinancialEntryType';
      case _i26.FirearmAction():
        return 'FirearmAction';
      case _i27.FirearmPurpose():
        return 'FirearmPurpose';
      case _i28.FirearmType():
        return 'FirearmType';
      case _i29.Gender():
        return 'Gender';
      case _i30.InvoiceStatus():
        return 'InvoiceStatus';
      case _i31.MembershipStatus():
        return 'MembershipStatus';
      case _i32.PaymentMethod():
        return 'PaymentMethod';
      case _i33.PaymentStatus():
        return 'PaymentStatus';
      case _i34.PixKeyType():
        return 'PixKeyType';
      case _i35.PlanPeriodicity():
        return 'PlanPeriodicity';
      case _i36.PlanStatus():
        return 'PlanStatus';
      case _i37.PlanType():
        return 'PlanType';
      case _i38.PlatformApp():
        return 'PlatformApp';
      case _i39.RegistryBody():
        return 'RegistryBody';
      case _i40.UsageType():
        return 'UsageType';
      case _i41.UserStatus():
        return 'UserStatus';
      case _i42.UserType():
        return 'UserType';
      case _i43.AsaasWebhookEvent():
        return 'AsaasWebhookEvent';
      case _i44.Bank():
        return 'Bank';
      case _i45.BankAccount():
        return 'BankAccount';
      case _i46.FinancialEntry():
        return 'FinancialEntry';
      case _i47.Invoice():
        return 'Invoice';
      case _i48.InvoiceItem():
        return 'InvoiceItem';
      case _i49.Payment():
        return 'Payment';
      case _i50.Greeting():
        return 'Greeting';
      case _i51.Gunsmith():
        return 'Gunsmith';
      case _i52.GunsmithClient():
        return 'GunsmithClient';
      case _i53.ServiceOrder():
        return 'ServiceOrder';
      case _i54.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _i55.Product():
        return 'Product';
      case _i56.ProductGroup():
        return 'ProductGroup';
      case _i57.AmmunitionStock():
        return 'AmmunitionStock';
      case _i58.Firearm():
        return 'Firearm';
      case _i59.ReloadSession():
        return 'ReloadSession';
      case _i60.ReloadTest():
        return 'ReloadTest';
      case _i61.Training():
        return 'Training';
      case _i62.SubscriptionPlan():
        return 'SubscriptionPlan';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
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
      return deserialize<_i4.RolePermission>(data['data']);
    }
    if (dataClassName == 'SecurityRole') {
      return deserialize<_i5.SecurityRole>(data['data']);
    }
    if (dataClassName == 'UserRole') {
      return deserialize<_i6.UserRole>(data['data']);
    }
    if (dataClassName == 'Accessory') {
      return deserialize<_i7.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_i8.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i9.Document>(data['data']);
    }
    if (dataClassName == 'AppException') {
      return deserialize<_i10.AppException>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i11.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i12.UserProfile>(data['data']);
    }
    if (dataClassName == 'Company') {
      return deserialize<_i13.Company>(data['data']);
    }
    if (dataClassName == 'CompanyType') {
      return deserialize<_i14.CompanyType>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i15.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_i16.RangeVisit>(data['data']);
    }
    if (dataClassName == 'AccessLevel') {
      return deserialize<_i17.AccessLevel>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_i18.AccessoryType>(data['data']);
    }
    if (dataClassName == 'AppModule') {
      return deserialize<_i19.AppModule>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEventType') {
      return deserialize<_i20.AsaasWebhookEventType>(data['data']);
    }
    if (dataClassName == 'ConservationState') {
      return deserialize<_i21.ConservationState>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_i22.Currency>(data['data']);
    }
    if (dataClassName == 'DocumentType') {
      return deserialize<_i23.DocumentType>(data['data']);
    }
    if (dataClassName == 'FinancialEntryStatus') {
      return deserialize<_i24.FinancialEntryStatus>(data['data']);
    }
    if (dataClassName == 'FinancialEntryType') {
      return deserialize<_i25.FinancialEntryType>(data['data']);
    }
    if (dataClassName == 'FirearmAction') {
      return deserialize<_i26.FirearmAction>(data['data']);
    }
    if (dataClassName == 'FirearmPurpose') {
      return deserialize<_i27.FirearmPurpose>(data['data']);
    }
    if (dataClassName == 'FirearmType') {
      return deserialize<_i28.FirearmType>(data['data']);
    }
    if (dataClassName == 'Gender') {
      return deserialize<_i29.Gender>(data['data']);
    }
    if (dataClassName == 'InvoiceStatus') {
      return deserialize<_i30.InvoiceStatus>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_i31.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_i32.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_i33.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'PixKeyType') {
      return deserialize<_i34.PixKeyType>(data['data']);
    }
    if (dataClassName == 'PlanPeriodicity') {
      return deserialize<_i35.PlanPeriodicity>(data['data']);
    }
    if (dataClassName == 'PlanStatus') {
      return deserialize<_i36.PlanStatus>(data['data']);
    }
    if (dataClassName == 'PlanType') {
      return deserialize<_i37.PlanType>(data['data']);
    }
    if (dataClassName == 'PlatformApp') {
      return deserialize<_i38.PlatformApp>(data['data']);
    }
    if (dataClassName == 'RegistryBody') {
      return deserialize<_i39.RegistryBody>(data['data']);
    }
    if (dataClassName == 'UsageType') {
      return deserialize<_i40.UsageType>(data['data']);
    }
    if (dataClassName == 'UserStatus') {
      return deserialize<_i41.UserStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i42.UserType>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEvent') {
      return deserialize<_i43.AsaasWebhookEvent>(data['data']);
    }
    if (dataClassName == 'Bank') {
      return deserialize<_i44.Bank>(data['data']);
    }
    if (dataClassName == 'BankAccount') {
      return deserialize<_i45.BankAccount>(data['data']);
    }
    if (dataClassName == 'FinancialEntry') {
      return deserialize<_i46.FinancialEntry>(data['data']);
    }
    if (dataClassName == 'Invoice') {
      return deserialize<_i47.Invoice>(data['data']);
    }
    if (dataClassName == 'InvoiceItem') {
      return deserialize<_i48.InvoiceItem>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i49.Payment>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i50.Greeting>(data['data']);
    }
    if (dataClassName == 'Gunsmith') {
      return deserialize<_i51.Gunsmith>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_i52.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_i53.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_i54.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i55.Product>(data['data']);
    }
    if (dataClassName == 'ProductGroup') {
      return deserialize<_i56.ProductGroup>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_i57.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i58.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_i59.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_i60.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_i61.Training>(data['data']);
    }
    if (dataClassName == 'SubscriptionPlan') {
      return deserialize<_i62.SubscriptionPlan>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.RolePermission:
        return _i4.RolePermission.t;
      case _i5.SecurityRole:
        return _i5.SecurityRole.t;
      case _i6.UserRole:
        return _i6.UserRole.t;
      case _i7.Accessory:
        return _i7.Accessory.t;
      case _i8.Address:
        return _i8.Address.t;
      case _i9.Document:
        return _i9.Document.t;
      case _i11.SupplyStock:
        return _i11.SupplyStock.t;
      case _i12.UserProfile:
        return _i12.UserProfile.t;
      case _i13.Company:
        return _i13.Company.t;
      case _i15.Membership:
        return _i15.Membership.t;
      case _i16.RangeVisit:
        return _i16.RangeVisit.t;
      case _i43.AsaasWebhookEvent:
        return _i43.AsaasWebhookEvent.t;
      case _i45.BankAccount:
        return _i45.BankAccount.t;
      case _i46.FinancialEntry:
        return _i46.FinancialEntry.t;
      case _i47.Invoice:
        return _i47.Invoice.t;
      case _i48.InvoiceItem:
        return _i48.InvoiceItem.t;
      case _i49.Payment:
        return _i49.Payment.t;
      case _i51.Gunsmith:
        return _i51.Gunsmith.t;
      case _i52.GunsmithClient:
        return _i52.GunsmithClient.t;
      case _i53.ServiceOrder:
        return _i53.ServiceOrder.t;
      case _i54.ServiceOrderItem:
        return _i54.ServiceOrderItem.t;
      case _i55.Product:
        return _i55.Product.t;
      case _i56.ProductGroup:
        return _i56.ProductGroup.t;
      case _i57.AmmunitionStock:
        return _i57.AmmunitionStock.t;
      case _i58.Firearm:
        return _i58.Firearm.t;
      case _i59.ReloadSession:
        return _i59.ReloadSession.t;
      case _i60.ReloadTest:
        return _i60.ReloadTest.t;
      case _i61.Training:
        return _i61.Training.t;
      case _i62.SubscriptionPlan:
        return _i62.SubscriptionPlan.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
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
      return _i3.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
