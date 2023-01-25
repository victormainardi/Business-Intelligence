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
