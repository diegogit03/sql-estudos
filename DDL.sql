# DDL

-- CREATE

CREATE DATABASE meudb;

USE meudb;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pessoas(nome) VALUES('Diego');

SELECT * FROM pessoas;

-- ALTER

ALTER TABLE pessoas ADD ano_nascimento INT;

UPDATE pessoas SET ano_nascimento = 2007 WHERE id = 1;

-- Por padrão todos os meses de nascimento virão com 0
ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;

-- DROP

DROP TABLE pessoas;

DROP DATABASE meudb;
