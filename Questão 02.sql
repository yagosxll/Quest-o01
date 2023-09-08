create database agencia;
show databases;
use agencia;

create table Departamento(
departamentoid int primary key,
nomedepartamento varchar (255)
);

insert into Departamento (departamentoid, nomedepartamento) values
(1, "rh"),
(2, "contabilidade"),
(3, "marketing"),
(4, "tecnico de informatica"),
(5, "vendas");

create table funcionarios(
funcionarioid int primary key,
nome varchar (255),
cargo varchar (255),
salario int,
departamentoid int,
foreign key (departamentoid) references Departamento (departamentoid)
);

insert into funcionarios (funcionarioid, nome, cargo, salario, departamentoid) values
(1, "Iago Batista", "Vendedor", 4500.00, 1),
(2, "Lana Silva", "gerente", 6500.00, 2),
(3, "Renan Oliveira", "marketing", 7500.00, 3),
(4, "Igor Santos", "TI", 8500.00, 4),
(5, "Rafaela Almeida", "contabilidade", 2500.00, 5);

select * from Departamento;
select * from funcionarios;






