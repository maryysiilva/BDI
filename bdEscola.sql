CREATE DATABASE bdEscolinha

USE bdEscolinha

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,nomePeriodo VARCHAR (40) NOT NULL
)

CREATE TABLE tbAluno(
	codAluno  INT PRIMARY KEY IDENTITY (100,2)
	,nomeAluno VARCHAR (60) NOT NULL
	,dataNascAluno SMALLDATETIME CHECK (dataNascAluno < GETDATE () )
	,ruaAluno  VARCHAR (40) NOT NULL
	,numCasaAluno SMALLINT NOT NULL 
	,bairroAluno VARCHAR (30) NOT NULL
	,telefoneAluno VARCHAR (13) NOT NULL
)

CREATE TABLE tbCurso (
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (40) NOT NULL UNIQUE
	,cargaHoraria VARCHAR (2) NOT NULL
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (codPeriodo) 
)

CREATE TABLE tbTelefone (
	codTelefone INT PRIMARY KEY IDENTITY (1,1)
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME DEFAULT GETDATE ()
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno) NOT NULL
	,codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso) NOT NULL
)