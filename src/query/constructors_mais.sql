/*TOP 5 CONSTRUCTORS QUE MAIS PONTUARAM NA ÚLTIMA DÉCADA*/

SELECT 
    constructorstandings.constructorId,
    constructors.name AS construtora,
    SUM(constructorstandings.points) AS total_vitorias
FROM
    constructorstandings
        INNER JOIN
    constructors ON constructors.constructorId = constructorstandings.constructorId
        INNER JOIN
    races ON races.raceId = constructorstandings.raceId
WHERE
    races.year > 2007
GROUP BY constructorstandings.constructorId 
HAVING total_vitorias > 0
ORDER BY total_vitorias DESC
LIMIT 5;


/*TOP 5 CONSTRUCTORS QUE MAIS PONTUARAM NA HISTÓRIA DA F1*/

SELECT 
    constructorstandings.constructorId,
    constructors.name AS construtora,
    SUM(constructorstandings.points) AS total_vitorias
FROM
    constructorstandings
        INNER JOIN
    constructors ON constructors.constructorId = constructorstandings.constructorId
        INNER JOIN
    races ON races.raceId = constructorstandings.raceId
WHERE
    races.year > 1949
GROUP BY constructorstandings.constructorId 
HAVING total_vitorias > 0
ORDER BY total_vitorias DESC
LIMIT 5;