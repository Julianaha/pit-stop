DROP TABLE IF EXISTS `laptimes`;

CREATE TABLE `laptimes` (
  `raceId` int NOT NULL,
  `driverId` int NOT NULL,
  `lap` int NOT NULL,
  `position` int NOT NULL,
  `time` varchar(11) NOT NULL,
  `milliseconds` int NOT NULL,
  PRIMARY KEY (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `laptimes` WRITE;

INSERT INTO `laptimes` VALUES (841,20,1,1,'1:38.109',98109);
UNLOCK TABLES;