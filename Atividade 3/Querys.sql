/*PERGUNTA 1 utilizando GROUPING SET*/
SELECT categoria, SUM(quantidade) as total_vendas, SUM(valor) as total_valor
FROM vendas
JOIN produtos ON vendas.id_produto = produtos.id
GROUP BY GROUPING SETS ((categoria), ());

/*PERGUNTA 2 utilizando ROLLUP*/
SELECT COALESCE(lojas.nome,'Total') as nome_loja, 
       COALESCE(lojas.estado,'Total') as estado, 
       SUM(vendas.quantidade) as total_vendas, 
       SUM(vendas.valor) as total_valor
FROM vendas
JOIN lojas ON vendas.id_loja = lojas.id
GROUP BY ROLLUP (lojas.nome,lojas.estado);


/*PERGUNTA 3 utilizando CUBE */
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



