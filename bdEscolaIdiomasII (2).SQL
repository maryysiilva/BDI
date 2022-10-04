DROP DATABASE bdEscolaIdiomas
CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (08) NOT NULL
)

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descPeriodo VARCHAR (13) NOT NULL
)

CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descNivel VARCHAR (13) NOT NULL
)

CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	,diaSemana VARCHAR (13) NOT NULL
)

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno	VARCHAR (36) NOT NULL
	,rgAluno VARCHAR (12) NOT NULL
	,logradouroAluno VARCHAR (100) NOT NULL
	,numLogAluno VARCHAR (04) NOT NULL
	,bairroAluno VARCHAR (20) NOT NULL
	,cepALuno VARCHAR (09) NOT NULL
	,cidadeAluno VARCHAR (30) NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,horario TIME NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso) NOT NULL
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo) NOT NULL
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel) NOT NULL
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana) NOT NULL
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME CHECK (dataMatricula < GETDATE()) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno) NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma) NOT NULL
)


CREATE TABLE tbFoneAluno(
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,numFoneAluno VARCHAR (09) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno) NOT NULL
)