drop database sisqsf;
create database sisqsf;
use sisqsf;
create table usuarios
(
ClaveUsuario int auto_increment primary key,
NoControl varchar(50) null,
Nombre varchar(100) not null,
EsAlumno enum('Si','No') not null,
Telefono varchar(50) null,
Correo varchar(100) null
)engine = innoDB;
create table administrador
(
Nombre_usuario varchar(100) primary key,
Clave_usuario varchar(50) not null
)engine = innoDB;
create table qsf
(
ClaveQSF int auto_increment primary key,
Prioridad enum('Alta','Media','Baja') not null,
Estatus	enum('No iniciada','En proceso','Finalizada','Rechazada') not null,
Departamento enum('Academico','Vinculacion','Planeacion','Calidad','Administracion') not null,
Tipo_Servicio enum('Queja','Sugerencia','Felicitacion') not null,
Descripcion longtext not null,
Fecha date not null,
UsuarioSolicitante int not null,
foreign key(UsuarioSolicitante) references usuarios(ClaveUsuario)on update cascade on delete cascade
)engine = innoDB;
insert into administrador(Nombre_usuario,Clave_usuario)
values
('Calidadrifa',sha1('cali2020'));

insert into usuarios(ClaveUsuario,NoControl,Nombre,EsAlumno,Telefono,Correo)
values
(null,'S16120302','José Luis González Ruiz','Si','4453232434','fire21@gmail.com');



insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','No iniciada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Sugerencia','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Felicitacion','No hay clases por el COVID-19', 20190528,1);

select * from usuarios;
select * from qsf;
select * from administrador;

select q.ClaveQSF,q.Prioridad, q.Estatus, q.Departamento, q.Tipo_Servicio as 'Servicio',q.Descripcion ,
q.Fecha,u.Nombre as 'Nombre del usuario' from qsf  q join usuarios u 
where q.UsuarioSolicitante = u.ClaveUsuario and Departamento = 'Calidad' 
and Estatus= 'No iniciada' and Prioridad='Baja';

select q.ClaveQSF,q.Prioridad, q.Estatus, q.Departamento, q.Tipo_Servicio as 'Servicio'
,q.Descripcion, u.Nombre,u.Telefono, u.EsAlumno, u.Correo as 'Nombre del usuario', u.NoControl
from qsf  q join usuarios u  where q.UsuarioSolicitante = u.ClaveUsuario and q.ClaveQSF =1;

delimiter //
create procedure actualizarQSF( in PidQSF int,Pprioridad varchar(5),
Pestatus varchar(11),Pdepartamento varchar(14))
begin
update qsf q set q.Prioridad=Pprioridad, q.Estatus = Pestatus, q.Departamento = Pdepartamento 
where q.ClaveQSF =PidQSF;
end //
delimiter ;
select * from qsf where ClaveQSF=1;
call actualizarQSF(1,'Alta','En proceso','Administracion');

select count(Departamento = 'Calidad') as 'Cantidad del departamento' from qsf ;

select * from qsf ;

SELECT
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Queja')as 'Quejas',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'PAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SNAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SPAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SFAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SRAQ',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'PMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SNMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SPMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SFMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SRMQ',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'PBQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SNNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SPNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SFNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SRNQ',
-- SUGERENCIA
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Sugerencia')as 'Sugerencias',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'PAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SNAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SPAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SFAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SRAS',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'PMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SNMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SPMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SFMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SRMS',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'PBS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SNNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SPNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SFNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SRNS',
-- FELICITACIONES
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Felicitaciones')as 'Felicitaciones',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'PAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SNAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SPAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SFAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SRAF',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'PMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SNMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SPMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SFMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SRMF',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'PBF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SNNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SPNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SFNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SRNF'
FROM qsf limit 1;

Select count(*) as '' from qsf where Departamento='Calidad'and Estatus ='No iniciada';

-- 'Academico','Vinculacion','Planeacion','Calidad','Administracion'
SELECT
-- Estatus Departamento total
(select count(*) from qsf where Estatus ='No iniciada' and Departamento='Calidad')as 'SNAQ',

(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' )as 'SPAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' )as 'SFAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' )as 'SRAQ',
-- EAlta
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta')as 'SNMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta')as 'SPMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta')as 'SFMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Alta')as 'SRMQ',
-- EMedia
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' )as 'SNNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' )as 'SPNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media')as 'SFNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Media')as 'SRNQ',
-- EBaja
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' )as 'SNNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' )as 'SPNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja')as 'SFNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Rechazada' and Prioridad ='Baja')as 'SRNQ'
FROM qsf limit 1;


SELECT
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad')as 'PDT',
-- queja
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Queja')as 'PQ',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Queja' and  Estatus ='No iniciada')as 'PNQ',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Queja' and Estatus ='En proceso')as 'PPQ',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Queja' and Estatus ='Finalizada')as 'PFQ',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Queja' and Estatus ='Rechazada')as 'PRQ',
-- sugerencia
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Sugerencia')as 'PS',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Sugerencia' and  Estatus ='No iniciada')as 'PNS',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Sugerencia' and Estatus ='En proceso')as 'PPS',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Sugerencia' and Estatus ='Finalizada')as 'PFS',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Sugerencia' and Estatus ='Rechazada')as 'PRS',
-- felicitacion
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Felicitacion')as 'PF',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Felicitacion' and  Estatus ='No iniciada')as 'PNF',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Felicitacion' and Estatus ='En proceso')as 'PPF',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Felicitacion' and Estatus ='Finalizada')as 'PFF',
(select count(*) from qsf where Prioridad ='Alta' and Departamento='Calidad' and Tipo_Servicio ='Felicitacion' and Estatus ='Rechazada')as 'PRF'
FROM qsf limit 1;


select * from qsf where Fecha between 2016210 and 2020603 ;