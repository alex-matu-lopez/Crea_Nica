create database DB_hacka
go 
use DB_hacka 
go

create table usuario
(
ID int identity(1,1) primary key not null, 
Nombre varchar (40) not null,
email nvarchar (40) unique not null,
telefono int unique null,
)

create table diseñadores
(
ID int identity (1,1)primary key not null,
Nombre varchar (40) not null,
email nvarchar (40) unique not null,
telefono int unique null,
contraseña varbinary (200)
)

create table archivos
(
ID int identity primary key,
idDiseñador int not null,
fecha datetime,
nombre varchar(30),
documento varbinary(max), 
)

create table comentarios
(
ID int Identity primary key,
texto varchar(max) null,
IDusuario int not null,
fecha datetime,
IDarchivo int not null,
)

--select * from 