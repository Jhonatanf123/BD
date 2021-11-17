CREATE DATABASE futebol;

USE futebol;

CREATE TABLE tbclube(
id_clube int primary key identity(1,1),
nome_clube varchar(40),
fundacao_clube date)

CREATE TABLE tbjogadores(
id_jogador int primary key identity(1,1),
nome_jogador varchar(40),
data_jogador date,
posicao varchar(20),
numero_jogador int,
id_clube int foreign key references tbclube(id_clube))


CREATE TABLE tbpartida(
id_partida int primary key identity(1,1),
id_visitante int FOREIGN KEY REFERENCES tbclube(id_clube),
id_mandante int FOREIGN KEY REFERENCES tbclube(id_clube))

CREATE TABLE tbgol(
id_gol int primary key identity(1,1),
minuto int,
id_jogador int foreign key references tbjogadores(id_jogador),
id_partida int foreign key references tbpartida(id_partida))

INSERT INTO tbclube (Nome_Clube, fundacao_clube)
VALUES ('Barcelona', '12/11/1899'),
('Juventos','01/09/1989'),
('Liverpool','11/09/1892')

INSERT INTO tbjogadores (nome_jogador, id_clube)
VALUES ('Sergio Aguero', '1'),
('Mohamed Salah','2'),
('Paulo dybala','3')

INSERT INTO tbpartida (id_mandante, id_visitante)
VALUES ('3','3'),
('1','1'),
('2','2')

INSERT INTO tbgol (id_jogador, id_partida)
VALUES ('2','1'),
('2','1'),
('3','3')

UPDATE tbjogadores SET nome_jogador = 'Alvaro Morata' where id_jogador =1
INSERT INTO tbclube (nome_clube, fundacao_clube)
VALUES ('Lyon','1921')
INSERT INTO tbjogadores (nome_jogador,id_clube)
VALUES ('James Milner','3')
UPDATE tbjogadores SET data_jogador = '02/02/1992' where id_jogador =1
UPDATE tbjogadores SET posicao = 'Goleiro' where id_jogador =1

UPDATE tbjogadores SET data_jogador = '07/08/1997' where id_jogador =2
UPDATE tbjogadores SET posicao = 'Atacante' where id_jogador =2

UPDATE tbjogadores SET data_jogador = '01/03/1993' where id_jogador =3
UPDATE tbjogadores SET posicao = 'Goleiro' where id_jogador =3

UPDATE tbjogadores SET data_jogador = '03/07/1995' where id_jogador =5
UPDATE tbjogadores SET posicao = 'Atacante' where id_jogador =5

UPDATE tbjogadores SET numero_jogador = '5' where id_jogador =5
UPDATE tbjogadores SET numero_jogador = '19' where id_jogador =3
UPDATE tbjogadores SET numero_jogador = '21' where id_jogador =2
UPDATE tbjogadores SET numero_jogador = '2' where id_jogador =1

UPDATE tbgol SET minuto = '23' where id_gol =1
UPDATE tbgol SET minuto = '40' where id_gol =2
UPDATE tbgol SET minuto = '54' where id_gol =3

UPDATE tbclube SET fundacao_clube = '08.12.1994' where id_clube =3
UPDATE tbgol SET id_jogador = '3' where id_gol =1

select * from tbgol
select * from tbpartida
select * from tbjogadores
select * from tbclube