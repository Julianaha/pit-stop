--
-- Table structure for table `pitstops`
--

DROP TABLE IF EXISTS `pitstops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitstops`
--

LOCK TABLES `pitstops` WRITE;
/*!40000 ALTER TABLE `pitstops` DISABLE KEYS */;
INSERT INTO `pitstops` VALUES (841,153,1,1,'17:05:23','26.898',26898);
/*!40000 ALTER TABLE `pitstops` ENABLE KEYS */;
UNLOCK TABLES;
