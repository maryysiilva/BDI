CREATE DATABASE bdEscolaIII

USE bdEscolaIII

CREATE TABLE tbCurso (
    idCurso INT PRIMARY KEY IDENTITY (1,1)
    ,nomeCurso VARCHAR (06) NOT NULL
    ,cargaHorCurso VARCHAR (04) NOT NULL
    ,valorCurso SMALLMONEY NOT NULL 
)

CREATE TABLE tbAluno (
    idAluno INT PRIMARY KEY IDENTITY (1,1)
    ,nomeAluno VARCHAR (30) NOT NULL
    ,dataNascAluno SMALLDATETIME NOT NULL
    ,rgAluno VARCHAR (10) NOT NULL
    ,natAluno VARCHAR (02) NOT NULL
)

CREATE TABLE tbTurma (
    idTurma INT PRIMARY KEY IDENTITY (1,1)
    ,nomeTurma VARCHAR (03) NOT NULL
    ,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso) NOT NULL 
    ,horarioTurma TIME NOT NULL 
)

CREATE TABLE tbMatricula (
    idMatricula INT PRIMARY KEY IDENTITY (1,1)
    ,dataMatricula SMALLDATETIME NOT NULL 
    ,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno) NOT NULL 
    ,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma) NOT NULL
)

--DROP DATABASE bdEscolaIII
