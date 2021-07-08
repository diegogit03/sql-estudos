# DML
USE secao04;

-- insert
INSERT INTO tipos_produto(descricao) VALUES('Apple');
INSERT INTO produtos VALUES(NULL, 'Macbook air', '5200', 3);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES('Macbook pro', '7200', 1);

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

-- update
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 7;

UPDATE produtos SET descricao = 'Impressora laser', preco = '700' WHERE codigo = 4;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM WHERE
UPDATE produtos SET preco = '150';

-- DELETE

DELETE FROM produtos WHERE codigo = 4;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM WHERE
DELETE FROM produtos;