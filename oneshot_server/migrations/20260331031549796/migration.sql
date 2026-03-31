BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "accessories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid NOT NULL,
    "purpose" text NOT NULL,
    "type" text NOT NULL,
    "manufacturer" text NOT NULL,
    "model" text NOT NULL,
    "serialNumber" text,
    "condition" text NOT NULL,
    "purchasePrice" double precision,
    "acquisitionDate" timestamp without time zone
);

-- Indexes
CREATE INDEX "accessory_user_id_idx" ON "accessories" USING btree ("userId");
CREATE INDEX "accessory_firearm_id_idx" ON "accessories" USING btree ("firearmId");

--
-- ACTION CREATE TABLE
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
    "userProfileId" uuid NOT NULL
);

-- Indexes
CREATE INDEX "address_zip_code_idx" ON "addresses" USING btree ("zipCode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "ammunition_stocks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
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
CREATE INDEX "ammo_stock_user_id_idx" ON "ammunition_stocks" USING btree ("userId");
CREATE INDEX "ammo_stock_caliber_idx" ON "ammunition_stocks" USING btree ("caliber");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "clubs" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "cnpj" text NOT NULL,
    "addressId" uuid,
    "addressId" uuid NOT NULL,
    "ownerId" uuid,
    "ownerId" uuid NOT NULL,
    "phoneNumber" text,
    "email" text,
    "active" boolean NOT NULL DEFAULT true
);

-- Indexes
CREATE UNIQUE INDEX "club_cnpj_idx" ON "clubs" USING btree ("cnpj");
CREATE INDEX "club_owner_id_idx" ON "clubs" USING btree ("ownerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "documents" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid,
    "accessoryId" uuid,
    "accessoryId" uuid,
    "documentType" text NOT NULL,
    "registryAgency" text NOT NULL,
    "documentNumber" text NOT NULL,
    "issueDate" timestamp without time zone NOT NULL,
    "expirationDate" timestamp without time zone NOT NULL,
    "documentImageUrl" text,
    "supplierName" text,
    "supplierAddressId" uuid,
    "supplierAddressId" uuid
);

-- Indexes
CREATE INDEX "document_user_id_idx" ON "documents" USING btree ("userId");
CREATE INDEX "document_firearm_id_idx" ON "documents" USING btree ("firearmId");
CREATE INDEX "document_expiration_date_idx" ON "documents" USING btree ("expirationDate");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "firearms" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
    "purpose" text NOT NULL,
    "type" text NOT NULL,
    "action" text NOT NULL,
    "usageType" text NOT NULL,
    "serialNumber" text NOT NULL,
    "manufactureCountry" text NOT NULL,
    "manufacturer" text NOT NULL,
    "model" text NOT NULL,
    "caliber" text NOT NULL,
    "magazineCapacity" bigint NOT NULL,
    "barrelLength" text NOT NULL,
    "weight" double precision NOT NULL,
    "acquisitionDate" timestamp without time zone,
    "purchasePrice" double precision,
    "saleDate" timestamp without time zone,
    "salePrice" double precision,
    "condition" text NOT NULL
);

-- Indexes
CREATE INDEX "firearm_user_id_idx" ON "firearms" USING btree ("userId");
CREATE INDEX "firearm_serial_number_idx" ON "firearms" USING btree ("serialNumber");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "gunsmith_clients" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "gunsmithUserId" uuid,
    "gunsmithUserInfoId" bigint NOT NULL,
    "name" text NOT NULL,
    "cpf" text NOT NULL,
    "rg" text,
    "phone" text NOT NULL,
    "addressId" uuid,
    "addressId" uuid NOT NULL
);

-- Indexes
CREATE INDEX "gunsmith_client_user_id_idx" ON "gunsmith_clients" USING btree ("gunsmithUserId");
CREATE UNIQUE INDEX "gunsmith_client_cpf_idx" ON "gunsmith_clients" USING btree ("cpf");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "memberships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userId" uuid NOT NULL,
    "clubId" uuid,
    "clubId" uuid NOT NULL,
    "membershipNumber" text,
    "startDate" timestamp without time zone NOT NULL,
    "validUntil" timestamp without time zone,
    "status" text NOT NULL DEFAULT 'active'::text,
    "planName" text
);

-- Indexes
CREATE UNIQUE INDEX "membership_user_club_idx" ON "memberships" USING btree ("userId", "clubId");
CREATE INDEX "membership_club_idx" ON "memberships" USING btree ("clubId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "range_visits" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userId" uuid NOT NULL,
    "clubId" uuid,
    "clubId" uuid NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid NOT NULL,
    "checkIn" timestamp without time zone NOT NULL,
    "checkOut" timestamp without time zone,
    "shotsFired" bigint NOT NULL DEFAULT 0,
    "notes" text,
    "habitualityReportGenerated" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE INDEX "range_visit_user_idx" ON "range_visits" USING btree ("userId");
CREATE INDEX "range_visit_club_idx" ON "range_visits" USING btree ("clubId");
CREATE INDEX "range_visit_date_idx" ON "range_visits" USING btree ("checkIn");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "reload_sessions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
    "reloadDate" timestamp without time zone NOT NULL,
    "pressId" uuid,
    "pressId" uuid NOT NULL,
    "caliber" text NOT NULL,
    "casingBatch" text NOT NULL,
    "reloadsCompleted" bigint NOT NULL,
    "powderId" uuid,
    "powderId" uuid NOT NULL,
    "powderGrains" double precision NOT NULL,
    "primerId" uuid,
    "primerId" uuid NOT NULL,
    "projectileId" uuid,
    "projectileId" uuid NOT NULL,
    "oal" double precision NOT NULL,
    "totalCost" double precision NOT NULL,
    "unitCost" double precision NOT NULL
);

-- Indexes
CREATE INDEX "reload_session_user_id_idx" ON "reload_sessions" USING btree ("userId");
CREATE INDEX "reload_session_date_idx" ON "reload_sessions" USING btree ("reloadDate");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "reload_tests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "reloadSessionId" uuid,
    "reloadSessionId" uuid NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid NOT NULL,
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
-- ACTION CREATE TABLE
--
CREATE TABLE "service_order_items" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "serviceOrderId" uuid,
    "serviceOrderId" uuid NOT NULL,
    "description" text NOT NULL,
    "isStockPart" boolean NOT NULL,
    "supplyPartId" uuid,
    "supplyPartId" uuid NOT NULL,
    "servicePrice" double precision NOT NULL
);

-- Indexes
CREATE INDEX "service_order_item_order_id_idx" ON "service_order_items" USING btree ("serviceOrderId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "service_orders" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "clientId" uuid,
    "clientId" uuid NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid NOT NULL,
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
-- ACTION CREATE TABLE
--
CREATE TABLE "supply_stocks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "type" text NOT NULL,
    "quantity" double precision NOT NULL,
    "unit" text NOT NULL,
    "acquisitionDate" timestamp without time zone,
    "batchNumber" text,
    "userId" uuid,
    "userInfoId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "supply_stock_user_id_idx" ON "supply_stocks" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "trainings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid,
    "userInfoId" bigint NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "location" text NOT NULL,
    "environmentType" text NOT NULL,
    "firearmId" uuid,
    "firearmId" uuid NOT NULL,
    "ammunitionId" uuid,
    "ammunitionId" uuid NOT NULL,
    "shotsFired" bigint NOT NULL,
    "distanceMeters" double precision NOT NULL,
    "score" bigint,
    "targetImagesUrl" text
);

-- Indexes
CREATE INDEX "training_user_id_idx" ON "trainings" USING btree ("userId");
CREATE INDEX "training_date_idx" ON "trainings" USING btree ("date");

--
-- ACTION DROP TABLE
--
DROP TABLE "user_profile" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_profile" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userInfoId" bigint,
    "name" text NOT NULL,
    "cpf" text,
    "cr" text,
    "addressId" uuid,
    "types" json
);

-- Indexes
CREATE UNIQUE INDEX "user_cpf_idx" ON "user_profile" USING btree ("cpf");
CREATE INDEX "user_address_id_idx" ON "user_profile" USING btree ("addressId");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_session_log" ADD COLUMN "userId" text;
CREATE INDEX "serverpod_session_log_time_idx" ON "serverpod_session_log" USING btree ("time");
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "accessories"
    ADD CONSTRAINT "accessories_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "accessories"
    ADD CONSTRAINT "accessories_fk_1"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "addresses"
    ADD CONSTRAINT "addresses_fk_0"
    FOREIGN KEY("userProfileId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "ammunition_stocks"
    ADD CONSTRAINT "ammunition_stocks_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "clubs"
    ADD CONSTRAINT "clubs_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "clubs"
    ADD CONSTRAINT "clubs_fk_1"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "documents"
    ADD CONSTRAINT "documents_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
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
ALTER TABLE ONLY "documents"
    ADD CONSTRAINT "documents_fk_3"
    FOREIGN KEY("supplierAddressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "firearms"
    ADD CONSTRAINT "firearms_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "memberships"
    ADD CONSTRAINT "memberships_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "memberships"
    ADD CONSTRAINT "memberships_fk_1"
    FOREIGN KEY("clubId")
    REFERENCES "clubs"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_1"
    FOREIGN KEY("clubId")
    REFERENCES "clubs"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_2"
    FOREIGN KEY("firearmId")
    REFERENCES "firearms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "supply_stocks"
    ADD CONSTRAINT "supply_stocks_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260331031549796', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260331031549796', "timestamp" = now();

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
