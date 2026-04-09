BEGIN;

--
-- Class Accessory as table accessories
--
CREATE TABLE "accessories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "firearmId" uuid,
    "purpose" text,
    "type" text NOT NULL,
    "serialNumber" text,
    "manufactureCountry" text,
    "manufacturer" text,
    "model" text,
    "description" text,
    "conservationState" text,
    "usageType" text,
    "dimensions" text,
    "weight" double precision,
    "color" text,
    "finishMaterial" text,
    "acquisitionDate" timestamp without time zone,
    "purchasePrice" double precision,
    "invoiceNumber" text,
    "invoiceEmissionDate" timestamp without time zone,
    "sellerData" text,
    "registryBody" text,
    "customizations" text,
    "maintenanceHistory" text,
    "images" json
);

-- Indexes
CREATE INDEX "accessory_user_id_idx" ON "accessories" USING btree ("userId");
CREATE INDEX "accessory_firearm_id_idx" ON "accessories" USING btree ("firearmId");
CREATE INDEX "accessory_serial_number_idx" ON "accessories" USING btree ("serialNumber");

--
-- Class Address as table addresses
--
CREATE TABLE "addresses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "street" text NOT NULL,
    "number" text NOT NULL,
    "complement" text,
    "neighborhood" text NOT NULL,
    "city" text NOT NULL,
    "state" text NOT NULL,
    "zipCode" text NOT NULL,
    "userProfileId" uuid
);

-- Indexes
CREATE INDEX "address_zip_code_idx" ON "addresses" USING btree ("zipCode");

--
-- Class AmmunitionStock as table ammunition_stocks
--
CREATE TABLE "ammunition_stocks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userInfoId" bigint,
    "type" text NOT NULL,
    "manufacturer" text NOT NULL,
    "caliber" text NOT NULL,
    "projectileType" text NOT NULL,
    "projectileWeightGrains" double precision,
    "quantity" bigint NOT NULL,
    "purchasePrice" double precision,
    "acquisitionDate" timestamp without time zone NOT NULL,
    "casingBatch" text
);

-- Indexes
CREATE INDEX "ammo_stock_user_id_idx" ON "ammunition_stocks" USING btree ("userInfoId");
CREATE INDEX "ammo_stock_caliber_idx" ON "ammunition_stocks" USING btree ("caliber");

--
-- Class AsaasWebhookEvent as table asaas_webhook_events
--
CREATE TABLE "asaas_webhook_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "eventId" text NOT NULL,
    "event" text NOT NULL,
    "payload" text NOT NULL,
    "processed" boolean NOT NULL DEFAULT false,
    "processedAt" timestamp without time zone,
    "error" text,
    "receivedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "asaas_event_id_idx" ON "asaas_webhook_events" USING btree ("eventId");
CREATE INDEX "asaas_event_processed_idx" ON "asaas_webhook_events" USING btree ("processed");
CREATE INDEX "asaas_event_type_idx" ON "asaas_webhook_events" USING btree ("event");
CREATE INDEX "asaas_event_received_idx" ON "asaas_webhook_events" USING btree ("receivedAt");

--
-- Class BankAccount as table bank_accounts
--
CREATE TABLE "bank_accounts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "bankName" text,
    "agency" text,
    "agencyDigit" text,
    "accountNumber" text,
    "accountDigit" text,
    "balance" double precision NOT NULL,
    "status" text NOT NULL,
    "originModule" text NOT NULL,
    "companyId" uuid
);

-- Indexes
CREATE INDEX "bank_account_origin_idx" ON "bank_accounts" USING btree ("originModule");
CREATE INDEX "bank_account_status_idx" ON "bank_accounts" USING btree ("status");

--
-- Class Company as table companies
--
CREATE TABLE "companies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "cnpj" text NOT NULL,
    "type" text NOT NULL,
    "addressId" uuid,
    "ownerId" uuid,
    "phoneNumber" text,
    "email" text,
    "active" boolean NOT NULL DEFAULT true,
    "incomeValue" double precision NOT NULL DEFAULT 1000.00,
    "asaasAccountId" text,
    "asaasWalletId" text,
    "asaasApiKey" text,
    "asaasOnboardingFailureReason" text
);

-- Indexes
CREATE UNIQUE INDEX "company_cnpj_idx" ON "companies" USING btree ("cnpj");
CREATE INDEX "company_owner_id_idx" ON "companies" USING btree ("ownerId");

--
-- Class Document as table documents
--
CREATE TABLE "documents" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "firearmId" uuid,
    "accessoryId" uuid,
    "type" text NOT NULL,
    "registryBody" text NOT NULL,
    "number" text NOT NULL,
    "emissionDate" timestamp without time zone NOT NULL,
    "expirationDate" timestamp without time zone,
    "filePath" text,
    "supplierName" text,
    "supplierCpfCnpj" text,
    "supplierPhone" text,
    "supplierAddress" text
);

-- Indexes
CREATE INDEX "document_user_id_idx" ON "documents" USING btree ("userId");
CREATE INDEX "document_number_idx" ON "documents" USING btree ("number");
CREATE INDEX "document_firearm_id_idx" ON "documents" USING btree ("firearmId");
CREATE INDEX "document_accessory_id_idx" ON "documents" USING btree ("accessoryId");

--
-- Class FinancialEntry as table financial_entries
--
CREATE TABLE "financial_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "type" text NOT NULL,
    "description" text NOT NULL,
    "amount" double precision NOT NULL,
    "dueDate" timestamp without time zone NOT NULL,
    "paymentDate" timestamp without time zone,
    "status" text NOT NULL,
    "originModule" text NOT NULL,
    "bankAccountId" uuid NOT NULL,
    "invoiceId" uuid NOT NULL
);

-- Indexes
CREATE INDEX "financial_entry_type_idx" ON "financial_entries" USING btree ("type");
CREATE INDEX "financial_entry_status_idx" ON "financial_entries" USING btree ("status");
CREATE INDEX "financial_entry_due_date_idx" ON "financial_entries" USING btree ("dueDate");
CREATE INDEX "financial_entry_origin_idx" ON "financial_entries" USING btree ("originModule");

--
-- Class Firearm as table firearms
--
CREATE TABLE "firearms" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "purpose" text NOT NULL,
    "type" text NOT NULL,
    "action" text NOT NULL,
    "usageType" text NOT NULL,
    "serialNumber" text NOT NULL,
    "manufactureCountry" text NOT NULL,
    "manufacturer" text NOT NULL,
    "model" text NOT NULL,
    "bolt" text,
    "frame" text,
    "grip" text,
    "conservationState" text NOT NULL,
    "caliber" text NOT NULL,
    "barrelsCount" bigint,
    "barrelLength" text,
    "soulType" text,
    "sightType" text,
    "riflingCount" bigint,
    "riflingDirection" text,
    "magazineCapacity" bigint NOT NULL,
    "magazineCount" bigint,
    "dimensions" text,
    "weight" double precision,
    "acquisitionDate" timestamp without time zone,
    "purchasePrice" double precision,
    "saleDate" timestamp without time zone,
    "salePrice" double precision,
    "buyerData" text,
    "customizations" text,
    "images" json,
    "cleaningHistory" text,
    "maintenanceHistory" text,
    "totalShots" bigint
);

-- Indexes
CREATE INDEX "firearm_user_id_idx" ON "firearms" USING btree ("userId");
CREATE UNIQUE INDEX "firearm_serial_number_idx" ON "firearms" USING btree ("serialNumber");

--
-- Class GunsmithClient as table gunsmith_clients
--
CREATE TABLE "gunsmith_clients" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "gunsmithUserInfoId" bigint,
    "name" text NOT NULL,
    "cpf" text NOT NULL,
    "rg" text,
    "phone" text NOT NULL,
    "addressId" uuid
);

-- Indexes
CREATE INDEX "gunsmith_client_user_id_idx" ON "gunsmith_clients" USING btree ("gunsmithUserInfoId");
CREATE UNIQUE INDEX "gunsmith_client_cpf_idx" ON "gunsmith_clients" USING btree ("cpf");

--
-- Class Gunsmith as table gunsmiths
--
CREATE TABLE "gunsmiths" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "taxId" text NOT NULL,
    "addressId" uuid,
    "ownerId" uuid,
    "active" boolean NOT NULL DEFAULT true,
    "incomeValue" double precision NOT NULL DEFAULT 1000.00,
    "asaasAccountId" text,
    "asaasWalletId" text,
    "asaasApiKey" text,
    "asaasOnboardingFailureReason" text
);

-- Indexes
CREATE UNIQUE INDEX "gunsmith_tax_id_idx" ON "gunsmiths" USING btree ("taxId");
CREATE INDEX "gunsmith_owner_id_idx" ON "gunsmiths" USING btree ("ownerId");

--
-- Class InvoiceItem as table invoice_items
--
CREATE TABLE "invoice_items" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "description" text NOT NULL,
    "quantity" double precision NOT NULL,
    "unitPrice" double precision NOT NULL,
    "totalPrice" double precision NOT NULL,
    "invoiceId" uuid
);

-- Indexes
CREATE INDEX "invoice_item_invoice_id_idx" ON "invoice_items" USING btree ("invoiceId");

--
-- Class Invoice as table invoices
--
CREATE TABLE "invoices" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "originModule" text NOT NULL,
    "direction" text NOT NULL,
    "status" text NOT NULL,
    "issueDate" timestamp without time zone NOT NULL,
    "dueDate" timestamp without time zone NOT NULL,
    "totalAmount" double precision NOT NULL,
    "discount" double precision,
    "finalAmount" double precision NOT NULL,
    "currency" text NOT NULL,
    "notes" text,
    "isRecurrent" boolean NOT NULL DEFAULT false,
    "asaasInstallmentId" text,
    "asaasCustomerId" text,
    "companyId" uuid,
    "gunsmithId" uuid,
    "userId" uuid,
    "draweeId" uuid
);

-- Indexes
CREATE INDEX "invoice_status_idx" ON "invoices" USING btree ("status");
CREATE INDEX "invoice_due_date_idx" ON "invoices" USING btree ("dueDate");
CREATE INDEX "invoice_company_id_idx" ON "invoices" USING btree ("companyId");
CREATE INDEX "invoice_gunsmith_id_idx" ON "invoices" USING btree ("gunsmithId");
CREATE INDEX "invoice_user_id_idx" ON "invoices" USING btree ("userId");
CREATE INDEX "invoice_asaas_installment_idx" ON "invoices" USING btree ("asaasInstallmentId");

--
-- Class Membership as table memberships
--
CREATE TABLE "memberships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "companyId" uuid,
    "membershipNumber" text,
    "startDate" timestamp without time zone NOT NULL,
    "validUntil" timestamp without time zone,
    "status" text NOT NULL DEFAULT 'active'::text,
    "planName" text
);

-- Indexes
CREATE UNIQUE INDEX "membership_user_company_idx" ON "memberships" USING btree ("userId", "companyId");
CREATE INDEX "membership_company_idx" ON "memberships" USING btree ("companyId");

--
-- Class Payment as table payments
--
CREATE TABLE "payments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "paymentDate" timestamp without time zone NOT NULL,
    "amountPaid" double precision NOT NULL,
    "paymentMethod" text NOT NULL,
    "status" text NOT NULL,
    "currency" text NOT NULL,
    "asaasPaymentId" text,
    "asaasCustomerId" text,
    "asaasBillingType" text,
    "asaasDueDate" timestamp without time zone,
    "asaasNetValue" double precision,
    "asaasInvoiceUrl" text,
    "asaasBankSlipUrl" text,
    "asaasPixQrCodePayload" text,
    "asaasPixQrCodeImage" text,
    "asaasRefundedAt" timestamp without time zone,
    "invoiceId" uuid
);

-- Indexes
CREATE INDEX "payment_invoice_id_idx" ON "payments" USING btree ("invoiceId");
CREATE INDEX "payment_status_idx" ON "payments" USING btree ("status");
CREATE INDEX "payment_date_idx" ON "payments" USING btree ("paymentDate");
CREATE INDEX "payment_asaas_id_idx" ON "payments" USING btree ("asaasPaymentId");

--
-- Class ProductGroup as table product_groups
--
CREATE TABLE "product_groups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "originModule" text NOT NULL,
    "ownerId" uuid
);

-- Indexes
CREATE INDEX "product_group_origin_idx" ON "product_groups" USING btree ("originModule");
CREATE INDEX "product_group_owner_idx" ON "product_groups" USING btree ("ownerId");

--
-- Class Product as table products
--
CREATE TABLE "products" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "description" text NOT NULL,
    "unit" text NOT NULL,
    "unitPrice" double precision NOT NULL,
    "originModule" text NOT NULL,
    "groupId" uuid NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "products_code_idx" ON "products" USING btree ("code");
CREATE INDEX "products_origin_idx" ON "products" USING btree ("originModule");
CREATE INDEX "product_group_idx" ON "products" USING btree ("groupId");

--
-- Class RangeVisit as table range_visits
--
CREATE TABLE "range_visits" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "companyId" uuid,
    "firearmId" uuid,
    "checkIn" timestamp without time zone NOT NULL,
    "checkOut" timestamp without time zone,
    "shotsFired" bigint NOT NULL DEFAULT 0,
    "notes" text,
    "habitualityReportGenerated" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE INDEX "range_visit_user_idx" ON "range_visits" USING btree ("userId");
CREATE INDEX "range_visit_company_idx" ON "range_visits" USING btree ("companyId");
CREATE INDEX "range_visit_date_idx" ON "range_visits" USING btree ("checkIn");

--
-- Class ReloadSession as table reload_sessions
--
CREATE TABLE "reload_sessions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userInfoId" bigint,
    "reloadDate" timestamp without time zone NOT NULL,
    "pressId" uuid,
    "caliber" text NOT NULL,
    "casingBatch" text NOT NULL,
    "reloadsCompleted" bigint NOT NULL,
    "powderId" uuid,
    "powderGrains" double precision NOT NULL,
    "primerId" uuid,
    "projectileId" uuid,
    "oal" double precision NOT NULL,
    "totalCost" double precision NOT NULL,
    "unitCost" double precision NOT NULL
);

-- Indexes
CREATE INDEX "reload_session_user_id_idx" ON "reload_sessions" USING btree ("userInfoId");
CREATE INDEX "reload_session_date_idx" ON "reload_sessions" USING btree ("reloadDate");

--
-- Class ReloadTest as table reload_tests
--
CREATE TABLE "reload_tests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "reloadSessionId" uuid,
    "firearmId" uuid,
    "testDate" timestamp without time zone NOT NULL,
    "shotsFired" bigint NOT NULL,
    "highestVelocityFps" double precision NOT NULL,
    "lowestVelocityFps" double precision NOT NULL,
    "averageVelocityFps" double precision NOT NULL,
    "powerFactor" double precision NOT NULL,
    "averageEnergy" double precision NOT NULL,
    "groupingMeasurement" double precision,
    "crackedCasings" bigint NOT NULL
);

-- Indexes
CREATE INDEX "reload_test_session_id_idx" ON "reload_tests" USING btree ("reloadSessionId");
CREATE INDEX "reload_test_firearm_id_idx" ON "reload_tests" USING btree ("firearmId");

--
-- Class RolePermission as table role_permissions
--
CREATE TABLE "role_permissions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "securityRoleId" uuid,
    "platform" text NOT NULL,
    "module" text,
    "level" text NOT NULL
);

--
-- Class SecurityRole as table security_roles
--
CREATE TABLE "security_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "active" boolean NOT NULL
);

--
-- Class ServiceOrderItem as table service_order_items
--
CREATE TABLE "service_order_items" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "serviceOrderId" uuid,
    "description" text NOT NULL,
    "isStockPart" boolean NOT NULL,
    "supplyPartId" uuid,
    "servicePrice" double precision NOT NULL
);

-- Indexes
CREATE INDEX "service_order_item_order_id_idx" ON "service_order_items" USING btree ("serviceOrderId");

--
-- Class ServiceOrder as table service_orders
--
CREATE TABLE "service_orders" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "clientId" uuid,
    "firearmId" uuid,
    "entryDate" timestamp without time zone NOT NULL,
    "estimatedDeliveryDate" timestamp without time zone,
    "totalPrice" double precision NOT NULL,
    "discount" double precision,
    "finalPrice" double precision NOT NULL,
    "paymentMethod" text,
    "notes" text
);

-- Indexes
CREATE INDEX "service_order_client_id_idx" ON "service_orders" USING btree ("clientId");
CREATE INDEX "service_order_entry_date_idx" ON "service_orders" USING btree ("entryDate");

--
-- Class SubscriptionPlan as table subscription_plans
--
CREATE TABLE "subscription_plans" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "planType" text NOT NULL,
    "unitValue" double precision NOT NULL,
    "quantity" bigint NOT NULL,
    "totalValue" double precision NOT NULL,
    "periodicity" text NOT NULL,
    "status" text NOT NULL,
    "companyId" uuid
);

-- Indexes
CREATE INDEX "plan_type_idx" ON "subscription_plans" USING btree ("planType");
CREATE INDEX "plan_status_idx" ON "subscription_plans" USING btree ("status");

--
-- Class SupplyStock as table supply_stocks
--
CREATE TABLE "supply_stocks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "type" text NOT NULL,
    "quantity" double precision NOT NULL,
    "unit" text NOT NULL,
    "acquisitionDate" timestamp without time zone,
    "batchNumber" text,
    "userInfoId" bigint
);

-- Indexes
CREATE INDEX "supply_stock_user_id_idx" ON "supply_stocks" USING btree ("userInfoId");

--
-- Class Training as table trainings
--
CREATE TABLE "trainings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userInfoId" bigint,
    "date" timestamp without time zone NOT NULL,
    "location" text NOT NULL,
    "environmentType" text NOT NULL,
    "firearmId" uuid,
    "ammunitionId" uuid,
    "shotsFired" bigint NOT NULL,
    "distanceMeters" double precision NOT NULL,
    "score" bigint,
    "targetImagesUrl" text
);

-- Indexes
CREATE INDEX "training_user_id_idx" ON "trainings" USING btree ("userInfoId");
CREATE INDEX "training_date_idx" ON "trainings" USING btree ("date");

--
-- Class UserProfile as table user_profile
--
CREATE TABLE "user_profile" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userInfoId" bigint,
    "name" text NOT NULL,
    "gender" text,
    "birthDate" timestamp without time zone,
    "rg" text,
    "cpf" text,
    "phone" text,
    "email" text,
    "addressId" uuid,
    "types" json,
    "status" text NOT NULL,
    "asaasCustomerId" text,
    "asaasOnboardingFailureReason" text
);

-- Indexes
CREATE UNIQUE INDEX "user_cpf_idx" ON "user_profile" USING btree ("cpf");
CREATE INDEX "user_email_idx" ON "user_profile" USING btree ("email");

--
-- Class UserRole as table user_roles
--
CREATE TABLE "user_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userProfileId" uuid,
    "securityRoleId" uuid,
    "companyId" uuid
);

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "userId" text,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_time_idx" ON "serverpod_session_log" USING btree ("time");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class EmailAuth as table serverpod_email_auth
--
CREATE TABLE "serverpod_email_auth" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- Class EmailCreateAccountRequest as table serverpod_email_create_request
--
CREATE TABLE "serverpod_email_create_request" (
    "id" bigserial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- Class EmailFailedSignIn as table serverpod_email_failed_sign_in
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" bigserial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- Class EmailReset as table serverpod_email_reset
--
CREATE TABLE "serverpod_email_reset" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- Class GoogleRefreshToken as table serverpod_google_refresh_token
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- Class UserImage as table serverpod_user_image
--
CREATE TABLE "serverpod_user_image" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "version" bigint NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- Class UserInfo as table serverpod_user_info
--
CREATE TABLE "serverpod_user_info" (
    "id" bigserial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");

--
-- Foreign relations for "accessories" table
--
ALTER TABLE ONLY "accessories"
    ADD CONSTRAINT "accessories_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "accessories"
    ADD CONSTRAINT "accessories_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "addresses" table
--
ALTER TABLE ONLY "addresses"
    ADD CONSTRAINT "addresses_fk_0"
    FOREIGN KEY("userProfileId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "ammunition_stocks" table
--
ALTER TABLE ONLY "ammunition_stocks"
    ADD CONSTRAINT "ammunition_stocks_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "bank_accounts" table
--
ALTER TABLE ONLY "bank_accounts"
    ADD CONSTRAINT "bank_accounts_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "companies" table
--
ALTER TABLE ONLY "companies"
    ADD CONSTRAINT "companies_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "companies"
    ADD CONSTRAINT "companies_fk_1"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "documents" table
--
ALTER TABLE ONLY "documents"
    ADD CONSTRAINT "documents_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "documents"
    ADD CONSTRAINT "documents_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "documents"
    ADD CONSTRAINT "documents_fk_2"
    FOREIGN KEY("accessoryId")
    REFERENCES "accessories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "financial_entries" table
--
ALTER TABLE ONLY "financial_entries"
    ADD CONSTRAINT "financial_entries_fk_0"
    FOREIGN KEY("bankAccountId")
    REFERENCES "bank_accounts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "financial_entries"
    ADD CONSTRAINT "financial_entries_fk_1"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "firearms" table
--
ALTER TABLE ONLY "firearms"
    ADD CONSTRAINT "firearms_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "gunsmith_clients" table
--
ALTER TABLE ONLY "gunsmith_clients"
    ADD CONSTRAINT "gunsmith_clients_fk_0"
    FOREIGN KEY("gunsmithUserInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "gunsmith_clients"
    ADD CONSTRAINT "gunsmith_clients_fk_1"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "gunsmiths" table
--
ALTER TABLE ONLY "gunsmiths"
    ADD CONSTRAINT "gunsmiths_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "gunsmiths"
    ADD CONSTRAINT "gunsmiths_fk_1"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "invoice_items" table
--
ALTER TABLE ONLY "invoice_items"
    ADD CONSTRAINT "invoice_items_fk_0"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "invoices" table
--
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_1"
    FOREIGN KEY("gunsmithId")
    REFERENCES "gunsmiths"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_2"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_3"
    FOREIGN KEY("draweeId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "memberships" table
--
ALTER TABLE ONLY "memberships"
    ADD CONSTRAINT "memberships_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "memberships"
    ADD CONSTRAINT "memberships_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "payments" table
--
ALTER TABLE ONLY "payments"
    ADD CONSTRAINT "payments_fk_0"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "product_groups" table
--
ALTER TABLE ONLY "product_groups"
    ADD CONSTRAINT "product_groups_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "products" table
--
ALTER TABLE ONLY "products"
    ADD CONSTRAINT "products_fk_0"
    FOREIGN KEY("groupId")
    REFERENCES "product_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "range_visits" table
--
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_2"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "reload_sessions" table
--
ALTER TABLE ONLY "reload_sessions"
    ADD CONSTRAINT "reload_sessions_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "reload_sessions"
    ADD CONSTRAINT "reload_sessions_fk_1"
    FOREIGN KEY("pressId")
    REFERENCES "accessories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "reload_sessions"
    ADD CONSTRAINT "reload_sessions_fk_2"
    FOREIGN KEY("powderId")
    REFERENCES "supply_stocks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "reload_sessions"
    ADD CONSTRAINT "reload_sessions_fk_3"
    FOREIGN KEY("primerId")
    REFERENCES "supply_stocks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "reload_sessions"
    ADD CONSTRAINT "reload_sessions_fk_4"
    FOREIGN KEY("projectileId")
    REFERENCES "supply_stocks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "reload_tests" table
--
ALTER TABLE ONLY "reload_tests"
    ADD CONSTRAINT "reload_tests_fk_0"
    FOREIGN KEY("reloadSessionId")
    REFERENCES "reload_sessions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "reload_tests"
    ADD CONSTRAINT "reload_tests_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "role_permissions" table
--
ALTER TABLE ONLY "role_permissions"
    ADD CONSTRAINT "role_permissions_fk_0"
    FOREIGN KEY("securityRoleId")
    REFERENCES "security_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "service_order_items" table
--
ALTER TABLE ONLY "service_order_items"
    ADD CONSTRAINT "service_order_items_fk_0"
    FOREIGN KEY("serviceOrderId")
    REFERENCES "service_orders"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "service_order_items"
    ADD CONSTRAINT "service_order_items_fk_1"
    FOREIGN KEY("supplyPartId")
    REFERENCES "supply_stocks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "service_orders" table
--
ALTER TABLE ONLY "service_orders"
    ADD CONSTRAINT "service_orders_fk_0"
    FOREIGN KEY("clientId")
    REFERENCES "gunsmith_clients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "service_orders"
    ADD CONSTRAINT "service_orders_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "subscription_plans" table
--
ALTER TABLE ONLY "subscription_plans"
    ADD CONSTRAINT "subscription_plans_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "supply_stocks" table
--
ALTER TABLE ONLY "supply_stocks"
    ADD CONSTRAINT "supply_stocks_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "trainings" table
--
ALTER TABLE ONLY "trainings"
    ADD CONSTRAINT "trainings_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "trainings"
    ADD CONSTRAINT "trainings_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "trainings"
    ADD CONSTRAINT "trainings_fk_2"
    FOREIGN KEY("ammunitionId")
    REFERENCES "ammunition_stocks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "user_profile" table
--
ALTER TABLE ONLY "user_profile"
    ADD CONSTRAINT "user_profile_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_profile"
    ADD CONSTRAINT "user_profile_fk_1"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "user_roles" table
--
ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_fk_0"
    FOREIGN KEY("userProfileId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_fk_1"
    FOREIGN KEY("securityRoleId")
    REFERENCES "security_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_fk_2"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260409010946318', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260409010946318', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20260129181059877', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129181059877', "timestamp" = now();


COMMIT;
