CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "id_courses" uuid NOT NULL,
  "id_users" uuid NOT NULL,
  "id_category" uuid NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "courses_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);


CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "id_users_roles" uuid NOT NULL,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("id_users") REFERENCES "users" ("id");

ALTER TABLE "roles" ADD FOREIGN KEY ("id_users_roles") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_courses") REFERENCES "courses_video" ("id");


select * from users;
select * from courses;
select * from courses_video;
select * from categories;
select * from roles;

insert into users (
	id,
	name,
	email,
	password,
	age) values (
	'2fb8e248-63e9-4054-9ef1-2505488e025d',
	'luis',
	'ebratimo23@gmail.com',
	'asd123',
	21),(
	'90e11886-c758-44df-854d-c4d839bcb20e',
	'ebrahim',
	'gordo@gmail.com',
	'qwer123',
	25),(
	'dc7ec9af-bae3-4635-af7b-2f02b95440d5',
	'carlos',
	'carlos@hotmail.com',
	'poi123',
	18);

insert into roles (
	id,
	id_users_roles,
	name) values(
	'fb84e20c-0542-47ca-90e8-a0644f3cf304',
	'2fb8e248-63e9-4054-9ef1-2505488e025d',
	'admin'),(
	'fa66dad9-e1ab-45c9-ab7b-38565af399c7',
	'90e11886-c758-44df-854d-c4d839bcb20e',
	'student'),(
	'2c478ab4-d923-4b3f-a028-1b7ecdefc5c1',
	'dc7ec9af-bae3-4635-af7b-2f02b95440d5',
	'teacher');

insert into courses_video (
	id,
	title,
	url) values ( 
	'68cc456b-27b2-4f3f-8341-20d8f902e2ca',
	'programin Python',
	'https://www.udemy.com/course/aprenda-la-logica-de-la-programacion/'),(
	'5e8a13cb-46bf-4221-a1ef-55f02236b6bc',
	'https://www.udemy.com/course/tu-camara-y-un-mundo-de-posibilidades/',
	'fotograifa y video'),(
	'c500948f-c003-4509-98fb-49aca67e87e7',
	'https://www.udemy.com/course/super-curso-de-guitarra-practico-para-principiantes/',
	'Como tocar guitarra');

insert into categories (
	id,
	name) values (
	'd3de149d-d7e7-4fcc-99a2-aa908f01a1ee',
	'programmin'),(
	'efcddc9d-6cb1-46b8-bc47-2d98826ab37a',
	'fotografia'),(
	'4fae0b4e-22cf-4f30-b273-29178e57230b',
	'Musica');
	
insert into courses (
	id,
	title,
	id_courses,
	id_users,
	id_category,
	description,
	level,
	teacher ) values (
	'1b6b8666-5142-45db-a633-6ab8bbc98e3b',
	'programcion con Python',
	'68cc456b-27b2-4f3f-8341-20d8f902e2ca',
	'2fb8e248-63e9-4054-9ef1-2505488e025d',
	'd3de149d-d7e7-4fcc-99a2-aa908f01a1ee',
	'en este curso aprendera a programar',
	'basico',
	'gabriel'),(
	'bdc7a90f-d8f3-4dde-ae38-1e1aa87510b2',
	'Arte de la fotografia',
	'5e8a13cb-46bf-4221-a1ef-55f02236b6bc',
	'90e11886-c758-44df-854d-c4d839bcb20e',
	'efcddc9d-6cb1-46b8-bc47-2d98826ab37a',
	'aprendera como tomar fotogrfia y en que angulo hacerlo',
	'intermedio',
	'rafael'),
	
	(
	'56baea0e-b5df-4114-afce-15c12a2733d6',
	'Musica teoria y solfeo',
	'c500948f-c003-4509-98fb-49aca67e87e7',
	'dc7ec9af-bae3-4635-af7b-2f02b95440d5',
	'4fae0b4e-22cf-4f30-b273-29178e57230b',
	'aprendera a tocar y leer musica aprendera a tocar un instrumento',
	'avanzado',
	'cruz'); 