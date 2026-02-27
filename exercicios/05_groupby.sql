-- Qual o valor médio de pontos positivos por dia?

SELECT SUM(qtdePontos) AS TotalPontos,

       count(DISTINCT substr(DtCriacao,1,10)) AS qtdeDiasUnicos,

        sum(qtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia

FROM transacoes

WHERE qtdePontos > 0