BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "accessories" CASCADE;

--
-- ACTION CREATE TABLE
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
-- ACTION DROP TABLE
--
DROP TABLE "documents" CASCADE;

--
-- ACTION CREATE TABLE
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
-- ACTION DROP TABLE
--
DROP TABLE "firearms" CASCADE;

--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
DROP INDEX "user_address_id_idx";
ALTER TABLE "user_profile" DROP COLUMN "cr";
ALTER TABLE "user_profile" ADD COLUMN "gender" text;
ALTER TABLE "user_profile" ADD COLUMN "birthDate" timestamp without time zone;
ALTER TABLE "user_profile" ADD COLUMN "rg" text;
ALTER TABLE "user_profile" ADD COLUMN "phone" text;
ALTER TABLE "user_profile" ADD COLUMN "email" text;
CREATE INDEX "user_email_idx" ON "user_profile" USING btree ("email");
--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "firearms"
    ADD CONSTRAINT "firearms_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260402221933678', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260402221933678', "timestamp" = now();

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
