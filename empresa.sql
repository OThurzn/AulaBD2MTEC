create database empresa
create table funcionario(
idfuncionario int not null primary key,
nome varchar(50) null,
endereco varchar(100) null,
cidade varchar(50) null,
estado char(2),
email varchar(50) null unique
);

alter table funcionario add salario decimal(7,2) null, add cargos varchar(2) null;

alter table funcionario add ativo bit;
alter table funcionario add datanascto date not null;

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email,datanascto) values
	(1,'José da Silva','Av. São Paulo,34','itu','SP','zesilva@yahoo.com.br','1991-02-24');

insert into funcionario values 
	(2,'João de Oliveira','Rua da Saúde,138','Jundiai','SP','jojo@hotmail.com', 750, 'TI', 1, '1988-01-11');

Insert into funcionario values 
	( 3, 'Ana Pimenta', 'Rua da Saude,11' , 'Jundiai', 'SP','pimentinha@hotmail.com', 750, 'TI',0, '1987-01-01'),
	(4, 'Mario Lopes', 'Rua Angelica, 143', 'Jundiai', 'SP', 'mlopes@hotmail.com' , 750, 'TI', 0, '1985-04-10');
	
	

Insert into funcionario  (idfuncionario, nome, endereco, cidade, estado, email,datanascto) values 
	(5, 'Carlos Dias', 'Av. Lapa,121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'),
	(6, 'Ana Maria da Cunha', 'Av. São Paulo,388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'),
	(7, 'Claudia Regina Martins', 'Rua Holanda,89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04'),
	(8, 'Marcela Tatho', 'Rua Bélgica,43', 'Campinas', 'SP', 'marctatho@gmail.com', '1987-09-11'),
	(9, 'Jorge Luis Rodrigues', 'Av. da Saudade,1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05'),
	(10, 'Ana Paula Camargo', 'Rua Costa e Silva,33', 'Jundiai', 'SP', 'apcamargo@gmail.com', '1991-06-30'),
	(11, 'Ivo Cunha', 'Av. Raio de Luz,100', 'Campinas', 'SP', 'ivo@bol.cim.br', '1987-04-11'),
	(12, 'Carlos Luis de Souza', 'Rua Nicolau Coelho,22', 'São Paulo', 'SP', 'cls@bol.com.br', '1988-04-30');
	
update funcionario set cidade = 'Valinhos' where cidade = 'Itu';
update funcionario set cargos='AI', salario='1100'  where cidade= 'Valinhos';
update funcionario set cargos='PC', salario='1700'  where cidade= 'Campinas';
update funcionario set cargos='TI', salario='750'  where cidade= 'Jundiai';

select nome, salario*1.30 from funcionario;
select nome, salario*0.80 from funcionario where cidade= 'Campinas';
select nome, salario from funcionario where salario>1500;
select nome, cidade from funcionario where not cidade = 'Valinhos';
select idfuncionario, cidade from funcionario where cidade = 'Valinhos' or  cidade =  'Campinas';
select idfuncionario, cargos, salario from funcionario where not cidade = 'São Paulo' and salario>=1000;
select nome from funcionario where cargo is null;
select nome, salario from funcionario where salario between 500 and 1500;
select nome, email from funcionario where email ='%hotmail' 