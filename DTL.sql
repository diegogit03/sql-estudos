SELECT * FROM tipos_produto;

-- DTL
START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Farmacia');
    INSERT INTO tipos_produto (descricao) VALUES ('Escritorio');

-- COMMIT
COMMIT;

-- ROLLBACK
ROLLBACK;
