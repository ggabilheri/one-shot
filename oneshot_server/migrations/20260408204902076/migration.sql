BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "clubs" CASCADE;

--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
DROP INDEX "invoice_club_id_idx";
-- IF EXISTS ALTER TABLE "invoices" DROP CONSTRAINT "invoices_fk_0";
ALTER TABLE "invoices" DROP COLUMN "clubId";
ALTER TABLE "invoices" ADD COLUMN "companyId" uuid;
CREATE INDEX "invoice_company_id_idx" ON "invoices" USING btree ("companyId");
--
-- ACTION ALTER TABLE
--
DROP INDEX "membership_user_club_idx";
DROP INDEX "membership_club_idx";
-- ALTER TABLE "memberships" DROP CONSTRAINT "memberships_fk_1";
ALTER TABLE "memberships" DROP COLUMN "clubId";
ALTER TABLE "memberships" ADD COLUMN "companyId" uuid;
CREATE UNIQUE INDEX "membership_user_company_idx" ON "memberships" USING btree ("userId", "companyId");
CREATE INDEX "membership_company_idx" ON "memberships" USING btree ("companyId");
--
-- ACTION ALTER TABLE
--
DROP INDEX "range_visit_club_idx";
-- ALTER TABLE "range_visits" DROP CONSTRAINT "range_visits_fk_1";
ALTER TABLE "range_visits" DROP COLUMN "clubId";
ALTER TABLE "range_visits" ADD COLUMN "companyId" uuid;
CREATE INDEX "range_visit_company_idx" ON "range_visits" USING btree ("companyId");
--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "memberships"
    ADD CONSTRAINT "memberships_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "range_visits"
    ADD CONSTRAINT "range_visits_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260408204902076', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260408204902076', "timestamp" = now();

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
