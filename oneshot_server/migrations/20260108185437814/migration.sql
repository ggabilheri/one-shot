BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_profile" (
    "id" bigserial PRIMARY KEY,
    "userInfoId" bigint NOT NULL,
    "type" bigint NOT NULL,
    "fullName" text NOT NULL,
    "cpf" text
);


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260108185437814', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260108185437814', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
