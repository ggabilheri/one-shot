BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "subscription_plans" ADD COLUMN "companyId" uuid;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "subscription_plans"
    ADD CONSTRAINT "subscription_plans_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260409001351802', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260409001351802', "timestamp" = now();

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
