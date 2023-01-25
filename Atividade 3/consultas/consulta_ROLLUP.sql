/*
CONSULTA 2 utilizando ROLLUP
Qual foi o total de vendas de cada loja, agrupado por estado?
*/
SELECT COALESCE(lojas.nome,'Total') as Loja,
	   COALESCE(lojas.estado,'Total') as Estado,
	   SUM(vendas.quantidade) as Vendas_total,
       SUM(vendas.valor) as Valor_total
FROM vendas
JOIN lojas ON vendas.id_loja = lojas.id
GROUP BY ROLLUP (lojas.nome,lojas.estado);


/*
SELECT nome, 
       estado, 
       SUM(valor) as total_vendas
FROM Vendas
JOIN Lojas ON Vendas.id_loja = Lojas.id
GROUP BY nome, estado
ORDER BY estado, nome;

*/