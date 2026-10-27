SELECT 
       sum(QtdePontos),
       
       sum(CASE
           WHEN QtdePontos > 0 THEN qtdePontos
       END) AS QtdePontosPositivos,
       
       sum(CASE WHEN qtdePontos < 0 THEN QtdePontos
       ELSE 0
       END) AS qtdePontosNegativos,
       
       count(CASE
       WHEN qtdePontos < 0 THEN qtdePontos
       ELSE 0
       END) AS qtdeTransacaoNegativa

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos