SELECT
    constructors.name,
    SUM(pitstops.duration) AS 'duração final',
    COUNT(constructorstandings.points) as 'pontuação'
FROM
    constructors
    INNER JOIN
        results ON results.constructorId = constructors.constructorId
    INNER JOIN
        constructorstandings ON results.constructorId = constructorstandings.constructorId
    INNER JOIN
        pitstops ON pitstops.raceId = constructorstandings.raceId
    INNER JOIN
        races ON pitstops.raceId = races.raceId
    WHERE
        races.year > 2009
    GROUP BY constructors.name ORDER BY 'pontuação' desc;