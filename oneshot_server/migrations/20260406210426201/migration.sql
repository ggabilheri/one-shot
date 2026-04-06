BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "asaas_webhook_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "eventId" text NOT NULL,
    "event" text NOT NULL,
    "payload" text NOT NULL,
    "processed" boolean NOT NULL DEFAULT false,
    "processedAt" timestamp without time zone,
    "error" text,
    "receivedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "asaas_event_id_idx" ON "asaas_webhook_events" USING btree ("eventId");
CREATE INDEX "asaas_event_processed_idx" ON "asaas_webhook_events" USING btree ("processed");
CREATE INDEX "asaas_event_type_idx" ON "asaas_webhook_events" USING btree ("event");
CREATE INDEX "asaas_event_received_idx" ON "asaas_webhook_events" USING btree ("receivedAt");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "invoices" ADD COLUMN "asaasInstallmentId" text;
ALTER TABLE "invoices" ADD COLUMN "asaasCustomerId" text;
CREATE INDEX "invoice_asaas_installment_idx" ON "invoices" USING btree ("asaasInstallmentId");
--
-- ACTION ALTER TABLE
--
ALTER TABLE "payments" DROP COLUMN "gatewayTransactionId";
ALTER TABLE "payments" ADD COLUMN "asaasPaymentId" text;
ALTER TABLE "payments" ADD COLUMN "asaasCustomerId" text;
ALTER TABLE "payments" ADD COLUMN "asaasBillingType" text;
ALTER TABLE "payments" ADD COLUMN "asaasDueDate" timestamp without time zone;
ALTER TABLE "payments" ADD COLUMN "asaasNetValue" double precision;
ALTER TABLE "payments" ADD COLUMN "asaasInvoiceUrl" text;
ALTER TABLE "payments" ADD COLUMN "asaasBankSlipUrl" text;
ALTER TABLE "payments" ADD COLUMN "asaasPixQrCodePayload" text;
ALTER TABLE "payments" ADD COLUMN "asaasPixQrCodeImage" text;
ALTER TABLE "payments" ADD COLUMN "asaasRefundedAt" timestamp without time zone;
CREATE INDEX "payment_asaas_id_idx" ON "payments" USING btree ("asaasPaymentId");

--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260406210426201', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260406210426201', "timestamp" = now();

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
