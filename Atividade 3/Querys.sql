/*
CONSULTA 1 utilizando GROUPING SET
Qual foi o total de vendas de cada categoria de produto?
*/
SELECT categoria, SUM(quantidade) as total_vendas, SUM(valor) as total_valor
FROM vendas
JOIN produtos ON vendas.id_produto = produtos.id
GROUP BY GROUPING SETS ((categoria), ());


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


/*
CONSULTA 3 utilizando CUBE
Qual foi o total de vendas para cada categoria de produto, agrupado por mês e estado da loja?
*/
WITH vendas_lojas AS (
    SELECT v.id_produto, p.categoria, l.estado, to_char(v.data, 'Mon-YY') as mes, SUM(v.quantidade) as total_vendas, SUM(v.valor) as total_valor
    FROM vendas v
    JOIN lojas l ON v.id_loja = l.id
    JOIN produtos p ON v.id_produto = p.id
    GROUP BY v.id_produto, p.categoria, l.estado, mes)
SELECT COALESCE(categoria,'Total') as categoria,
       COALESCE(estado,'Total') as estado,
       COALESCE(mes,'Total') as mes,
       SUM(total_vendas) as total_vendas,
       SUM(total_valor) as total_valor
FROM vendas_lojas
GROUP BY CUBE (categoria,estado,mes);
