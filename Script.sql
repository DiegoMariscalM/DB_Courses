insert into users 
(id, 
name, 
last_name, 
email, 
password, 
age
)
values(
'ec5fca91-1fb1-4d36-9e22-b2e324675e33',
'Diego',
'Mariscal',
'Diego@gmail.com',
'Root',
25
),(
'3b43f129-10f6-4fcf-bd02-373fe02d1445',
'Ana',
'Mariscal',
'Ana@gmail.com',
'Root2',
33
);


insert into courses (
id,
description,
level,
teacher
)values (
'aef77188-0cb9-4861-961d-00f11bc08192',
'From cero to Guitar Hero',
'Entery level',
'Juan Perez'
),(
'c7039139-4f63-4fe6-8274-fac37040231b',
'How to be a master chef',
'Entery level',
'Fernanda Ramirez'
);



insert into course_video (
id,
title,
url
)values(
'146b1089-21eb-4186-8993-a1009dd663e8',
'From cero to Guitar Hero',
'https://coursea.com/drrsdffsdds4'
),(
'65812498-9db8-4542-bc85-06d323cd6c50',
'How to be a master chef',
'https://coursea.com/ddfds4'
);

insert into categories(name)values('Music'),('Cooking');

insert into courses_finished (
id,
name,
date
)values(
'555caed4-9bfe-43c8-8129-567c3805b7bb',
'From cero to Guitar Hero',
'22/01/2023'
),(
'ec6ad64d-c6c0-419f-aed5-beb406d62b4e',
'How to be a master chef',
'01/12/2022'
);