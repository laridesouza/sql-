-- Qual categoria tem mais produtos vendidos?

SELECT t1.DescCategoriaProduto,
       count(t2.IdTransacao)

FROM produtos AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdProduto	= t2.IdProduto	

GROUP BY t1.DescCategoriaProduto
ORDER BY count(t2.IdTransacao) DESC
