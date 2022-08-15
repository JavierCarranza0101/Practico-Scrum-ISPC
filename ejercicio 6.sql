#Creacion de BD
create database if not exists PeluqueriaPerros;

#Seleccion de BD

use PeluqueriaPerros;

#Tabla Dueño

create table Dueño(
DNI int primary key not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono bigint not null,
Dirección varchar(50)
);


USE PeluqueriaPerros;

#Nuevo Dato

insert into Dueño ( DNI, Nombre, Apellido, Telefono, Dirección) value
("46484307", 'nacho', 'diaz', 351345676, 'jesus maria 307'),
("41235643", 'Pedro', 'bustos', 4789667, ' qulino 101');

#Tabla Perro

create table Perro (
ID_Perro int primary key auto_increment,
Nombre varchar(25) not null,
Fecha_Nacimiento date,
Sexo varchar(25),
Dueño int,
foreign key (Dueño) references Dueño(Nombre)
);


USE PeluqueriaCanina;
#Inserto Perro 
insert into Perro (ID_Perro, Nombre, Fecha_Visita, Sexo, Dueño) value
(1, 'Pypu', '2022-07-01', 'M', "rius"),
(3, 'Mirko', '2022-07-31', 'M', "jaco");

#Ejercicio 6 
Select Clientes as Fecha_Visita from Perros where fecha between '2022-07-01' and '2022-07-31';
