DROP TABLE IF EXISTS `pitstops`;

CREATE TABLE `pitstops` (
  `raceId` int NOT NULL,
  `driverId` int NOT NULL,
  `stop` int NOT NULL,
  `lap` int NOT NULL,
  `time` varchar(8) NOT NULL,
  `duration` varchar(9) NOT NULL,
  `milliseconds` int NOT NULL,
  PRIMARY KEY (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `pitstops` WRITE;

INSERT INTO `pitstops` VALUES (841,153,1,1,'17:05:23','26.898',26898);
UNLOCK TABLES;
