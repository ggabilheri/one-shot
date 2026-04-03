BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "role_permissions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "securityRoleId" uuid,
    "platform" text NOT NULL,
    "module" text,
    "level" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "security_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "active" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userProfileId" uuid,
    "securityRoleId" uuid
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "role_permissions"
    ADD CONSTRAINT "role_permissions_fk_0"
    FOREIGN KEY("securityRoleId")
    REFERENCES "security_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_fk_0"
    FOREIGN KEY("userProfileId")
    REFERENCES "user_profile"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_fk_1"
    FOREIGN KEY("securityRoleId")
    REFERENCES "security_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR oneshot
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('oneshot', '20260403154108045', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260403154108045', "timestamp" = now();

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
