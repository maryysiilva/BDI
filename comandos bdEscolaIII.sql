USE bdEscolaIII

INSERT INTO tbCurso (nomeCurso, cargaHorCurso, valorCurso)
VALUES ('Inglês', '2000', '356.00')
        ,('Alemão', '3000', '478.00')

INSERT INTO tbAluno (nomeAluno, dataNascAluno, rgAluno, natAluno)
VALUES ('Paulo Santos', '2000-10-03', '822921220', 'SP')
      ,('Maria da Gloria', '1999-03-10', '452331230', 'SP')
       ,('Perla Nogueira Silva', '1998-04-04', '235332119', 'SP')
       ,('Gilson Barros Silva', '1995-09-09', '34221111x', 'PE')
       ,('Mariana Barbosa Santos', '2001-10-10', '542221229', 'RJ')

INSERT INTO tbTurma (nomeTurma, idCurso, horarioTurma)
VALUES ('1IA', 1, '12:00:00')
        ,('1IB', 1, '18:00:00')
        ,('1AA', 2, '19:00:00')

INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES ('2015-03-10', 1, 1)
        ,('2014-04-05', 2, 1)
        ,('2012-03-05', 3, 2)
        ,('2016-03-03', 1, 3)
        ,('2015-07-05', 4, 2)
        ,('2015-05-07', 4, 3)
        ,('2015-06-06', 5, 1)
        ,('2015-05-05', 5, 3)

--Listar o nome, rg e data de nascimento dos alunos nascidos em SP
SELECT idAluno, nomeAluno, rgAluno, dataNascAluno, natAluno 
	FROM tbAluno
        WHERE natAluno LIKE '%SP%'

--Listar nome e o rg dos alunos com o nome começado com P
SELECT nomeAluno, rgAluno, dataNascAluno 
	FROM tbAluno
        WHERE nomeAluno LIKE 'P%'

--Listar o nome dos cursos cuja a carga horária seja superior a 2000 horas
SELECT nomeCurso, cargaHorCurso 
	FROM tbCurso
        WHERE cargaHorCurso >2000

--Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva
SELECT nomeAluno, rgAluno
	FROM tbAluno
		WHERE nomeAluno LIKE '%SILVA%'

--Listar o nome dos alunos e a data de nascimento que fazem aniversário em março
SELECT nomeAluno, dataNascAluno 
	FROM tbAluno
        WHERE MONTH (dataNascAluno) = 3

--Listar o código dos alunos e a data de matrícula dos alunos matriculados em maio de qualquer ano
SELECT idAluno, dataMatricula 
	FROM tbMatricula
        WHERE MONTH (dataMatricula) = 05

--Listar os alunos matriculados no curso de inglês
SELECT idAluno 
	FROM tbMatricula
        WHERE idTurma =1 OR idTurma =2

--Listar os alunos matriculados na turma 1AA
SELECT idAluno 
	FROM tbMatricula
        WHERE idTurma =3

--Listar todos os dados de todos os alunos
SELECT idAluno, nomeAluno, dataNascAluno, rgAluno, natAluno 
	FROM tbAluno

--Listar todos os dados de todas as turmas
SELECT idTurma, nomeTurma, idCurso, horarioTurma 
	FROM tbTurma
