--
-- Table structure for table `laptimes`
--

DROP TABLE IF EXISTS `laptimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptimes` (
  `raceId` int NOT NULL,
  `driverId` int NOT NULL,
  `lap` int NOT NULL,
  `position` int NOT NULL,
  `time` varchar(11) NOT NULL,
  `milliseconds` int NOT NULL,
  PRIMARY KEY (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptimes`
--

LOCK TABLES `laptimes` WRITE;
/*!40000 ALTER TABLE `laptimes` DISABLE KEYS */;
INSERT INTO `laptimes` VALUES (841,20,1,1,'1:38.109',98109);
/*!40000 ALTER TABLE `laptimes` ENABLE KEYS */;
UNLOCK TABLES;