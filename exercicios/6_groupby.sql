-- Qual dia da semana quem mais pedidos em 2025?

SELECT  strftime('%w', datetime(substr(DtCriacao,1 , 10))) AS diaSemana,
        count(DISTINCT IdTransacao) AS qtdePedidos

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY 1

ORDER BY 2 DESC