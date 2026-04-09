BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "financial_entries" ALTER COLUMN "bankAccountId" DROP NOT NULL;
ALTER TABLE "financial_entries" ALTER COLUMN "invoiceId" DROP NOT NULL;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260409014138452', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260409014138452', "timestamp" = now();

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
