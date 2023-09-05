drop database Agency;
create database Agency;
use Agency;


create TABLE agencia(
	Id_agencia int NOT NULL,
	nombre char(50),
	fecha_inicio DATE,
	ciudad_origen CHAR(50),
	PRIMARY KEY(Id_agencia)
);

create TABLE paquete(
	id_paquete int NOT NULL,
	oferta char(50),
	pais char(50),
	agencia_p int,
	fecha_final DATE,
	precio_c int null,
	constraint fk_agencia foreign key(agencia_p) references agencia(Id_agencia),
	PRIMARY KEY(Id_paquete)
);


create table banco(
	id_banco INT,
	nombre_bc char(50),
	sucursal char(50),
	PRIMARY KEY(Id_banco)
);

create table cliente(
	DNI int,
	nombre char(50),
	apellido CHAR(50),
	domicilio char(50),
	forma_de_pago char(50) null,
	sucursal_c int,
	paquete_c int,
	PRIMARY KEY(DNI),
	constraint fk_combra FOREIGN KEY(paquete_c) REFERENCES paquete(id_paquete),
	constraint fk_banco foreign key(sucursal_c) references banco(id_banco)
	);


INSERT agencia VALUES
(01,"Kingsman","2024-04-11","Washington DC."),
(04,"Viaja Feliz","2023-06-05","CABA"),
(02,"Destino de Ensueño","2023-10-10","Caxias"),
(03,"Viaje Estelar","2023-12-01","CABA"),
(05,"Ruta Ideal","2024-06-10","Veneccia");

INSERT paquete VALUES
(01,"viaje a Disney + crucero por el Caribe","USA",04,"2023-07-11",820000),
(02,"Viaje a Rio de Janeiro + Estadia de 1 semana paga","Brazil",02,"2024-2-1",900000),
(03,"Viaje por Zimbabue + Safari","Zimbabue",05,"2024-07-25",500000),
(04,"Viaje a Francia + Estadia de 2 semanas incluidas","Francia",01,"2024-06-11",300000),
(05,"Viaje a Italia + Estadia de 1 mes incluidas","italia",03,"2024-02-01",1000000);


insert banco VALUES
(01,"Galicia","Av. Álvarez Jonte 5255"),
(02,"BBVA","Av. Rivadavia 11102"),
(03,"ICBC","Av. Francisco Beiró 437"),
(04,"Credicoop","Timoteo Gordillo 57"),
(05,"BBVA","Francisco Beiró 4359 61");


INSERT cliente VALUES
(30987731,"Al","Cachofa","Corrientes 2023","efectivo",03,01),
(31854981,"Armando","Esteban Quito","Bondpland 1460 departamento 3C","efectivo",05,02),
(31896798,"Aitor","Tilla","Bondpland 1460 departamento 6B",null,null,NULL),
(31574402,"Inés","Esario","Cortina 1440","tranferencia",02,03),
(31904231,"Elba","Surero","Av. 9 de Julio 2380","tarjeta",04,04),
(32010343,"Aquiles","Brinco","Av. Jonte 4021",NULL,NULL,NULL),
(32003123,"Alex","Cremento","Av. Jonte 4021","efectivo",01,05),
(32001245,"Roberto","Ramirez","Av. Jonte 4017",NULL,NULL,NULL);