-- Qual o valor médio de pontos positivos por dia?

SELECT  sum(qtdePontos) AS totalPontos,
        
        count(DISTINCT substr(DtCriacao, 1, 10)) AS qtdeDiasUnicos,

        sum(qtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS avgPontosDia

FROM transacoes

WHERE qtdePontos > 0;

-- Método alternativo

SELECT substr(DtCriacao, 1, 10) AS dtDia,
       avg(qtdePontos) AS avgpontosDia

FROM transacoes

WHERE qtdePontos > 0

GROUP BY 1
ORDER BY 2;