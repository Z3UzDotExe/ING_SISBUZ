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
(null,'Baja','No iniciada','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Finalizada','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','Rechazada','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Media','En proceso','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','Finalizada','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Alta','No iniciada','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

insert into qsf(ClaveQSF,Prioridad,Estatus,Departamento,Tipo_Servicio,Descripcion,Fecha,UsuarioSolicitante)
values
(null,'Baja','En proceso','Calidad','Queja','No hay clases por el COVID-19', 20190528,1);

select * from usuarios;
select * from qsf;
select * from administrador;

select * from qsf where Departamento = 'Calidad' and Estatus= 'No iniciada' and Prioridad='Baja';