BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "bank_accounts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "bankName" text,
    "agency" text,
    "agencyDigit" text,
    "accountNumber" text,
    "accountDigit" text,
    "balance" double precision NOT NULL,
    "status" text NOT NULL,
    "originModule" text NOT NULL
);

-- Indexes
CREATE INDEX "bank_account_origin_idx" ON "bank_accounts" USING btree ("originModule");
CREATE INDEX "bank_account_status_idx" ON "bank_accounts" USING btree ("status");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "financial_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "type" text NOT NULL,
    "description" text NOT NULL,
    "amount" double precision NOT NULL,
    "dueDate" timestamp without time zone NOT NULL,
    "paymentDate" timestamp without time zone,
    "status" text NOT NULL,
    "originModule" text NOT NULL,
    "bankAccountId" uuid NOT NULL,
    "invoiceId" uuid NOT NULL
);

-- Indexes
CREATE INDEX "financial_entry_type_idx" ON "financial_entries" USING btree ("type");
CREATE INDEX "financial_entry_status_idx" ON "financial_entries" USING btree ("status");
CREATE INDEX "financial_entry_due_date_idx" ON "financial_entries" USING btree ("dueDate");
CREATE INDEX "financial_entry_origin_idx" ON "financial_entries" USING btree ("originModule");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "invoices" ADD COLUMN "isRecurrent" boolean NOT NULL DEFAULT false;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "financial_entries"
    ADD CONSTRAINT "financial_entries_fk_0"
    FOREIGN KEY("bankAccountId")
    REFERENCES "bank_accounts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "financial_entries"
    ADD CONSTRAINT "financial_entries_fk_1"
    FOREIGN KEY("invoiceId")
    REFERENCES "invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260408125549550', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260408125549550', "timestamp" = now();

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
