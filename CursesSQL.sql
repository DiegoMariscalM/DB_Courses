CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "courses_id" uuid,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "courses_id" uuid,
  "name" varchar NOT NULL
);

CREATE TABLE "courses_finished" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "courses_id" uuid,
  "name" varchar NOT NULL,
  "date" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_finished" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_finished" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
