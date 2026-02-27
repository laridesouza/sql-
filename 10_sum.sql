SELECT sum(QtdePontos),

       sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
       END) AS qtdePontosPositivos,
        
       sum(CASE
             WHEN qtdePontos < 0 THEN qtdePontos
       END) AS qtdePontosNegativos,

       count(CASE
             WHEN qtdePontos < 0 THEN qtdePontos
       END) AS qtdeTransacoesNegativas

FROM transacoes

WHERE DtCriacao	>= '2025-07-01'
AND DtCriacao < '2025-08-01'


