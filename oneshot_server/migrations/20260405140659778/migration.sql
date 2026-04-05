BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "product_groups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "originModule" text NOT NULL,
    "ownerId" uuid
);

-- Indexes
CREATE INDEX "product_group_origin_idx" ON "product_groups" USING btree ("originModule");
CREATE INDEX "product_group_owner_idx" ON "product_groups" USING btree ("ownerId");

--
-- ACTION DROP TABLE
--
DROP TABLE "products" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "description" text NOT NULL,
    "unit" text NOT NULL,
    "unitPrice" double precision NOT NULL,
    "originModule" text NOT NULL,
    "groupId" uuid NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "products_code_idx" ON "products" USING btree ("code");
CREATE INDEX "products_origin_idx" ON "products" USING btree ("originModule");
CREATE INDEX "product_group_idx" ON "products" USING btree ("groupId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "product_groups"
    ADD CONSTRAINT "product_groups_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "products"
    ADD CONSTRAINT "products_fk_0"
    FOREIGN KEY("groupId")
    REFERENCES "product_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260405140659778', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260405140659778', "timestamp" = now();

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
