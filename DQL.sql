CREATE DATABASE secao04;

USE secao04;

CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    codigo_tipo INT NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_tipo) REFERENCES tipos_produto(codigo)
);

INSERT INTO tipos_produto(descricao) VALUES('Computadores');
INSERT INTO tipos_produto(descricao) VALUES('Impressora');

INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES('Desktop', '1200', 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES('Laptop', '1800', 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES('Impr. Jato de Tinta', '300', 2);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES('Impr. Laser', '500', 2);

# DQL

SELECT * FROM tipos_produto;

SELECT codigo, descricao FROM tipos_produto;

SELECT descricao FROM tipos_produto;

SELECT descricao, codigo FROM tipos_produto;

SELECT codigo, descricao, preco, codigo_tipo FROM produtos;

# ALIAS - apelido
SELECT p.codigo AS 'Código do Produto', p.descricao AS 'Descrição', p.preco AS 'Preço', p.codigo_tipo AS 'Tipo Produto' FROM produtos AS p;
