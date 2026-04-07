BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "clubs" ADD COLUMN "asaasOnboardingFailureReason" text;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "gunsmiths" ADD COLUMN "asaasOnboardingFailureReason" text;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "user_profile" ADD COLUMN "asaasCustomerId" text;
ALTER TABLE "user_profile" ADD COLUMN "asaasOnboardingFailureReason" text;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260407034049731', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260407034049731', "timestamp" = now();

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
