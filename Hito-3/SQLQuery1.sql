create database Universidad;
drop table materias;
create table materias(
id_mat integer identity primary key,
nombre_mat varchar(100),
cod_mat varchar(100)
);

INSERT INTO materias (nombre_mat, cod_mat) 
VALUES ('Introduccion a la Arquitectura','ARQ-101');
INSERT INTO materias (nombre_mat, cod_mat) 
VALUES ('Urbanismo y Diseno','ARQ-102');
INSERT INTO materias (nombre_mat, cod_mat)
VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');
INSERT INTO materias (nombre_mat, cod_mat) 
VALUES ('Matematica discreta','ARQ-104');
INSERT INTO materias (nombre_mat, cod_mat) 
VALUES ('Fisica Basica','ARQ-105');
drop table estudiantes1;
create table estudiantes1 (
id_est_cedula integer primary key,
nombres varchar (100),
apellido varchar (100),
genero varchar (10),
direccion varchar (200),
telefono integer,
email varchar (50),
edad integer,
id_esc integer

);

INSERT INTO estudiantes1 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES (1,'Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575, 'xime@gmail.com', 25, 1);
INSERT INTO estudiantes1 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES (2,'Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576, 'saul@gmail.com', 24, 1);
INSERT INTO estudiantes1 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES (3,'Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com', 28, 1);
INSERT INTO estudiantes1 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES (4,'Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578, 'joel@gmail.com', 21, 1);
INSERT INTO estudiantes1 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc)
VALUES (4, 'Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579, 'augusto@gmail.com', 20, 1);
drop table escuela;
create table escuela(
id_esc integer identity primary key,
nombre varchar(100),
direccion varchar(100)
);
select esc.* from escuela esc;
INSERT INTO escuela (nombre, direccion) VALUES ('San Felipe Asturias II', 'Zona Illampu Av. Prol. San Lorenzo');
create table periodo(
id_per integer identity primary key,
ano_gestion integer,
semestre varchar(50)
);
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');
drop table kardex;
create table kardex(
id_kar integer primary key,
nota_num integer,
nota_alfabe varchar(100),
estado varchar(10),
id_mat integer,
id_est_cedula integer,
id_per integer,
);
select* from kardex;
select* from estudiantes1;
select* from escuela;
select* from materias;

insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values (1,51,'CINCUENTA Y UNO','APROBADO',1,1,1);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values (2,31,'TREINTA Y UNO','REPROBADO',2,2,2);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values (3,61,'SESENTA Y UNO','APROBADO',3,3,3);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values (4,41,'CUARENTA Y UNO','REPROBADO',4,4,4);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
	values (5,81,'OCHENTA Y UNO','APROBADO',5,4,5);





SELECT est.nombres, est.apellido
FROM  estudiantes1 AS est
WHERE  est.edad >= 24 and est.genero = 'masculino';

SELECT est.nombres, est.apellido
FROM  estudiantes1 AS est
WHERE  est.edad >= 25;

SELECT est.nombres, est.apellido
FROM  estudiantes1 AS est
WHERE  est.edad >= 24 and est.genero = 'masculino';

select est.nombres, est.apellido, kar.nota_num
from estudiantes1 as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num>=51;

select est.nombres, est.apellido, kar.nota_num, est.edad
from estudiantes1 as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num<51 AND est.genero='masculino';


create table Letras_A(
letras1 char not null,
);

insert into Letras_A(letras1)
values ('D');
insert into Letras_A(letras1)
values ('E');
insert into Letras_A(letras1)
values ('F');
insert into Letras_A(letras1)
values ('G');
insert into Letras_A(letras1)
values ('H');
select le.* from Letras_A le;

create table Letras_B(
letras2 char not null,
);

insert into Letras_B(letras2)
values ('A');
insert into Letras_B(letras2)
values ('B');
insert into Letras_B(letras2)
values ('E');
insert into Letras_B(letras2)
values ('H');
insert into Letras_B(letras2)
values ('R');

select lb.* from Letras_B lb;

select le.letras1, lb.letras2 
from Letras_A as le
inner join Letras_B as lb on le.letras1 = lb.letras2;

create table Numeros_A(
numero integer not null,
);

insert into Numeros_A(numero)
values(1);
insert into Numeros_A(numero)
values(2);
insert into Numeros_A(numero)
values(3);
insert into Numeros_A(numero)
values(4);
insert into Numeros_A(numero)
values(5);
insert into Numeros_A(numero)
values(6);
insert into Numeros_A(numero)
values(7);

select na.* from Numeros_A na;

create table Numeros_B(
numero integer not null,
);
insert into Numeros_B(numero)
values(4);
insert into Numeros_B(numero)
values(5);
insert into Numeros_B(numero)
values(6);
insert into Numeros_B(numero)
values(7);
insert into Numeros_B(numero)
values(8);
insert into Numeros_B(numero)
values(9);

select nb.* from Numeros_B nb;

select na.numero, nb.numero
from Numeros_A as na
inner join Numeros_B as nb on nb.numero = na.numero
where na.numero >5 and nb.numero >5;

--truncate sirve para borrar los datos de una de un tabla
 create table Notas_P1(
 not_a integer,
 );
 select na.* from Notas_P1 na;
 insert into Notas_P1(not_a) 
 values (51),(40),(60),(75),(30);

 create table Notas_P2(
 not_b integer,
 );
 select nb.* from Notas_P2 nb;
  insert into Notas_P2(not_b) 
 values (60),(51),(100);

 create table Notas_P3(
 not_c integer,
 );
 select nc.* from Notas_P3 nc;
  insert into Notas_P3(not_c) 
 values (20),(21),(23),(48),(51),(60);

select na.not_a, nb.not_b, nc.not_c
from Notas_P1 as na
inner join Notas_P2 as nb on nb.not_b = na.not_a
inner join Notas_P3 as nc on nc.not_c = nb.not_b
where na.not_a >50 and na.not_a <100;


select est.nombres, est.apellido, est.direccion
from estudiantes1 as est
inner join escuela as esc on esc.id_esc = est.id_esc
where esc.nombre = 'San Felipe Asturias II';

