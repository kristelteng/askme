CREATE TABLE "answers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "question_id" integer, "created_at" datetime, "updated_at" datetime, "user_id" integer);
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "text" text, "created_at" datetime, "updated_at" datetime, "title" varchar(255), "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255), "password_digest" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_answers_on_question_id" ON "answers" ("question_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20150318161432');

INSERT INTO schema_migrations (version) VALUES ('20150319002630');

INSERT INTO schema_migrations (version) VALUES ('20150319004532');

INSERT INTO schema_migrations (version) VALUES ('20150319164138');

INSERT INTO schema_migrations (version) VALUES ('20150320003304');

INSERT INTO schema_migrations (version) VALUES ('20150320004115');

INSERT INTO schema_migrations (version) VALUES ('20150320005038');

INSERT INTO schema_migrations (version) VALUES ('20150320012519');

