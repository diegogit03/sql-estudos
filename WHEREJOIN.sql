USE secao05;

# CONSULTA MULTIPLAS TABELAS

SELECT p.codigo, p.descricao, p.preco, tp.descricao AS 'descrição do tipo'
	FROM produtos AS p, tipos_produto AS tp
	WHERE p.codigo_tipo = tp.codigo;
