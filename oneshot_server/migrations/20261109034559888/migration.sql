BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "bank_transactions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "bankAccountId" uuid NOT NULL,
    "fitId" text NOT NULL,
    "transactionType" text NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "amount" double precision NOT NULL,
    "memo" text,
    "financialEntryId" uuid,
    "isReconciled" boolean NOT NULL,
    "reconciledAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "bank_transaction_fitid_account_idx" ON "bank_transactions" USING btree ("bankAccountId", "fitId");
CREATE INDEX "bank_transaction_account_idx" ON "bank_transactions" USING btree ("bankAccountId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "bank_transactions"
    ADD CONSTRAINT "bank_transactions_fk_0"
    FOREIGN KEY("bankAccountId")
    REFERENCES "bank_accounts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "bank_transactions"
    ADD CONSTRAINT "bank_transactions_fk_1"
    FOREIGN KEY("financialEntryId")
    REFERENCES "financial_entries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20261109034559888', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261109034559888', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20260824182343939', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182343939', "timestamp" = now();


COMMIT;
