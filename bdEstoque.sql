CREATE DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbCliente (
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (60) NOT NULL
	,cpfCliente BIGINT NOT NULL
	,emailCliente VARCHAR (256) NOT NULL
	,sexoCliente CHAR (1) NOT NULL
	,dataNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFabricante (
	idFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (50) NOT NULL
)

CREATE TABLE tbFornecedor (
	idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (50) NOT NULL
	,contatoFornecedor VARCHAR (60) NOT NULL
)

CREATE TABLE tbVenda (
	idVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)

CREATE TABLE tbProduto (
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto VARCHAR (50) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,quantProduto INT NOT NULL
	,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)

CREATE TABLE tbItensVenda (
	idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	,quantItensVenda SMALLINT NOT NULL
	,subTotalItensVenda SMALLMONEY NOT NULL
)

DROP DATABASE bdEstoque