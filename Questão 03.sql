create database jornalismo;
show databases;
use jornalismo;

create table Artigos(
Artigoid int primary key,
titulo varchar(255), 
conteudo varchar(255),
datapublicacao date
);

insert into Artigos (Artigoid, titulo, conteudo, datapublicacao) values 
(1,  "A tecnologia avança!", "Neste livro vamos falar da importância da tecnologia.", '2023-04-05'),
(2,  "Melhores comidas do universo!", "As melhores culinários!!", '2023-05-11'),
(3, "Conhecendo os meus sonhos!!" , "Sonhos a serem realizados!", '2023-09-10'),
(4, "Hoje vamos trabalhar!", "O trabalho engrandeçe o homem!", '2023-02-12'),
(5, "Trabalhando com programação!!" , "Programação é vida!", '2023-01-12');


insert into Comentarios (Comentarioid, Artigoid, Autor, Texto, datacomentario) values
(1, 1, "Lana", "A tecnologia é o futuro!!!", '2023-05-10'),
(2, 2, "Rafaela", "Muito bom adorei!", '2023-05-16'),
(3, 3, "Lucas", "Adorei os exércicios!!", '2023-20-12'),
(4, 4, "Vinicius", "Vamos trabalhar!!", '2023-16-21'),
(5, 5, "Lanita", "Hoje vamos trabalhar com programação e banco de dados!!" ,'2023-06-12');

drop table Comentarios;
create table Comentarios (
Comentarioid int primary key,
Artigoid int,
Autor varchar (255),
Texto varchar (255),
datacomentario date,
foreign key(Artigoid) references Artigos (Artigoid)
);
select * from Artigos;
select * from Comentarios;
drop table Artigos;