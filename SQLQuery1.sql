CREATE DATABASE escola;

use escola

CREATE TABLE tbcurso(
codCurso INT PRIMARY KEY IDENTITY(100,1),
nomeCurso VARCHAR(40),
cargahoraCurso INT,
valorCurso BIGINT)

CREATE TABLE tbturma(
codTurma INT PRIMARY KEY IDENTITY(1,1),
nomeTurma VARCHAR(40),
horarioTurma INT,
codCurso int FOREIGN KEY REFERENCES tbcurso(codCurso) 
)

CREATE TABLE tbmatricula(
codMatricula INT PRIMARY KEY IDENTITY(1,1),
dataMatricula date,
codAluno INT FOREIGN KEY REFERENCES tbaluno(codAluno),
codTurma INT FOREIGN KEY REFERENCES tbturma(codTurma))

CREATE TABLE tbaluno(
codAluno INT PRIMARY KEY IDENTITY(1,1),
nomeAluno VARCHAR(40),
dataNascAluno date,
RgAluno BIGINT,
NaturalAluno VARCHAR(40))