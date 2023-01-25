/*
CONSULTA 1 utilizando GROUPING SET
Qual foi o total de vendas de cada categoria de produto?
*/
SELECT categoria, SUM(quantidade) as total_vendas, SUM(valor) as total_valor
FROM vendas
JOIN produtos ON vendas.id_produto = produtos.id
GROUP BY GROUPING SETS ((categoria), ());