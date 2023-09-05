drop database Almacenes;
create database Almacenes;
use Almacenes;

create table cajero(
	codigo int,
	nomApels varchar(255),
	PRIMARY KEY(codigo)
);

create table producto(
	codigo_p int,
	nombre varchar(100),
	precio int,
	primary key(codigo_p)
);

create table maquinas_registradas(
	codigo_m int,
	piso int,
	primary key(codigo_m)
);

create table venta(
	cajero int,
	maquina int,
	producto int,
	constraint fk_cajero FOREIGN KEY(cajero) references cajero(codigo),
	constraint fk_maquina FOREIGN KEY(maquina) references maquinas_registradas(codigo_m),
	constraint fk_producto FOREIGN KEY(producto) REFERENCES producto(codigo_p)
);

INSERT into cajero values
(01,"Alexandre"),
(02,"Clay"),
(03,"George"),
(04,"Ricardo"),
(05,"Fernando");

insert into producto values
(01,"Sopa",5500),
(02,"Arroz",300),
(03,"Harina",700),
(04,"Azucar",550),
(05,"Don satur",260);

insert into maquinas_registradas values
(01,01),
(02,01),
(03,01),
(04,02),
(05,02);

insert into venta VALUES
(02,01,05),
(04,05,01),
(03,02,02),
(05,03,03),
(01,04,04);