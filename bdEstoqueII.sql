CREATE DATABASE bdEstoqueII

USE bdEstoqueII

CREATE TABLE tbCliente (
    idCliente INT PRIMARY KEY IDENTITY (1,1)
    ,nomeCliente VARCHAR (40)
    ,cpfCliente VARCHAR (11)
    ,emailCliente VARCHAR (50)
    ,sexoCliente VARCHAR (01)
    ,dataNascCliente DATE
)

CREATE TABLE tbFabricante (
    idFabricante INT PRIMARY KEY IDENTITY (1,1)
    ,nomeFabricante VARCHAR (08)
)

CREATE TABLE tbVenda (
    idVenda INT PRIMARY KEY IDENTITY (1,1)
    ,dataVenda DATE
    ,valorTotalVenda SMALLMONEY
    ,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)

CREATE TABLE tbFornecedor (
    idFornecedor INT PRIMARY KEY IDENTITY (1,1)
    ,nomeFornecedor VARCHAR (08)
    ,contatoFornecedor VARCHAR (17)
)

CREATE TABLE tbProduto (
    idProduto INT PRIMARY KEY IDENTITY (1,1)
    ,descProduto VARCHAR (50)
    ,valorProduto SMALLMONEY NOT NULL
    ,qtdeProduto INT NOT NULL
    ,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
    ,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)

CREATE TABLE tbItensVenda (
    idItensVenda INT PRIMARY KEY IDENTITY (1,1)
    ,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
    ,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
    ,qtdeItensVenda VARCHAR (04)
    ,subTotalItensVenda SMALLMONEY
)

--DROP DATABASE bdEstoqueII