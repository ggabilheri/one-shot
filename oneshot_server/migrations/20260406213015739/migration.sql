BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "clubs" ADD COLUMN "incomeValue" double precision NOT NULL DEFAULT 1000.00;
ALTER TABLE "clubs" ADD COLUMN "asaasAccountId" text;
ALTER TABLE "clubs" ADD COLUMN "asaasWalletId" text;
ALTER TABLE "clubs" ADD COLUMN "asaasApiKey" text;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "gunsmiths" ADD COLUMN "incomeValue" double precision NOT NULL DEFAULT 1000.00;
ALTER TABLE "gunsmiths" ADD COLUMN "asaasAccountId" text;
ALTER TABLE "gunsmiths" ADD COLUMN "asaasWalletId" text;
ALTER TABLE "gunsmiths" ADD COLUMN "asaasApiKey" text;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260406213015739', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260406213015739', "timestamp" = now();

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
