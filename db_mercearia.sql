drop database dbmercearia;

create database dbmercearia;

use dbmercearia;


create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
salario decimal(9,2) default 0.0 check(salario >=0.0),
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc));

create table tbFornecedores(
codforn int not null auto_increment,
nome varchar(100),
primary key(codforn)
);


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(50) not null,
codfunc int not null,
primary key(codUsu),
foreign key(codfunc)references tbfuncionarios(codfunc));


create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
valor decimal(9,2),
quantidade decimal(9,2),
codUsu int not null,
codforn int not null,
primary key(codProd),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codforn) references tbFornecedores(codforn)
);



desc tbfuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;

-- insert

insert into tbfuncionarios(nome,salario,cpf,sexo)
	values ('Marco Antonio',1500.50,'258.352.685-77','M');

insert into tbfuncionarios(nome,salario,cpf,sexo)
	values ('Kaique de Melo',1800.50,'257.252.885-87','M');


insert into tbUsuarios(nome,senha,codfunc)
	values('marco.antonio','******',1);

insert into tbUsuarios(nome,senha,codfunc)
	values('Kaique.melo','*******',2);

insert into tbFornecedores(nome)values('Raissa LTDA');
insert into tbFornecedores(nome)values('Casas das Frutas S/A');


insert into tbProdutos(descricao,valor,quantidade,codUsu,codforn)
	values('Banana',2.50,150,1,1);
insert into tbProdutos(descricao,valor,quantidade,codUsu,codforn)
	values('Laranja',1.50,250,2,2);

-- select 

select * from tbfuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;


	