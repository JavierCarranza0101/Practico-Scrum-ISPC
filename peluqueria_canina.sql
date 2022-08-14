create database peluqueria_canina;
use peluqueria_canina;


create table Dueno(
DNI int primary key,
Nombre varchar(50),
Apellido varchar(50),
Telefono int,
Direccion varchar(100)
);

-- 1) Realice la consulta correspondiente para crear la tabla Perro, 
-- teniendo en cuenta sus claves foráneas y primarias.
create table Perro(
ID_Perro int primary key,
Nombre varchar(25),
Fecha_nac datetime,
Sexo varchar(10),
DNI_dueno int,
constraint DNI_dueno foreign key (DNI_dueno) references Dueno(DNI)
);

create table Historial(
Id_Historial int primary key,
Fecha datetime,
Perro int,
Descripcion varchar(150),
Monto int,
constraint Perro_FK foreign key (Perro) references Perro(ID_Perro)
);


-- Insert de la lista DUENO con datos ficticios
insert into Dueno values(24567543, "Juan","Gomez", 156505688, "San Martin 335") ;
insert into Dueno values(44567890, "Pedro","Diaz", 146520878, "Colon 1335") ;
insert into Dueno values(36567123, "Laura","Andrada", 156500888, "Rivadavia 835") ;
insert into Dueno values(19345654, "Luciana","Carrizo", 1465443488, "Mitre 35") ;


-- 2) Insert en la tabla correspondiente un nuevo animal (perro) 
-- como paciente y el dueño asociado a ese animal.
insert into Perro values(1, "Pupy", 20160322, "Hembra", 24567543) ;
insert into Perro values(2, "Bandido", 20200121, "Macho", 44567890) ;
insert into Perro values(3, "Milo", 20180802, "Macho", 36567123) ;
insert into Perro values(10, "Negra", 20150620, "Hembra", 19345654) ;

-- Insert de la lista HISTORIAL con datos ficticios
insert into Historial values(1, 20220322, 1, "Corte de uñas y baño", 2500) ;
insert into Historial values(2, 20220326, 3, "Baño", 1800) ;
insert into Historial values(3, 20220412, 10, "Corte de uñas", 1500) ;
insert into Historial values(4, 20220416, 1, "Baño y peinado", 2500) ;
insert into Historial values(5, 20220512, 3, "Corte de pelo", 2200) ;

-- C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes):
-- 8) Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10
insert into Historial values(6, 20220605, 10, "Baño y Corte de pelo", 2600)




select * from dueno;
select * from perro;
select * from historial;
