BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "subscription_plans" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "planType" text NOT NULL,
    "unitValue" double precision NOT NULL,
    "quantity" bigint NOT NULL,
    "totalValue" double precision NOT NULL,
    "periodicity" text NOT NULL,
    "status" text NOT NULL
);

-- Indexes
CREATE INDEX "plan_type_idx" ON "subscription_plans" USING btree ("planType");
CREATE INDEX "plan_status_idx" ON "subscription_plans" USING btree ("status");


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260406003347216', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260406003347216', "timestamp" = now();

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
