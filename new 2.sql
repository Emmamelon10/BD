DELIMITER //
CREATE PROCEDURE procedimiento3(in id varchar,in empr varchar,in dir varchar,in pob VARCHAR,in tel int, in resp varchar,in his VARCHAR)
BEGIN
	if id=CÓDIGO_CLIENTE THEN
		update clientes set
		EMPRESA=empr;
		DIRECCIÓN=dir;
		POBLACIÓN=pob;
		TELÉFONO=tel;
		RESPONSABLE=resp;
		HISTORIAL=his
	else
	alter table
	insert into clientes(id,empr,dir,pob,tel,resp,his);
END
//
call procedimiento3('CT30','Vivi´s place','Jonte 1421','Madrid',1567399485,'Juancho',NULL);