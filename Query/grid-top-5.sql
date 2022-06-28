-- Questão 3: Quais os 5 pilotos com maior índice de qualificação ? -- 
SELECT
	qualifying.qualifyId,
	qualifying.position,
	drivers.driverId,
    concat(drivers.forename, ' ',drivers.surname) as nomezin,
    
COUNT(qualifying.position) AS qualificacoes_gerais

FROM
    drivers
INNER JOIN 
	qualifying ON qualifying.driverId = drivers.driverId
    WHERE qualifying.position < 6
	GROUP BY driverId ORDER BY qualificacoes_gerais DESC limit 5