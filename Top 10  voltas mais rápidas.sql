-- Top 10 dos pilotos que tiveram o maior número de voltas mais rápidas? (por temporada)
    
SELECT 
    `drivers`.forename, `drivers`.surname, 
   count(`results`.fastestlap) as 'Qtd Voltas Mais Rapidas'
FROM
    `drivers`
        INNER JOIN
    `results` ON `results`.driverId = `drivers`.driverId
		INNER JOIN
	`races`	 ON `races`.raceId = `results`.raceId
    where `races`.year > 2010 
    group by `drivers`.forename;