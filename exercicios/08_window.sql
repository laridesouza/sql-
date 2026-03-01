-- Saldo de pontos acumulado de cada usuário

WITH tb_cliente_dia AS (

    SELECT idCliente,
        substr(DtCriacao,1,10) AS dtDia,
        sum(qtdePontos) AS totalPontos,
        sum(CASE WHEN qtdePontos > 0 THEN QtdePontos ELSE 0 END) pontosPos


    FROM transacoes

    GROUP BY idCliente, dtDia

)

SELECT *,
       sum(totalPontos) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS saldoPontos,
       sum(pontosPos) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS totalPontosPos

FROM tb_cliente_dia