-- Os motores/carros que foram melhor em cada circuito (nas ultimas 5 temporadas)

SELECT 
    `circuits`.`name`,
    `constructors`.`name`,
    SUM(`results`.points) AS 'Vitorias'
FROM
    `constructors`
        INNER JOIN
    `results` ON `results`.constructorId = `constructors`.constructorId
        INNER JOIN
    `races` ON `races`.raceId = `results`.raceId
		INNER JOIN
     `circuits` ON `races`.circuitId =`circuits`.circuitId
WHERE
    `races`.`year` > 2009
GROUP BY `circuits`.`name`