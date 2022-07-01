-- result table --

ALTER TABLE results
ADD FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE results
ADD FOREIGN KEY (constructorId)
REFERENCES constructors(constructorId);

ALTER TABLE results
ADD FOREIGN KEY (driverId)
REFERENCES drivers(driverId); 

ALTER TABLE results
ADD FOREIGN KEY (statusId)
REFERENCES status(statusId);

-- qualifying table --
ALTER TABLE qualifying
ADD FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE qualifying
ADD FOREIGN KEY (driverId)
REFERENCES drivers(driverId); 

ALTER TABLE qualifying
ADD FOREIGN KEY (constructorId)
REFERENCES constructors(constructorId);

-- constructorstandings --

ALTER TABLE constructorstandings
ADD FOREIGN KEY (constructorId)
REFERENCES constructors(constructorId);

ALTER TABLE constructorstandings
ADD FOREIGN KEY (raceId)
REFERENCES races(raceId);

-- pitstop table --
ALTER TABLE pitstop
ADD FOREIGN KEY (driverId)
REFERENCES drivers(driverId); 

-- driverstandings table --
ALTER TABLE driverstandings
ADD FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE driverstandings
ADD FOREIGN KEY (driverId)
REFERENCES drivers(driverId); 

-- laptimes table --
ALTER TABLE laptimes
ADD FOREIGN KEY (driverId)
REFERENCES drivers(driverId);

-- constructorresults table --
ALTER TABLE constructorresults
ADD FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE constructorresults
ADD FOREIGN KEY (constructorId)
REFERENCES constructors(constructorId);

-- races table --
ALTER TABLE races
ADD FOREIGN KEY (circuitId)
REFERENCES circuits(circuitId);

ALTER TABLE races
ADD FOREIGN KEY (year)
REFERENCES seasons(year);