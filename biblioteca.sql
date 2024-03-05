create database biblioteca;

create table livro(
		codigo integer not null primary key,
		nome varchar(20) not null,
		anoLanacamento integer not null);

create table editora(
		cnpj integer not null primary key,
		nome varchar(20) not null,
		endereco varchar(50) not null,
		telefone integer not null);
		
create table autores(
		cpf integer not null primary key,
		nome varchar(20) not null,
		endereco varchar(50) not null,
		email varchar(30) not null);

create table edicoes(
		isbn integer not null primary key,
		edicao varchar(50) not null,
		minimoPG integer not null,
		valor integer notnull);