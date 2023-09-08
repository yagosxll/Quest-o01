CREATE DATABASE Empresa;
USE Empresa;
SHOW DATABASES;
drop database Empresa;

CREATE TABLE Clientes (

clienteid int primary key,
nome varchar (255) NOT NULL,
email varchar (255) NOT NULL,
telefone varchar (22) NOT NULL
);

insert into Clientes(clienteid, nome, email, telefone) values
(1, "Iago Batista", "yagosxll@gmail.com", "71 987721154"),
(2, "Vinicius almeida", "vini2@gmail.com", "71 987256525"),
(3, "Ligia santos", "ligia28@gmail.com", "71 985525656"),
(4, "Rafael Santos", "rafa25@gmail.com", "71 988565655"),
(5, "Livia Batista", "livi2656@gmail.com", "71 985220656");

create table Pedidos (

pedidoid int primary key,
clienteid int not null,
datapedido date not null,
valortotal decimal (10,2) not null,
foreign key (clienteid) references Clientes (clienteid)
);

insert into Pedidos (pedidoid, clienteid, datapedido, valortotal) values
(1, 1, '2023-07-10', 140.25),
(2, 2, '2022-06-10', 210.10),
(3, 3, '2023-09-11', 140.25),
(4, 4, '2023-01-10', 160.20),
(5, 5, '2023-02-09', 150.10);

select * from clientes;
select * from pedidos;