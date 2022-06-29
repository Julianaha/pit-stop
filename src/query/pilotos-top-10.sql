/* Nas duas ultimas décadas, quais foram os 10 pilotos que mais apareceram entre os top 10? */

SELECT 
    concat(forename,' ', surname) AS 'nome_piloto',
    COUNT(`driverstandings`.position) AS 'qtde_top10'
FROM
    `driverstandings` 
        INNER JOIN
    `drivers` ON `driverstandings`.driverId = `drivers`.driverId
        INNER JOIN
    `races` ON `races`.raceId = `driverstandings`.raceId
WHERE
    `driverstandings`.position <= 10
        AND 
    `races`.year BETWEEN 2000 AND 2018
GROUP BY nome_piloto
ORDER BY qtde_top10 DESC LIMIT 10;




 



