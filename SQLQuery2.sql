CREATE DATABASE SORVETERIA;

USE SORVETERIA

CREATE TABLE tbfuncionario(
codfuncionario int primary key identity(100,1),
nomefuncionario varchar(40),
cpffuncionario varchar(20),
datanascfuncionario date,
ruafuncionario varchar(40),
numerofuncionario varchar(15),
bairrofuncionario varchar(40),
cidadefuncionario varchar(40))

CREATE TABLE tbfornecedor(
codFornecedor int primary key identity(20,10),
nomeFornecedor varchar(40),
contato varchar(40))

CREATE TABLE tbsorvetes(
codsorvete int primary key identity(1,10),
nomesorvete varchar(30),
valorsorvete int,
codFornecedor int foreign key references tbfornecedor(codFornecedor)
)

CREATE TABLE tbOrdemdeServico(
codOs int primary key identity(10,1),
observacaoOs varchar(40),
codFuncionario int foreign key references tbfuncionario(codFuncionario),
codFornecedor int foreign key references tbfornecedor(codFornecedor))

INSERT INTO tbfuncionario (nomefuncionario,cpffuncionario,datanascfuncionario,ruafuncionario,numerofuncionario,bairrofuncionario,cidadefuncionario)
VALUES ('Jhonatan francozo','222.222.222-02','07/02/2002','Rua dos vales','11-82002-0220','bairro cachoeirinha','sao paulo'),
('Luan Pereira','333.333.333-03','08/03/2001','Rua tamarindo','11-94002-8922','bairro cachoeirinha','sao paulo'),
('Luana tenacio','111.111.111-02','02/05/2000','Rua dos tamandua','11-93002-7833','bairro gienopolis','guaianazes')

INSERT INTO tbfornecedor (nomeFornecedor, contato)
VALUES ('Leandro Caldeira','leandro@gmail.com'),
('Claudio Alves','claudio@hotmail.com'),
('Pedro Neves','pedro@outlook.com')

INSERT INTO tbOrdemdeServico (observacaoOs)
VALUES ('20 sorvetes no pedido para o cliente X'),
('5 sorvetes no pedido para o cliente Y'),
('15 sorvetes no pedido para o cliente T')

INSERT INTO tbsorvetes (nomesorvete, valorsorvete)
VALUES ('kibom',15.00),
('nestle',20.00),
('magnum',30.00)

select * from tbfuncionario
select * from tbfornecedor
select * from tbOrdemdeServico
select * from tbsorvetes