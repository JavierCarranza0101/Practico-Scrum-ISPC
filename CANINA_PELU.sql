CREATE DATABASE canina_pelu;
#TABLA DUEÑO
CREATE TABLE `DueÑo` (
  `DNI` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(25) NOT NULL,
  PRIMARY KEY (`DNI`)
);
INSERT INTO DueÑo Values( 32678345, 'Pedro','Caros', 3838421249, 'Ruta 39');
INSERT INTO DueÑo Values( 24780210, 'Daniel','Suarez', 3834450290, 'Chañar Punco'); 
INSERT INTO DueÑo Values( 33120660, 'Esteban','Rios', 3838421250, 'Mojarras');
SELECT * FROM DueÑo;
#TABLA PERRO
CREATE TABLE `Perro` (
  `Id_Perro` int NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Fecha_Nac` datetime(6) DEFAULT NULL,
  `Sexo` varchar(25) DEFAULT NULL,
  `DNI_dueño` int NOT NULL,
  PRIMARY KEY (`Id_Perro`),
  KEY `DNI_dueño_idx` (`DNI_dueño`),
  CONSTRAINT `DNI_dueño` FOREIGN KEY (`DNI_dueño`) REFERENCES `dueño` (`DNI`)
);
INSERT INTO Perro Values( 1, 'Simon','2022-05-10', 'Macho', 32678345);
INSERT INTO Perro Values( 2, 'Deysi','2021-06-20', 'Hembra', 24780210);
INSERT INTO Perro Values( 3, 'Drago','2022-07-30', 'Macho', 33120660);
SELECT * FROM Perro;
#TABLA HISTORIAL
CREATE TABLE `Historial` (
  `Id_Historial` int NOT NULL,
  `Fecha` datetime(6) NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Monto` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Id_Historial`),
  CONSTRAINT `Perro` FOREIGN KEY (`Id_Historial`) REFERENCES `perro` (`Id_Perro`)
);
INSERT INTO Historial Values( 1, '2022-08-10', 1,"vacuna", 3000);
INSERT INTO Historial Values( 2, '2021-10-21', 2,"peluqueria", 2500);
INSERT INTO Historial Values( 3, '2022-08-14', 3,"baño", 2000);

SELECT * FROM Historial;

#Consultar ingresos mes de julio

SELECT fecha, monto FROM Historial where (fecha) BETWEEN '2022-07-01' AND '2022-07-31'