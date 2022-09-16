SELECT * FROM tbItensVenda

use bdEstoque

INSERT INTO tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascCliente)
VALUES ('Armando Jos� Santana', 12345678900, 'armandojsantana@outlook.com', 'm', 1961-02-21)
		,('Sheila Carvalho Leal', 45678909823, 'scarvalho@ig.com.br', 'f', 1978-09-13)
		,('Carlos Henrique Souza', 76598278299, 'chenrique@ig.com.br', 'm', 1981-09-08)
		,('Maria Aparecida Souza', 87365309899, 'mapdasouza@outlook.com', 'f', 1962-07-07)
		,('Adriana Nogueira Silva', 76354309388, 'drica1977@ig.com.br', 'f', 1977-04-09)
		,('Paulo Henrique Silva', 87390123111, 'phsilva80@hotmail.com', 'm', 1987-02-02)

INSERT INTO tbFabricante (nomeFabricante)
VALUES ('Unilever')
		,('P&G')
		,('Bunge')

INSERT INTO tbFornecedor (nomeFornecedor, contatoFornecedor)
VALUES ('Atacad�o', 'Carlos Santos')
		,('Assai', 'Maria Stella')
		,('Rold�o', 'Paulo C�sar')

INSERT INTO tbProduto (descricaoProduto, valorProduto, quantProduto, idFabricante, idFornecedor)
VALUES ('Amaciante Downy', 5.76, 1500, 2, 1)
		,('Amaciante Comfort', 5.45, 2300, 1, 1)
		,('Sab�o em p� OMO', 5.99, 1280, 1, 2)
		,('Margarina Qually', 4.76, 2500, 3, 1)
		,('Salsicha Hot Dog Sadia', 6.78, 2900, 3, 2)
		,('Mortadela Perdig�o', 2.50, 1200, 3, 3)
		,('Hamburger Sadia', 9.89, 1600, 3, 1)
		,('Fralda Pampers', 36.00, 340, 2, 3)
		,('Xampu Seda', 5.89, 800, 1, 2)
		,('Condicionador Seda', 6.50, 700, 1, 3)

INSERT INTO tbVenda (dataVenda, valorTotalVenda, idCliente)
VALUES (01/02/2014, 4500.00, 1)
		,(03/02/2014, 3400.00, 1)
		,(10/02/2014, 2100.00, 2)
		,(15/02/2014, 2700.00, 3)
		,(17/03/2014, 560.00, 3)
		,(09/04/2014, 1200.00, 4)
		,(07/05/2014, 3500.00, 5)
		,(07/05/2014, 3400.00, 1)
		,(07/05/2014, 4000.00, 2)

INSERT INTO tbItensVenda (idVenda, idProduto, quantItensVenda, subTotalItensVenda)
VALUES (1, 1, 200, 1500.00)
		,(1, 2, 300, 3000.00)
		,(2, 4, 120, 1400.00)
		,(2, 2, 200, 1000.00)
		,(2, 3, 130, 1000.00)
		,(3, 5, 200, 2100.00)
		,(4, 4, 120, 1000.00)
		,(4, 5, 450, 700.00)
		,(5, 5, 200, 560.00)
		,(6, 7, 200, 600.00)
		,(6, 6, 300, 600.00)
		,(7, 1, 300, 2500.00)
		,(7, 2, 200, 1000.00)
		,(8, 6, 250, 1700.00)
		,(8, 5, 200, 1700.00)
		,(9, 4, 1000, 4000.00)



--DELETE FROM tbCliente

SELECT * FROM tbCliente
SELECT * FROM tbFabricante
SELECT * FROM tbFornecedor
SELECT * FROM tbProduto
SELECT * FROM tbVenda
SELECT * FROM tbItensVenda