SELECT
    GP.year,
    equipes.name,
    podioEquipes.position
FROM
    constructorstandings AS podioEquipes
    INNER JOIN races AS GP ON GP.raceId = podioEquipes.raceId
    INNER JOIN constructors AS equipes ON equipes.constructorId = podioEquipes.constructorId
WHERE
    podioEquipes.raceId IN (
        SELECT
            raceId
        FROM
            (SELECT year, MAX(round) AS round FROM races GROUP BY year HAVING year >= 2000) AS finais
            INNER JOIN races AS GP ON (GP.year = finais.year AND GP.round = finais.round)
    )
HAVING `equipes`.name = 'Ferrari' or `equipes`.name = 'McLaren' or `equipes`.name = 'Willians' or `equipes`.name = 'RedBull' or `equipes`.name = 'Mercedes'
ORDER BY 
    GP.year ASC,
    podioEquipes.raceId ASC,
    podioEquipes.position ASC