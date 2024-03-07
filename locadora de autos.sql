create database locadoraautos;

create table usuario(
	CNH integer not null primary key,
	RG integer not null,
	nome varchar(30) not null,
	email varchar(30) not null,
	telefone integer not null,
	idade integer not null,
	rua varchar(40) not null,
	numero integer not null,
	bairro varchar(40) not null,
	cidade varchar(40) not null);

    
create table categoria(
	codigoCategoria integer not null primary key,
    precoDiaria integer not null,
    descricao varchar(70) not null);
    
create table carro(
	Nchassi integer not null primary key,
	placa integer not null,
	marca varchar(15) not null,
	ano integer not null,
	cor varchar(10) not null,
   codigoCategoria integer not null,
   foreign key (codigoCategoria) references categoria(codigoCategoria));
    
create table oficina(
	cnpj integer not null primary key,
    nome varchar(40) not null, 
    email varchar(30) not null,
    telefone integer not null,
    rua varchar(40) not null,
    numero integer not null,
    bairro varchar(40) not null,
    cidade varchar(40) not null);
    
create table aloca(
	dia date not null,
	hora time not null,
   Nchassi integer not null,
	CNH integer not null,
   foreign key (Nchassi) references carro(Nchassi),
   foreign key (CNH) references usuario(CNH)
	);
	
create table manutencao(
	codManutencao integer not null primary key,
	valor integer not null,
	dia date not null,
	descricao varchar(70) not null, 
	Nchassi integer not null,
	cnpj integer not null,
   foreign key (Nchassi) references carro(Nchassi),
   foreign key (cnpj) references oficina(cnpj)
	);