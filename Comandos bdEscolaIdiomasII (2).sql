use bdEscolaIdiomas

INSERT INTO tbCurso (nomeCurso)
VALUES('espanhol')
      ,('inglês')
      ,('alemão')

INSERT INTO tbPeriodo (descPeriodo)
VALUES('manhã')
      ,('tarde')
      ,('noite')

INSERT INTO tbNivel (descNivel)
VALUES('iniciante')
       ,('intermediário')
       ,('fluente')

INSERT INTO tbDiaSemana (diaSemana)
VALUES('segunda-feira')
        ,('terça-feira')
        ,('quarta-feira')
        ,('quinta-feira')
        ,('sexta-feira')
        ,('sábado')

INSERT INTO tbAluno (nomeAluno, rgAluno, logradouroAluno, numLogAluno, bairroAluno, cepALuno, cidadeAluno)
VALUES('Maryana Souza Fortes da Silva', '253392804', 'Rua Amor e Azeitonas', '2050','Estrada dos Ventos', '08450350', 'São Paulo')
      ,('Matteo Fischer Silva', '122556984', 'Rua Crepúsculo', '22', 'Itapevi','02536987', 'Forks')
      ,('Luna Ronda Silva', '775897001', 'Rua Vermelho Branco e Sangue Azul', '965', 'Depressão', '04586951', 'Rio de Janeiro')
      ,('Kyan de Lima Santos', '552336523', 'Rua P.S. Ainda amo você' , '589', 'Lua Cheia', '096403250', 'Cidade dos Anjos Caídos')
      ,('Violet Cristan', '258369200', 'Rua Dom Casmurro', '258', 'Violetas na Janela', '05660800', 'Limeira')
      ,('Victoria Balsano', '365710530', 'Rua Heartstopper', '9550', 'Victory', '05469321','Alphaville')
      

INSERT INTO tbTurma (horario, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES('10:30', 1, 1, 2, 6)
      ,('15:20', 3, 2, 1, 1)
      ,('20:00', 2, 3, 3, 5)
      ,('14:40', 3, 2, 3, 4)
      ,('09:10', 2, 1, 3, 2)
      ,('19:45', 1, 3, 2, 3)

INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES('29/09/2022', 1, 2)
      ,('29/09/2022', 2, 1)
      ,('29/09/2022', 3, 4)
      ,('29/09/2022', 4, 3)
      ,('29/09/2022', 5, 5)
      ,('29/09/2022', 6, 2)

INSERT INTO tbFoneAluno (numFoneAluno, idAluno)
VALUES(965452019, 1)
      ,(958286020, 1)
      ,(954286533, 2)
      ,(988250025, 2)
      ,(958662536, 3)
      ,(932556778, 3)
      ,(958836414, 4)
      ,(974553620, 4)
      ,(964879036, 5)
      ,(992336588, 5)
      ,(941223671, 6)
      ,(920895488, 6)

SELECT * FROM tbCurso
SELECT * FROM tbPeriodo
SELECT * FROM tbNivel
SELECT * FROM tbDiaSemana
SELECT * FROM tbAluno
SELECT * FROM tbTurma
SELECT * FROM tbMatricula
SELECT * FROM tbFoneAluno

