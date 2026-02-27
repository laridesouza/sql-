SELECT round(avg(qtdePontos),2) AS mediaCarteira, 
       1. * sum(qtdePontos) / count(idCliente) AS mediaCarteiraRoots,
       min(qtdePontos) AS minCarteira,
       max(qtdePontos) AS maxCarteira,
       sum(flTwitch),
       sum(flEmail)


FROM clientes