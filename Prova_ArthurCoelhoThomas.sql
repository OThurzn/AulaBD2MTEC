create database ArthurCoelhoThomas;

create table aluno(
	codigoMatricula int not null primary key,
	telefone int not null,
	email varchar(50) not null,
	nome varchar(50) not null,
	dataMatricula date not null,
	dataNascimento date not null,
	altura double not null,
	peso double not null,
	rua varchar(50) not null,
	bairro varchar(50) not null,
	cidade varchar(50) not null
);

create table alunoMonitor(
	codigoMatricula int not null primary key,
	nome varchar(50) not null
);

create table instrutor(
	RG int not null primary key,
	telefone int not null,
	email varchar(50) not null,
	nome varchar(50) not null,
	titulacao varchar(20) not null,
	dataNascimento date not null
);

create table turma(
	codigoTurma int not null primary key,
	tipoAtividade varchar(30) not null,
	horarioAula time not null,
	dataInicial date not null,
	dataFinal date not null,
	numeroAlunos int not null,
	codigoMatricula int not null,
	RG int not null,
	foreign key(RG) references instrutor(RG),
	foreign key(codigoMatricula) references aluno(codigoMatricula)
);

create table matricula(
	codigoMatricula int not null,
	codigoTurma int not null,
	registroAusencia int not null,
	dataMatricula date not null,
	foreign key(codigoTurma) references turma(codigoTurma),
	foreign key(codigoMatricula) references aluno(codigoMatricula)
);