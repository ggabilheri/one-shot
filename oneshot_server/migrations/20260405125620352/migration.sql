BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "description" text NOT NULL,
    "unit" text NOT NULL,
    "unitPrice" double precision NOT NULL,
    "originModule" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "products_code_idx" ON "products" USING btree ("code");
CREATE INDEX "products_origin_idx" ON "products" USING btree ("originModule");


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260405125620352', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260405125620352', "timestamp" = now();

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
