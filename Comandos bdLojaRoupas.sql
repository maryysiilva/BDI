SELECT * FROM tbItensVenda

INSERT INTO tbFabricante (nomeFabricante)
VALUES ('Malwee')
		,('Marisol')
		,('Cia da Malha')

INSERT INTO tbProduto (nomeProduto, precoProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES ('Jeans', 100, 25, 3, 1)
		,('Moletom', 80, 50, 4, 2)
		,('Renda', 120, 30, 4, 3)

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, salarioFuncionario)
VALUES ('Antonio Jose', 25, 1245)
		,('Vanessa Ferraz', 23, 1470)

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES ('Ana', 19)
		,('Maria', 30)
		,('Lucia', 45)
		,('Arnaldo', 72)
		,('Raquel', 28)

INSERT INTO tbVendedor (nomeVendedor)
VALUES ('Joao Santana')
		,('Raquel Torres')

INSERT INTO tbVenda (codCliente, codVendedor, totalVenda)
VALUES (1, 1, 223)
		,(2, 2, 112)
		,(3, 1, 86)
		,(4, 2, 141)
		,(5, 1, 92)

INSERT INTO tbItensVenda (codVenda, codProduto, quantdItens, subTotalItens)
VALUES (1, 4, 1, 75)
		,(1, 5, 1, 210)
		,(2, 5, 4, 31)
		,(2, 6, 2, 103)
		,(3, 4, 3, 12)
		,(3, 6, 2, 26)
		,(4, 4, 1, 79)
		,(4, 4, 1, 81)
		,(5, 6, 3, 95)
		,(5, 5, 4, 53)

/*COMANDO PARA ALTERAR UM DADO*/
UPDATE tbProduto
SET estoqueProduto = (20)
WHERE codProduto = 6

/*COMANDO PARA DELETAR UM DADO*/
DELETE FROM tbFabricante
WHERE codFabricante = 1
/*Não posso deletar esse dado, pois ele é a chave estrangeira de outra tabela.*/

