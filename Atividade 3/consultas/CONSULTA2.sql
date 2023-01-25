/*
CONSULTA 2 utilizando ROLLUP
Qual foi o total de vendas de cada loja, agrupado por estado?
*/
SELECT COALESCE(lojas.nome,'Total') as nome_loja, 
       COALESCE(lojas.estado,'Total') as estado, 
       SUM(vendas.quantidade) as total_vendas, 
       SUM(vendas.valor) as total_valor
FROM vendas
JOIN lojas ON vendas.id_loja = lojas.id
GROUP BY ROLLUP (lojas.nome,lojas.estado);
