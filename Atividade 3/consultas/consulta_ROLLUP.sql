/*
CONSULTA 2 utilizando ROLLUP
Qual foi o total de vendas de cada estado?
*/
SELECT COALESCE(lojas.estado,'Total') as Estado, SUM(vendas.quantidade) as Vendas_total, SUM(vendas.valor) as Valor_total
FROM vendas
JOIN lojas ON vendas.id_loja = lojas.id
GROUP BY ROLLUP (lojas.estado);
