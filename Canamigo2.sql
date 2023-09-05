drop database if exists Canamigo;
CREATE database Canamigo;
use Canamigo;

CREATE TABLE Duenio(
D_DNI varchar(10),
D_nombre varchar(50),
D_direccion varchar(20),
D_telefono varchar(15),
CONSTRAINT PK_Duenio primary key(D_DNI)
)ENGINE =InnoDB;

CREATE TABLE Perro(
P_codigo varchar(8),
P_nombre varchar(30), 
P_raza varchar(20),
P_peso decimal(5,2),
P_historialMedico varchar(50) NULL,
D_DNI varchar(10),
CONSTRAINT PK_Perro PRIMARY KEY (P_codigo),
CONSTRAINT FK_Perro_DNI FOREIGN KEY (D_DNI) REFERENCES Duenio(D_DNI)
)ENGINE =InnoDB;

create table adiestrador(
A_nroLegajo int,
A_DNI varchar(10),
A_nombre varchar(40),
A_anioIngreso int,
A_direccion varchar(50),
A_ciudad varchar(30),
constraint PK_adiest_nro primary key (A_nroLegajo)
)ENGINE =InnoDB;

CREATE TABLE Adiestramiento(
AD_id int auto_increment,
A_nroLegajo int,
P_codigo varchar(8),
RutinaEjercicios varchar(60),
FrecuenciaSemanal int,
constraint PK_Adiestramiento primary Key(AD_id),
CONSTRAINT FK_Adiestramiento_P_codigo FOREIGN KEY (P_codigo) references Perro(P_codigo),
CONSTRAINT FK_Adiestramiento_A_nroLegajo FOREIGN KEY (A_nroLegajo) references Adiestrador(A_nroLegajo)
)ENGINE=InnoDB;



Insert into Duenio values 
("19873258","Bazan Santiago","Don Bosco 1514","(0261)4446294"),
("20873951","Sanchez Carlos","Mitre 1674","(02652)426776"),
("28354169","Agüero Tomas","AV. Sucre 1687","(0351)4334082"),
("21896345",'Peralta Anibal','Av Sucre 1324','(0351)4334081'),
('22589634','Ramirez Andres','Rivadavia 247','(02652)428999'), 
('27359861','Benitez Simon','Chacabuco 1280','(02652)418869'),
("20487935","Gomez Elisa","Maipu 2542","(02652)436569"),
("21489357","Perez Jose","Ayaccho 490","(0261)4203400"), 
("26874395","Rosales Felix","Pringles 352","(02652)435986"),
("27951386","Mansilla Delia","Los Andes 171","(0261)4248443"),
("19753486","Guiñazu Teofilo","Rivadavia 567","(0351)4750874"), 
("18753469","Rossi Martin","Belgrano 1324","(02652)431079"),
("23879456","Perez Maria","Maipu 1254","(0261)4378288");


INSERT INTO Perro VALUES
("FWTU8721","Kala","POINTER",23.500,"","21489357"),
("MATO3698","Sixi","DALMATA",24.600,"Neoplasias cutáneas","23879456"),
("ANDA5980","Jenny","POINTER",21.600,"Sufre de broncoeummonia","27951386"),
("DIYO1345","Orco","DOGO ARGENTINO",42.300,"Cataratas en su ojo izquierdo","19753486"),
("CAFR4397","Hook","CHIHUAHUA",2.100,"","27951386"),
("NEXP5896","Icaro","COCKER",13.400,NULL,"21896345"),
("JUTO6566","Aaron","BOXER",28.200,"De pequeño contrajo parvovirus","26874395"),
("SUPA9721","Volker","COCKER",14.000,"Moquillos causados por alergia","21896345"),
("DISU6913","Benson","BOXER",30.000,NULL,"26874395"),
("CATE2598","Firfi","PEKINES",3.400,"Lombrices Intestinales","18753469"),
("MATF3456","Toby","DALMATA",28.000,"Moquillo Severo","26874395"),
("CAOL7831","Mora","DOGO ARGENTINO",40.600,"","22589634"),
("OSLU5128","Duque","BOXER",32.000,"","21896345"),
("RMIG8902","Rabito","DOGO ARGENTINO",45.600,"","20873951"),
("WODE5056","Ulises","DALMATA",30.100,"Obesidad","23879456"),
("EDWA3270","Emir","PEKINES",4.500,"","18753469"),
("EBMS7216","Pinky","DOGO ARGENTINO",45.800,"Moquillos Esporadicos","21896345"),
("QARE7182","Gigi","CHIHUAHUA",1.500,"","21896345"),
("REFU1839","Capitan","BOXER",29.700,"Moquillo Cronico","20873951"),
("SUJE5319","Lany","POINTER",28.700,"","18753469");


insert into Adiestrador values
(1500,'26874258','ROSALES LUIS',2000,'Rivadavia 548','Villa Mercedes'),
(4593,'27123684','PAVESI CARLOS',2002,'España 456','San Luis'), 
(5100,'25413958','MARTINEZ JOSE',1999,'Colibri 56','Merlo'), 
(2540,'24135910','RAMIREZ MIGUEL',2001,'Pringles 853','San Luis'), 
(4600,'20489357','ORTEGA EZEQUIEL',2004,'San Martin 78','Villa Mercedes');

insert into adiestramiento values 
('',4600,"ANDA5980","masaje y estiramiento",2),
('',2540,"EBMS7216","rutas de obstaculos",4),
('',4593,"JUTO6566","Paseo de resistencia",2),
('',5100,"EDWA3270","natacion o hidroterapia",2),
('',2540,"CAOL7831","Paseo de resistencia",2),
('',2540,'EBMS7216','Masaje y estiramientos',3),
('',4600,'CATE2598','Esconder y buscar',2),
('',5100,'QARE7182','Paseo normal',4),
('',5100,'SUPA9721','Paseo intensificado',1),
('',4593,'MATF3456','Footing y bicicleta',3),
('',2540, 'DISU6913', 'Lanzar y atrapar', 3),
('',4593, 'MATO3698', 'Masaje y estiramientos', 2),
('',1500, 'FWTU8721', 'Lanzar y atrapar', 3),
('',1500, 'CAFR4397', 'Esconder y buscar', 1),
('',1500,'NEXP5896', 'Paseo normal', 3),
('',1500,'ANDA5980','Footing y bicicleta',4),
('',4600,'OSLU5128','Paseo intensificado',3),
('',4593,'JUTO6566','Lanzar y atrapar',2),
('',4600,'CAFR4397','Pasear con correa',3),
('',4600,'ANDA5980','Natacion o hidroterapia',4);

CREATE TABLE Abandono(
id int auto_increment,
codigo varchar(8),
nombre varchar(30), 
raza varchar(20),
CONSTRAINT PK_abandono primary key(id)
)ENGINE =InnoDB;

insert into abandono values
('',"VGH709","Pelusa","BOXER"),
('',"NNN888","Jovito","CANICHE"),
('',"NMP002","Nina","CHIHUAHUA"),
('',"FFF123","Tronador","DOGO");

----------------------------------------------------------------------------------------------------------------------------

DELIMITER //
Create PROCEDURE Rutin(in name varchar(50));
BEGIN
declare ñoñi int;
declare ñoñi2 int;

select D_DNI into ñoñi2 from Duenio where D_nombre = name;

select P_codigo into ñoñi p from perro where D_DNI = ñoñi2;

select RutinaEjercicios as Rutina, FrecuenciaSemanal as Frecuencia,
A_nombre as Adiestrador
from adiestramiento a join adiestrador d on a.A_nroLegajo = d.A_nroLegajo
where P_codigo = ñoñi2;
end
//
call Rutín("Sanchez Carlos");
-------------------------------------------------------------------------------------------------------------------------------
Create function medic(races varchar(30)) returns varchar(255)
begin
declare pepo int;
declare perros int;
declare result varchar(255);

set pepo = (select count(*) from adiestrador as ad where ad.A_nroLegajo 
in(select a.A_nroLegajo from adiestramiento as a where a.P_codigo in 
(select p.P_codigo from perro as p where p.P_raza = razas)));
set perros = (select count(*) from perro as p where p.P_raza = razas);
if(perros > 0)
then     
set result = concat( 'Cantidad Adiestradores: ', pepo, ', Cantidad Perros: ', perros);
else
set result = concat('No hay perros de la siguiente raza: ', razas);
end if;
return result;
end 
//
select medic();
----------------------------------------------------------------------------------------------------------------------------------
Create PROCEDURE doggie(IN code VARCHAR(8),IN namero VARCHAR(30),IN racer VARCHAR(20),IN toto DECIMAL(5, 2),IN DNI VARCHAR(10) )
BEGIN
    DECLARE last_training_id INT;
    DECLARE owner_exists INT;


    SELECT COUNT(*)
    INTO owner_exists
    FROM Duenio
    WHERE D_DNI = DNI;
    
    IF owner_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El DNI del dueño no existe. No se puede completar la operación.';
    ELSE
     
        INSERT INTO Perro (P_codigo, P_nombre, P_raza, P_peso, D_DNI)
        VALUES (code, namero, racer, toto, DNI);
        

        SET last_training_id = LAST_INSERT_ID();
        
       
        INSERT INTO Adiestramiento (AD_id, P_codigo)
        VALUES (last_training_id, code);
        
        SELECT 'El perro y su información de adiestramiento se han ingresado exitosamente.' AS Message;
    END IF;
    
END;
//
CALL doggie('NEWDOG', 'Rex', 'LABRADOR', 20.5, '21896345');
----------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE adoptado()
BEGIN
    DECLARE total INT;
    DECLARE adop INT;
    DECLARE pipos INT;

    SELECT COUNT(*) INTO total FROM Perro;

    SELECT COUNT(*) INTO adop FROM Perro WHERE D_DNI IS NOT NULL;

    SET pipos = total - adop;

    IF pipos= 0 
	THEN
        SELECT 'Todos los perros han sido adoptados.' AS Message;
    ELSE
        SELECT CONCAT('Quedaron ', pipos, ' perros sin adoptar.') AS Message;
    END IF;
END;
//
DELIMITER ;
Call adoptado();