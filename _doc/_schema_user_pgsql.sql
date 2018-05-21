
-- ----------------------------
-- Sequence structure for hibernate_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hibernate_sequence";
CREATE SEQUENCE "public"."hibernate_sequence"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_authority";
CREATE TABLE "public"."sys_authority" (
  "id" int8 NOT NULL,
  "created_by" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_date" timestamp(6) NOT NULL,
  "last_modified_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_modified_date" timestamp(6),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "id" int8 NOT NULL,
  "created_by" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_date" timestamp(6) NOT NULL,
  "last_modified_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_modified_date" timestamp(6),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sys_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_authorities";
CREATE TABLE "public"."sys_role_authorities" (
  "sys_role_id" int8 NOT NULL,
  "authorities_id" int8 NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "id" int8 NOT NULL,
  "created_by" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_date" timestamp(6) NOT NULL,
  "last_modified_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_modified_date" timestamp(6),
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "first_name" varchar(50) COLLATE "pg_catalog"."default",
  "image_url" varchar(256) COLLATE "pg_catalog"."default",
  "last_name" varchar(50) COLLATE "pg_catalog"."default",
  "password" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_roles";
CREATE TABLE "public"."sys_user_roles" (
  "sys_user_id" int8 NOT NULL,
  "roles_id" int8 NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."hibernate_sequence"', 2, false);

-- ----------------------------
-- Primary Key structure for table sys_authority
-- ----------------------------
ALTER TABLE "public"."sys_authority" ADD CONSTRAINT "sys_authority_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_authorities
-- ----------------------------
ALTER TABLE "public"."sys_role_authorities" ADD CONSTRAINT "sys_role_authorities_pkey" PRIMARY KEY ("sys_role_id", "authorities_id");

-- ----------------------------
-- Uniques structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "uk_ahtq5ew3v0kt1n7hf1sgp7p8l" UNIQUE ("email");
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "uk_51bvuyvihefoh4kp5syh2jpi4" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_roles
-- ----------------------------
ALTER TABLE "public"."sys_user_roles" ADD CONSTRAINT "sys_user_roles_pkey" PRIMARY KEY ("sys_user_id", "roles_id");

-- ----------------------------
-- Foreign Keys structure for table sys_role_authorities
-- ----------------------------
ALTER TABLE "public"."sys_role_authorities" ADD CONSTRAINT "fk9oc88v6ini6fjy2spcb8d63no" FOREIGN KEY ("authorities_id") REFERENCES "sys_authority" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."sys_role_authorities" ADD CONSTRAINT "fkscivyriuji1w3sgrcpeqo5jdd" FOREIGN KEY ("sys_role_id") REFERENCES "sys_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sys_user_roles
-- ----------------------------
ALTER TABLE "public"."sys_user_roles" ADD CONSTRAINT "fkd0ut7sloes191bygyf7a3pk52" FOREIGN KEY ("sys_user_id") REFERENCES "sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."sys_user_roles" ADD CONSTRAINT "fkdpvc6d7xqpqr43dfuk1s27cqh" FOREIGN KEY ("roles_id") REFERENCES "sys_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
