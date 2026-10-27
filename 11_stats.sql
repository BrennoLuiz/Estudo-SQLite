SELECT round(avg(QtdePontos),2) AS mediaCarteira,
       1. * sum(QtdePontos) / count(IdCliente) AS mediaCarteiraRoots,
       min(qtdePontos) AS minCarteira,
       max(qtdePontos) AS maxCarteira,
       sum(flTwitch),
       sum(flEmail)

FROM clientes