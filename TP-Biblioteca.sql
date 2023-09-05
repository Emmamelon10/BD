drop database if exists biblioteca;
create database Biblioteca;
use Biblioteca;

create table Socio(
CodSocio int,
DNI varchar (10),
Nombre varchar (60),
Apellido varchar (60),
Direccion varchar (30),
Tel varchar (15),
constraint pk_persona primary key (CodSocio)
)engine=innodb;


insert into socio values
(20145, "11452452","Maria Josefuna", "Luro", "Av Nazca 21478 CABA", "47857855"),
(20154, "19785452", "Marcos", "Nevarez", "Trelles 1234 CABA", "47852154"),             
(21489, "20145874", "Juliana", "Laprida", "Bacacay 10789 Haedo", "49061236"),
(21474, "22145986", "Karina", "Quirno", "Bolivia 52345 CABA", "47851414"),
(21523, "20333564", "Viviana", "Martinez", "Mendoza 123 Martinez", "45038796"),        
(21614, "18754123", "Federico", "Fernandez", "Melian 234 CABA", "45012563"),          
(21602, "32856922", "Manuel", "Fernandez",	"Av Corro 980 Haedo", "55097878"),
(22384, "39412856", "Nicolas", "Quesada", "Paz 408 Tigre", "46831512"),                
(22710, "38012054", "Armando", "Alvarez", "Pedernera 12 CABA", "46874596"),           
(25125, "36187002", "Rogelio", "Aragon", "Av Beiro 3456 CABA", "49876541"),           
(26798, "40256321", "Mariela", "Gutierrez", "Av Nazca 10789 CABA", "45698736"),
(27890, "23256321", "Monica", "Gutierrez", "Las Lajas 2134 CABA", "48998736"),
(27951, "33256321", "Oscar", "Araoz", "Baigorria 1122 CABA", "42458736"),
(34520, "40256111", "Nicolas", "Garcia Gomez", "Peru 678 CABA", "45690036"),
(34531, "41056321", "Florencia", "Herrera", "Av de los Incas 10789 CABA", "45008736"),
(35896, "47256321", "Maria Gabriela", "Fontana", "Nutrias 10789 CABA", "45698006"),
(35930, "12256321", "Joaquin Hernan", "Gutierrez", "Av Nazca 2458 CABA", "45325736"),
(36001, "16256321", "Lucas Carlos", "Martinez", "Gomez de Acuña 10789 CABA", "45668736"),
(36785, "18356321", "Mariela Lorena", "Blanco", "Frias 125 CABA", "45632736");


create table Autor(
CodAutor int,
Nombre varchar (60),
Apellido varchar (60),
DNI varchar (10),
Mail varchar (20),
Tel varchar (15),
constraint pk_autor primary key (CodAutor)
)engine=innodb;


insert into autor values
 (1452, "Jose Maria", "Martin", "42345654", "JoseMartin@hotmail.com", "45725439"),
 (1454, "Martin", "Pozuelo", "34823492", "MartinPozuelo@hotmail.com", "45743245"),
 (1451, "Enrique", "Palladino", "34562812", "EnriquePalladino@hotmail.com", "45741423"),
 (1455, "Leandro", "Palladino", "34234547", "LeandroPalladino@hotmail.com", "45723468"),
 (1453, "Judith", "Shulman","34567928", "JudithShulman@hotmail.com", "45721564"),
 (1457, "Rachel", "Lotan", "45912840", "RachelLotan@hotmail.com", "45863291"),
 (1450, "Jennifer", "Whitcomb", "32948102", "JenniferWhitcomb@hotmail.com", "45824092"),
 (1280, "Fernando", "Casale","20469516","Casale12@gmail.com","47896134"),
 (1281, "Gustavo", "Katcheroff", "18567345", "KGustavo@hotmail.com", "41235656"),
 (1511,"Harold","Davis","34764176","harold.davis@hotmail.com","43742337"),
 (1680, "Thomas", "Armstrong", "94165803","Thomas@gmail.com","45677891"),
 (1431,"Hector","Arena","20200456","hectoraren@gmail.com","446883692"),
 (1437,"Carlos","Fernandez Garcia","2566123","Fernandezcarl@hotmail,com","46627894"),
 (1285,"Jose Javier","García Badell","16897516","javiercitoGB@hotmail.com","41255498"),
 (1485,"Craig","Zacker","22436465","zacker@gmail.com","34526473"),
 (1265, "Merilee", "Ford", "16879456", "MeriFord@hotmail.com", "48658726"),
 (1350, "Marco", "Cantu", "57152472", "marcocantu@hotmail.com", "32632625"),
 (1354, "Mariona", "Grane", "26235235", "marionagrane@gmail.com", "533264235"),
 (1359, "Cilia", "Willem", "53236424", "ciliawillem@gmailcom", "23523535"),
 (1601, "Francisco Jose", "Molina Robles", "28654392", "molina@gmail", "1564893157"),
 (1602, "German", "Pacio", "31698740", "GPacio@hotmail", "1564970238"),
 (1510,"Jose Higinio","Cernuda Menendez","1485697548","jose.cernuda@hotmail.com","916584280"),
 (1541, "Deborah", "Johnson", "5356982", "deborahjohnson@hotmail.com", "41192011"),
 (1542, "Luis Joyanes", "Aguilar", "14050558", "luisjoyanesaquilar@gmail.com", "42112593"),
 (1481,"Stuart","McClure","22345324","stuart@gmail.com","44327731"),
 (1482,"Joel","Scambray","24345121","joel@gmail.com","45487989"),
 (1483,"George","Kurtz","30429122","george@gmail.com","35279399"),
 (1260, "Laura", "Raya Gonzalez", "18271175", "laug@gmail.com", "44579823"),
 (1261, "David", "Miraut Andres", "21674142", "ddachaca@gmail.com", "49021565"), 
 (1262, "José Luis", "Raya Cabrera", "22564789", "cabreraj@gmail.com", "45612456"),
 (1321, "Laura Raya", "Gonzalez", "40156789", "LauGon@gmail.com", "1562387895"),
 (1322, "Miguel Santesmases", "Mestre", "36528160", "MSM@gmail.com", "1120568094"),
 (1323, "Juan Ignacio", "deTena", "37657894", "JuanTena@gmail.com", "1526399311"),
 (1170,"Mark","Dodge","24567056","mark_dodge@gmail.com","36456756"),
 (1171,"Craig","Stinson","30183495","craig_stinson@gmail.com","36276899"),
 (1459,"Mario G.","Piattini Velthuis","13556988","MarioG@gmail.com","45618792"),
 (1500,"José A.","Calvo Manzano Villalón","14578945","JoseA@hotmail.com","48962354"),
 (1456,"Joaquín","Cervera Bravo","11456897","JoaquinBravo@gmail.com","47895647"),
 (1501,"Luis","Fernández Sanz","12874569","LuisSanz@hotmail.com","46879112"),
 (1172,"Ricardo","Goldberger","13425982","riqui@gmail.com","1112345678"),
 (1675, "José", "Coviella", "40321321", "jose@hotmail.com", "44987654");

 

create table Libro(
CodLibro int,
Titulo varchar (90),
ISBN varchar (15),
Editorial varchar (20),
AEscritura date,
AEdicion date,
constraint pk_libro primary key (CodLibro)
)engine=innodb;


insert into libro values
 (83, "Arquitectura de equipos y sistemas informaticos","9788478978687", "Ra-Ma", "2008/03/04","2008/02/01"), 
 (81, "Adminnistracion Organizacional","9789508020733", "Espacio", "1998/04/07", "1998/12/12"),
 (82, "El trabajo en grupo y la diversidad en el aula" , "978950518817X", "Amorrortu editores", "1998/05/06", "1999/04/08"),
 (40, "Manual de Diseño Web 2001","9789875260665","MP Ediciones","1997/05/26","1998/09/15"),
 (11,"Los secretos de Visual Basic 5","9788441502315","ANAYA","1997/05/22","1998/10/05"),
 (80,"Las inteligencias multiples en el aula","9789875000329","Manantial", "1998/02/06","1999/02/06"),
 (32,"Linux a Fondo", "9789875262454","MP ediciones","2002/06/03","2004/12/08"),
 (35, "Sepa como usar su PC al maximo", "9789875261334","MP ediciones","2001/08/09","2003/08/06"),
 (45,"CLIPPER 5.2","9788448119169","McGRAW-HILL","2007/03/09","2010/08/21"),
 (25,"NovellIntranetWare/NetWare5", "9788483220709","Prentice Hall","1998/07/15","1999/04/23"),
 (55, "Tecnologías de Interconectividad de Redes", "9789701701712", "Prentice Hall", "1997/05/20", "1998/07/16"),
 (112, "Delphi 5", "9788441509948", "La Biblia", "2002/02/19", "2004/02/03"),
 (111, "Web 2.0:Nuevas Formas de Aprender y Participar", "9788475846484", "Laertes", "2007/02/09", "2009/09/30"),
 (101, "Redes Locales", "9788478979233", "Ra-Ma", "2008/01/09", "2009/08/26"),
 (102, "Data Centers hoy", "9789871609413", "Alfaomega", "2012/07/17","2014/05/28"),
 (10,"El libro del PC","9788478979318","RA-MA","2011/05/03","2012/09/20"),
 (91, "Etica informática y Etica e internet","9788484076445", "Edibesa", "2011/10/15", "2008/02/16"),
 (92,"Programacion en turbo pascal", "9788476154496", "Mc Grow Hill", "2001/09/12", "2000/05/12"),
 (21,"Hackers","9788448127864","McGrawHill","1999/11/17","2000/01/24"),
 (50, "Aplicaciones ofimáticas", "9788478979240", "Ra-Ma", "2008/05/15", "2009/10/15"),
 (61, "Sistemas Operativos Monopuesto","9788478979219","RA-MA", "2007/04/06","2009/03/06"),
 (62, "AutoCAD 2010" ,"9788441526754", "ANAYA", "2007/04/07", "2009/05/09"),
 (63, "DYANE Version 4" ,"9788436822960", "Piramide Anaya", "2005/07/10", "2009/01/11"),
 (120,"El Libro de Excel 2010","9788441528956","Anaya Multimedia","2009/06/15","2011/07/22"),
 (85,"Analisis y Diseño Detallado de Aplicaciones Informaticas de Gestion","9788478977765","RA-MA","2007/02/06","2007/09/06"),
 (122,"Windows Me Milleniu Edition","9789875260835","MP Ediciones","2000/02/25","1999/03/22"),
 (71, "Quark Xpress 8", "9788478979561", "Ra-Ma", "2009/02/02", "2010/02/02"),
 (155, "Pascal esencial","9788441508788", "Paperback","2005/06/03","2008/07/01"),
 (74, "Guia completa de Excell version 2002","9788448132415", "MCGRAW-HILL", "2001/01/05","2002/03/06"),
 (34, "La Biblia de Linux", "9789875261204", "MP Ediciones", "2002/02/07", "2003/03/04"),
 (39, "Sitios web bajo Linux", "9789875260740", "MP Ediciones", "2000/08/23", "2001/02/09"),
 (38, "S.O.S. PC", "9789875262355", "MP Ediciones", "2002/01/04", "2004/09/08"),
 (42, "Blogs", "9789876630337", "MP Ediciones", "1999/05/09", "2010/08/23");
 


create table LibroAutor(
CodLibro int,
CodAutor int,
constraint pk_LibroAutor primary key (CodLibro, CodAutor),
constraint fk_LibroAutor_L foreign key (CodLibro) references Libro (CodLibro),
constraint fk_LibroAutor_A foreign key (CodAutor) references Autor (CodAutor)
)engine=innodb;


insert into libroautor values 
(83, 1452),
(83, 1454),
(81, 1451),
(81, 1455),
(82, 1453),
(82, 1457),
(82, 1450),
(40, 1280),
(40, 1281),
(11, 1511),
(80, 1680),
(32, 1431),
(35, 1437),
(38, 1437),
(74,1170),
(45, 1285),
(25, 1485),
(55, 1265),
(112, 1350),
(111, 1354),
(111, 1359),
(101, 1601),
(102, 1602),
(10, 1510),
(91, 1541),
(92, 1542),
(155,1350),
(34, 1431),
(39, 1431),
(21,1481),
(21,1482),
(21,1483),
(50, 1260),
(50, 1261),
(42, 1280),
(50, 1262),
(61, 1321),
(62, 1322),
(63, 1323),
(120, 1170),
(120, 1171),
(85, 1459),
(85, 1500),
(85, 1456),
(85, 1501),
(122, 1172),
(71, 1675);

create table Ejemplar(
idEjem int auto_increment,
CodLibro int,
NEjemplar int,
Deteriorado boolean,
Prestado boolean,
constraint pk_Ejemplar primary key (idEjem),
constraint fk_Ejemplar foreign key (CodLibro) references Libro (CodLibro)
)engine=innodb;


insert into ejemplar
(CodLibro, NEjemplar, Deteriorado, Prestado)
 values

 (155,12,0,1),
 (155,10,0,0), 
 (74,2,1,0),
 (74,3,0,0),
 (74,5,0,0),
 (34,2,1,0),
 (34,4,0,0),
 (34,5,1,0),
 (39,1,0,0),
 (39,3,0,0),
 (39,4,0,0),
 (39,5,0,0),
 (38,10,0,0),
 (38,11,1,0),
 (38,12,0,0),
 (38,13,0,0),
 (83,1,0,0),
 (83,2,0,0),
 (83,3,0,0),
 (83,4,0,0), 
 (83,5,0,0),
 (81,1,0,0),
 (81,2,0,0),
 (81,3,0,0),
 (81,4,0,0),
 (81,5,0,0),
 (81,6,0,0),
 (81,7,0,0),
 (82,1,0,0),
 (82,2,0,0),
 (82,3,1,0),
 (82,4,0,0),
 (82,5,0,0),
 (40,12,1,1),
 (40,10,0,1),
 (40,8,1,1),
 (40,7,1,1),
 (40,6,0,1),
 (11,25,0,0),
 (11,35,1,0),
 (11,45,1,0),
 (11,55,1,0),
 (11,65,1,0),
 (80,10,1,0),
 (80,15,0,0),
 (80,17,0,0),
 (80,19,0,0),
 (80,20,0,0),
 (32,1,0,0),
 (32,8,0,0),
 (32,6,0,0),
 (32,3,0,0),
 (35,2,0,0),
 (35,3,0,0),
 (35,4,0,0),
 (35,6,0,0),
 (45,12,0,0),
 (45,13,0,0),
 (45,14,0,0),
 (45,16,0,0),
 (25,35,0,1),
 (25,33,0,1),
 (25,15,0,1),
 (25,65,0,1),
 (25,43,0,1),
 (55,1,0,0),
 (55,2,0,0),
 (55,3,0,0),
 (55,4,0,0),
 (55,5,0,0),
 (112,1,0,0),
 (112,2,0,0),
 (112,3,0,0),
 (112,4,0,0),
 (112,5,0,0),
 (111,1,0,0),
 (111,2,0,0),
 (111,3,0,0),
 (111,4,0,0),
 (111,5,0,0),
 (101,1,0,0), 
 (101,10,0,0),
 (101,21,0,0),
 (101,15,0,0),
 (102,12,0,0),
 (102,6,0,0),
 (102,2,0,0),
 (10,26,0,0),
 (10,36,0,0),
 (10,46,0,0),
 (10,56,0,0),
 (10,66,0,0),
 (91,1,0,0),
 (91,2,0,0), 
 (91,3,0,0), 
 (91,4,0,0), 
 (91,5,0,0),
 (92,15,0,0),
 (92,9,0,0),
 (92,75,0,0), 
 (92,56,0,0),
 (92,13,0,0),
 (21,11,0,0),
 (21,23,0,0),
 (21,33,0,0),
 (21,14,0,0),
 (21,15,0,0),
 (50,23,0,1),
 (50,20,0,1),
 (50,2,0,1),
 (50,3,1,1),
 (61,1,0,0),
 (61,2,0,0),
 (61,3,0,0),
 (61,4,0,0),
 (61,5,0,0),
 (62,4,0,0),
 (62,5,0,0),
 (62,6,0,0),
 (62,7,0,0),
 (62,8,0,0),
 (63,15,0,0),
 (63,16,0,0),
 (63,17,0,0),
 (63,18,0,0),
 (63,19,0,0),
 (120,1,0,0),
 (120,3,0,0),
 (120,6,0,0),
 (120,10,0,0),
 (120,15,0,0),
 (85,01,0,0),
 (85,02,0,0),
 (85,03,0,0),
 (85,04,0,0),
 (85,05,0,0),
 (122,1,0,0),
 (122,3,0,0),   
 (122,6,0,0),
 (122,8,0,0),
 (122,20,0,0),
 (71,1,0,0),
 (71,2,0,0),
 (71,3,0,0),
 (71,4,0,0),
 (71,5,0,0),
 (42,33,0,0),
 (42,24,0,0),
 (42,22,0,0),
 (42,21,0,0),
 (42,20,0,0),
 (42,19,0,0),
 (42,17,0,0);
 
 

create table Prestamo(
NPrestamo int auto_increment,
CodSocio int,
FPrestamo date,
FDevolucion date,
FTope date,
constraint pk_prestamo primary key (NPrestamo),
constraint fk_prestamo_S foreign key (CodSocio) references Socio(CodSocio)
)engine=innodb;


insert into Prestamo
(CodSocio, FPrestamo, FDevolucion, FTope)
 values
( 20154, "2020/07/29", "2020/08/08", "2020/08/08"),
( 22384, "2020/09/01", "2020/09/08", "2020/09/10"),
( 26798, "2020/07/22", "2020/07/29", "2020/08/01"),
( 21474, "2020/08/01","2020/08/08", "2020/08/10"),
( 20154, "2020/08/02", "2020/08/11", "2020/08/11"),
( 22384, "2020/09/15","2020/09/22", "2020/09/24"),
( 21614, "2020/09/28", "2020/10/05", "2020/10/07"),
( 25125, "2020/07/01", "2020/07/10", "2020/07/10"),
( 27890, "2020/07/19","2020/07/26", "2020/07/28"),
( 27951, "2020/10/04", "2020/10/13", "2020/10/13"),
( 36785, "2020/10/04", "2020/10/11", "2020/10/13"),
( 21614, "2020/10/05",  "2020/10/14", "2020/10/14"),
( 34531, "2020/10/05",  "2020/10/12", "2020/10/14"),
( 27951, "2020/10/20", "2020/10/27", "2020/10/29"),
( 25125,  "2020/10/20", "2020/10/27", "2020/10/29");

create table DetallePre(
NPrestamo int, 
idEjem int,
constraint pk_prestamo primary key (NPrestamo, idEjem),
constraint fk_DetPre_prestamo foreign key (NPrestamo) references Prestamo(NPrestamo),
constraint fk_DetPre_ejem foreign key (idEjem) references Ejemplar(idEjem)
)engine=innodb;



insert into DetallePre values
(1,34),
(1,95),
(2,50),
(3,17),
(3,21),
(4,35),
(4,3),
(4,62),
(5,54),
(5,22),
(6,97),
(6,108),
(7,106),
(7,110),
(8,112),
(9,151),
(9,100),
(9,64),
(9,36),
(10,111),
(11,61),
(11,109),
(12,63),
(12,38),
(13,64),
(14,37),
(1,50),
(4,50),
(4,97),
(5,64),
(6,111),
(6,112),
(7,111),
(9,38),
(11,22),
(11,95),
(13,100),
(14,3),
(15,22),
(15,65);



----------------------------------------------------------------------------------------------------------------------------------
declare paga BOOLEAN;
DELIMITER //
create procedure prestam(in name varchar(40),out paga BOOLEAN,out pedrito int)
begin
if (select Codsocio from socio where Apellido = name) THEN
set @paga = TRUE;
set @pedrito = (select Codsocio from socio where Apellido = name);
else
set @paga = FALSE;
select 'No es socio... no puede avanzar' as Error;
end if;
end
// 
--  /
--\/

create procedure BOOK(in name varchar(50),in nick varchar(50))
begin
declare maneskin int;
SELECT CodLibro INTO maneskin FROM libroautor l LEFT JOIN autor a ON a.CodAutor = l.CodAutor WHERE Apellido = nick AND Nombre = name;

if maneskin is not null THEN
SELECT Titulo, COUNT(idEjem) AS Disponibles, CodLibro
    FROM Ejemplar e
    RIGHT JOIN libro l ON e.CodLibro = l.CodLibro
    WHERE deteriorado = 0 AND Prestado = 0
    GROUP BY CodLibro;
Select 'Seleccione el codigo del libro deseado' as Mensaje;
 ELSE
    SELECT 'El nombre y apellido del autor no corresponden a ningún libro' AS Mensaje;
end if;
end
//

create procedure messi(in bil int,out lib int)
BEGIN
select min(idEjem) into lib from ejemplar where CodLibro = bil;
end
//

create procedure buy(in bookie int,in peta int,in bli int)
BEGIN
DECLARE newNprestamo INT;
set Peta = @pedrito;
set bli = @lib;
  
  SELECT MAX(NPrestamo) + 1 INTO newNprestamo FROM prestamo;
insert prestamo VALUES
(newNprestamo,Peta,CURRENT_DATE,
(select DATE_ADD(Curdate(),INTERVAL 7 DAY)),
(select DATE_ADD(Curdate(),INTERVAL 9 DAY)));
insert detallepre VALUES
(max (Nprestamo),bookie);
end
//

DELIMITER;
------------------------------------------------------------------------------------------------------------------------------------------
-- Llamada al procedimiento prestam y BOOK
CALL prestam('Araoz', @paga, @pedro);

IF @paga = TRUE THEN
  CALL BOOK('Jose Maria','Martin');
  call messi(83, @lib);
   
-- Llamada al procedimiento buy
CALL buy(83, @pedro,@lib);
--SI NO ES SOCIO--
ELSE
select 'No puede continuar con el programa.' As finalizacion;
END IF;


