CREATE DATABASE Hotel;

CREATE TABLE Cliente (
	RG int not null primary key,
	Nome varchar(50) not null,
	Rua varchar(50) not null,
	Bairro varchar(50) not null,
	Cidade varchar(50) not null,
	Telefone varchar(50) not null,
	Sexo  boolenao(2) not null
);
CREATE TABLE Quarto(
	Numero int not null primary key,
	Andar int not null,
	RG int not null,
	preco decimal(4,2),
	descricao varchar(250),
	tipo varchar(60)
);

CREATE TABLE QuartoReservado(
	CodigoReservado int not null primary key,
	Numero int not null,
	QtdeDias int not null,
	dataReserva date not null
	foreign (
);

CREATE TABLE QuartoOcupado(
	Codigoocupacao int not null primary key,
	Numero int not null,
	QtdeDias int not null,
	dataReserva date not null
);

CREATE TABLE Pagamento(
	CodigoReservado int not null primary key,
	Numero int not null,
	QtdeDias int not null,
	dataReserva date not null
);
