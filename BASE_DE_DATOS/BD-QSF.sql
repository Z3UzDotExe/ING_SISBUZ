
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

delimiter //
create procedure reportesQSF( 
		in Pdepartamento varchar(14),Pestatus varchar(11), Pservicio varchar(12),
		Pprioridad varchar(5),PfechaInicio Date,pFechaFin Date
    )
begin
select * from qsf where 
		Departamento = Pdepartamento and Estatus=Pestatus and Tipo_Servicio = Pservicio
        and Prioridad = Pprioridad and Fecha between PfechaInicio and pFechaFin;
end //
delimiter ;

call reportesQSF('Calidad','No iniciada','Queja','Baja',20190528,20190528);

select count(Departamento = 'Calidad') as 'Cantidad del departamento' from qsf ;

#------------------------------------Reporte por departamento-----------------------------------------------------------
#Cantidad de QSF por departamento
select count(*) as 'CPD' from qsf where Departamento='Calidad';
#Cantidad de QSF por deparatamento, servico
select count(*) as 'CPDS' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja';
#Cantidad de QSF por departamento, servico, prioridad
select count(*) as 'CPDSP' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja' and Prioridad = 'Baja';
#Cantidad de QSF por departamento, servico, prioridad, estatus
select count(*) as 'CPDSPE' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja' and Prioridad = 'Alta' and Estatus = 'No iniciada';



#------------------------------------Reporte por servicio-----------------------------------------------------------
#Cantidad de QSF por servico
select count(*) as 'CPS' from qsf where Tipo_Servicio='Queja';
#Cantidad de QSF por servico, departamento
select count(*) as 'CPSD' from qsf where Tipo_Servicio='Queja' and Departamento = 'Calidad';
#Cantidad de QSF por servico, departamento, prioridad
select count(*) as 'CPSDP' from qsf where Tipo_Servicio='Queja' and Departamento = 'Calidad' and Prioridad = 'Alta';
#Cantidad de QSF por servico, departamento, prioridad, estatus
select count(*) as 'CPSDPE' from qsf where Tipo_Servicio='Queja' and Departamento = 'Calidad' and Prioridad = 'Alta' and Estatus = 'No iniciada';

#------------------------------------Reporte por prioridad-----------------------------------------------------------
#Cantidad de QSF por prioridad
select count(*) as 'CPP' from qsf where Prioridad='Alta';
#Cantidad de QSF por prioridad, departamento
select count(*) as 'CPPD' from qsf where Prioridad='Alta' and Departamento = 'Calidad';
#Cantidad de QSF por prioridad, departamento, servicio
select count(*) as 'CPPDS' from qsf where Prioridad='Alta' and Departamento = 'Calidad' and Tipo_Servicio = 'Queja';
#Cantidad de QSF por prioridad, departamento, servicio, estatus
select count(*) as 'CPPDSE' from qsf where Prioridad='Alta' and Departamento = 'Calidad' and Tipo_Servicio = 'Queja' and Estatus = 'No iniciada';


#------------------------------------Reporte por estatus------------------------------------------------------------
#Cantidad de QSF por estatus
select count(*) as 'CPE' from qsf where Estatus='No iniciada';
#Cantidad de QSF por estatus, departamento
select count(*) as 'CPED' from qsf where Estatus='No iniciada' and Departamento = 'Calidad';
#Cantidad de QSF por estatus, departamento, servicio
select count(*) as 'CPEDS' from qsf where Estatus='No iniciada' and Departamento = 'Calidad' and Tipo_Servicio = 'Queja';
#Cantidad de QSF por estatus, departamento, servicio, prioridad
select count(*) as 'CPEDSP' from qsf where Estatus='No iniciada' and Departamento = 'Calidad'and Tipo_Servicio = 'Queja' and Prioridad = 'Alta';


#------------------------------------Reporte por todos los campos---------------------------------------------------
#Cantidad de QSF
select count(*) as 'CQSF' from qsf;
#Cantidad de QSF por departamento
select count(*) as 'CPD' from qsf where Departamento='Calidad';
#Cantidad de QSF por deparatamento, servico
select count(*) as 'CPDS' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja';
#Cantidad de QSF por departamento, servico, prioridad
select count(*) as 'CPDSP' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja' and Prioridad = 'Alta';
#Cantidad de QSF por departamento, servico, prioridad, estatus
select count(*) as 'CPDSPE' from qsf where Departamento='Calidad' and Tipo_Servicio = 'Queja' and Prioridad = 'Alta' and Estatus = 'No iniciada';

select * from qsf where Departamento='Calidad';

SELECT
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Queja')as 'Quejas',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'PAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SNAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SPAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SFAQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Alta' and Tipo_Servicio ='Queja')as 'SRAQ',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'PMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SNMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SPMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SFMQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Media' and Tipo_Servicio ='Queja')as 'SRMQ',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'PBQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SNNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SPNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SFNQ',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Baja' and Tipo_Servicio ='Queja')as 'SRNQ',
-- SUGERENCIA
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Sugerencia')as 'Sugerencias',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'PAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SNAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SPAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SFAS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Alta' and Tipo_Servicio ='Sugerencia')as 'SRAS',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'PMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SNMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SPMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SFMS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Media' and Tipo_Servicio ='Sugerencia')as 'SRMS',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'PBS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SNNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SPNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SFNS',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Baja' and Tipo_Servicio ='Sugerencia')as 'SRNS',
-- FELICITACIONES
(select count(*) from qsf where Departamento='Calidad' and Tipo_Servicio ='Felicitaciones')as 'Felicitaciones',
-- ALTA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'PAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SNAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SPAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SFAF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Alta' and Tipo_Servicio ='Felicitaciones')as 'SRAF',
-- MEDIA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'PMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SNMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SPMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SFMF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Media' and Tipo_Servicio ='Felicitaciones')as 'SRMF',
-- BAJA
(select count(*) from qsf where Departamento='Calidad' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'PBF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='No iniciada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SNNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='En proceso' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SPNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Finalizada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SFNF',
(select count(*) from qsf where Departamento='Calidad' and Estatus ='Realizada' and Prioridad ='Baja' and Tipo_Servicio ='Felicitaciones')as 'SRNF'
FROM qsf WHERE fecha BETWEEN '2018-04-20' AND '2019-04-03' group by Departamento='Calidad';