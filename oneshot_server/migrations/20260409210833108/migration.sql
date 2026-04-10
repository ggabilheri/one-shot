BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "companies" ADD COLUMN "parentCompanyId" uuid;
CREATE INDEX "company_parent_id_idx" ON "companies" USING btree ("parentCompanyId");
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "companies"
    ADD CONSTRAINT "companies_fk_2"
    FOREIGN KEY("parentCompanyId")
    REFERENCES "companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260409210833108', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260409210833108', "timestamp" = now();

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
