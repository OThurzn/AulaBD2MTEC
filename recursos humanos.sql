drop database  recursosHUmanos;
create database recursosHumanos;
create table funcionário(
	idfuncionario int not null primary key,
	nome varchar(50),
	endereco varchar (100) null,
	cidade varchar(50) null,
	estado char(2) null,
	email varchar(50) null unique,
	dataNascto date null);
	
alter table funcionário add salário decimal(7,2) null, add cargos varchar(2) null;

alter table funcionário drop column cargos;

alter table funcionário add cargo varchar(2), add ativo bit;