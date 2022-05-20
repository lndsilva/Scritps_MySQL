drop database dbempresa;

create database dbempresa;

use dbempresa;

create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100),
email varchar(100),
primary key(codfunc)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codUsu),
foreign key(codfunc) references tbfuncionarios(codfunc)
);

insert into tbfuncionarios(nome,email) values ('Maria Antonieta','maria.antonieta@hotmail.com');
insert into tbfuncionarios(nome,email) values ('Pedro Rosa','pedro.rora@hotmail.com');

insert into tbUsuarios(nome,senha,codfunc) values ('pedro.roa','******',2);
insert into tbUsuarios(nome,senha,codfunc) values ('maria.antonieta','******',1); 

    

-- inner join

select func.email from tbUsuarios as usu
inner join 
tbfuncionarios as func
on usu.codfunc = func.codfunc where usu.codUsu = 2;
select cli.nome, cli.email, ven.data
from venda as ven
inner join cliente as cli
on cli.id = ven.cliente_id;



select prod.nome,prod.preco,
forn.nome,forn.cnpj
from fornecedores as forn
inner join produto as prod
on prod.id = forn.fornecedores_id;

CRUD
select nome,email from tbfuncionarios where codigo = 1;
select nome,email from tbfuncionarios where nome like '%vitoria%';

update tbfuncionarios set nome = 'Anna Catharina', idade = 16,
    sexo = 'F' where codigo =1;


delete from tbfuncionarios where codigo = 1;

insert into tbfuncionarios(nome, email)
    values('Kaique Miranda','kaique.miranda@hotmail.com');