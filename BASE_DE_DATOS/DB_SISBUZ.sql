create database DB_SISBUZ;

use DB_SISBUZ;
create table usuario(
ClaveUsuario 	tinyint auto_increment primary key,
NoControl 		varchar(8) null,
Nombre			varchar(100) not null,
EsAlumno		boolean	not null,
Correo			varchar(100) null,
Telefono		varchar(10) null
)engine = innoDB;

create table administrador(
NombreAdministrador	varchar(100) primary key,
ClaveAdministrador	varchar(512) not null
)engine = innoDB;


-- procedimentos almacenado para registrar administrador
DELIMITER //
create procedure registrarAdministrador(in PNombreAdministrador varchar(100), PClaveAdministrador varchar(512) )
begin
insert into administrador(NombreAdministrador,ClaveAdministrador) values(PNombreAdministrador,sha2(PClaveAdministrador,512));
end//
Delimiter ;

create table QSF(
ClaveQSF		tinyint auto_increment primary key,
Prioridad		enum('Alta','Media','Baja') not null,
Estatus			enum('No iniciada','En proceso','Finalizada','Rechazada') not null,
Departamento	enum('Dir. Academico','Dir. de planeacion','Direccion de vinculacion') not null,
TipoServicio	enum('Queja','Sugerencia','Felicitacion') not null,
Descripcion		longtext not null,
Fecha			date,
NombreAdministrador varchar(100) not null,
ClaveUsuario 	tinyint not null,
foreign key(NombreAdministrador) references administrador(NombreAdministrador)on update cascade on delete cascade,
foreign key(ClaveUsuario) references usuario(ClaveUsuario)on update cascade on delete cascade
)engine = innoDB;

-- Registrar administrador
call registrarAdministrador('RamonAdmi','abcde123');