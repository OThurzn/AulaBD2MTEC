create database conssesionaria;

create table Veiculo(
		chassi varchar(17) not null primary key,
		marca varchar(10) not null,
		modelo varchar(20) not null,
		anoFabricacao integer not null,
		anoModelo integer not null,
		combustivel varchar(1) not null);
	
Alter table Veiculo add valor float not null;
Alter table Veiculo add motor Varchar(20) not null;
Alter table Veiculo drop motor;

drop table Veiculo;

drop database conssesionaria;