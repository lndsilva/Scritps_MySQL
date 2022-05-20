drop database db_minhadb;

create database db_minhadb;

use db_minhadb;

create table tbTelefones(
codigo int,
nome varchar(50),
telefone char(15)
);


show tables;
desc tbtelefones;


-- inserindo registros na tabela tbtelefones

insert into tbTelefones(codigo,nome,telefone)
	values(1,'Marco Teixeira','(11)5555-555');

insert into tbTelefones(codigo,nome,telefone)
	values(3,'Marco Teixeira','(11)5555-555');

-- outra forma de fazer o insert

insert into tbTelefones 
	values(2,'Raissa Miranda','(11)6666-666');

insert into tbTelefones 
	values(4,'Raissa Miranda','(11)6666-666');
-- visualizando os registros das tabelas

select * from tbTelefones;

-- Para apagar um registro no banco de dados

-- delete from tbTelefones where codigo = 1;

-- select * from tbTelefones;


-- hora - hh:mm:ss   :-> ('16:15:00')
-- data - aaaa/MM/dd :-> ('2022/02/24')

update tbtelefones set nome = 'Maria da Silva'
	where codigo = 3;

update tbtelefones set nome = 'José Miranda',
	telefone = '(11)2584-368' where codigo = 2;
