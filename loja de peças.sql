create database lojaPecas;

create table Cliente(
	cpf integer(15) not null primary key,
	RG integer(20) not null,
	nome varchar(200) not null,
	rua varchar(50) not null,
	bairro varchar(50) not null,
	cidade varchar(50) not null
);
	
create table emailCliente(
	codEmail integer not null primary key,
	email varchar(30) not null,
	CPF integer not null,
	foreign key (CPF) references Cliente(CPF)
);
	
create table pedidos(
	notaFiscal integer(15) not null primary key,
	precoTotal decimal(5,2) not null,
	dataPedido date not null,
	CPF integer(15) not null,
	foreign key (CPF) references Cliente(CPF)
);

create table mercadoria(
	codigo integer(20) not null primary key,
	descricao varchar(50) not null,
	preco decimal(5,2) not null,
	qtdeEstoque integer(5) not null
);
	
create table itensPedidos(
	codigoItem integer(10) not null primary key,
	quantidade integer(5) not null,
	notaFiscal integer(15) not null,
	codigo integer(20) not null,
	foreign key (notaFiscal) references pedidos(notaFiscal),
	foreign key (codigo) references mercadoria(codigo)
);

create table fornecedores(
	codigoInterno integer(15) not null primary key,
	nome varchar(200) not null,
	rua varchar(50) not null,
	bairro varchar(50) not null,
	cidade varchar(50) not null
);
	
create table nacionais(
	cnpj integer(15) not null primary key,
	cidade varchar(50) not null,
	codigoInterno integer(15) not null,
	foreign key (codigoInterno) references fornecedores(codigoInterno)
);
	
create table internacionais(
	codigoInterno integer(15) not null primary key,
	transporte varchar(40) not null,
	pais varchar(30) not null,
	moeda varchar(30) not null,
	foreign key (codigoInterno) references fornecedores(codigoInterno)
);
	
create table telefoneFornecedores(
	codTelefone integer(10) not null primary key,
	codigoInterno integer(15) not null,
	foreign key (codigoInterno) references fornecedores(codigoInterno)
	);