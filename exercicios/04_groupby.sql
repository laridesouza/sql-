-- Quantos produtos são de rpg?

-- SELECTcount(*) 
-- FROM produtos
-- WHERE DescCategoriaProduto = 'rpg'

SELECT DescCategoriaProduto,
       count(*)

FROM produtos
GROUP BY DescCategoriaProduto