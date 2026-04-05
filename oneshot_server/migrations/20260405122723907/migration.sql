BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "gunsmiths" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "taxId" text NOT NULL,
    "addressId" uuid,
    "ownerId" uuid,
    "active" boolean NOT NULL DEFAULT true
);

-- Indexes
CREATE UNIQUE INDEX "gunsmith_tax_id_idx" ON "gunsmiths" USING btree ("taxId");
CREATE INDEX "gunsmith_owner_id_idx" ON "gunsmiths" USING btree ("ownerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "invoice_items" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "description" text NOT NULL,
    "quantity" double precision NOT NULL,
    "unitPrice" double precision NOT NULL,
    "totalPrice" double precision NOT NULL,
    "invoiceId" uuid
);

-- Indexes
CREATE INDEX "invoice_item_invoice_id_idx" ON "invoice_items" USING btree ("invoiceId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "invoices" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "originModule" text NOT NULL,
    "direction" text NOT NULL,
    "status" text NOT NULL,
    "issueDate" timestamp without time zone NOT NULL,
    "dueDate" timestamp without time zone NOT NULL,
    "totalAmount" double precision NOT NULL,
    "discount" double precision,
    "finalAmount" double precision NOT NULL,
    "currency" text NOT NULL,
    "notes" text,
    "clubId" uuid,
    "gunsmithId" uuid,
    "userId" uuid,
    "draweeId" uuid
);

-- Indexes
CREATE INDEX "invoice_status_idx" ON "invoices" USING btree ("status");
CREATE INDEX "invoice_due_date_idx" ON "invoices" USING btree ("dueDate");
CREATE INDEX "invoice_club_id_idx" ON "invoices" USING btree ("clubId");
CREATE INDEX "invoice_gunsmith_id_idx" ON "invoices" USING btree ("gunsmithId");
CREATE INDEX "invoice_user_id_idx" ON "invoices" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "payments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "paymentDate" timestamp without time zone NOT NULL,
    "amountPaid" double precision NOT NULL,
    "paymentMethod" text NOT NULL,
    "status" text NOT NULL,
    "currency" text NOT NULL,
    "gatewayTransactionId" text,
    "invoiceId" uuid
);

-- Indexes
CREATE INDEX "payment_invoice_id_idx" ON "payments" USING btree ("invoiceId");
CREATE INDEX "payment_status_idx" ON "payments" USING btree ("status");
CREATE INDEX "payment_date_idx" ON "payments" USING btree ("paymentDate");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "gunsmiths"
    ADD CONSTRAINT "gunsmiths_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "addresses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "gunsmiths"
    ADD CONSTRAINT "gunsmiths_fk_1"
    FOREIGN KEY("ownerId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "invoice_items"
    ADD CONSTRAINT "invoice_items_fk_0"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_0"
    FOREIGN KEY("clubId")
    REFERENCES "clubs"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_1"
    FOREIGN KEY("gunsmithId")
    REFERENCES "gunsmiths"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_2"
    FOREIGN KEY("userId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "invoices"
    ADD CONSTRAINT "invoices_fk_3"
    FOREIGN KEY("draweeId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "payments"
    ADD CONSTRAINT "payments_fk_0"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260405122723907', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260405122723907', "timestamp" = now();

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
