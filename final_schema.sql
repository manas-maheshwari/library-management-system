
--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `is_current_best_seller` tinyint(1) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Northanger Abbey','Austen, Jane','video',0,'1990-01-01 00:00:00'),(2,'War and Peace','Tolstoy, Leo','paper',1,'1990-01-01 00:00:00'),(3,'Anna Karenina','Tolstoy, Leo','paper',0,'1990-01-01 00:00:00'),(4,'Mrs. Dalloway','Woolf, Virginia','audio',1,'1990-01-01 00:00:00'),(5,'The Hours','Cunnningham, Michael','paper',0,'1990-01-01 00:00:00'),(6,'Huckleberry Finn','Twain, Mark','paper',0,'1990-01-01 00:00:00'),(7,'Bleak House','Dickens, Charles','paper',0,'1990-01-01 00:00:00'),(8,'Tom Sawyer','Twain, Mark','video',0,'1990-01-01 00:00:00'),(9,'A Room of One\'s Own','Woolf, Virginia','paper',0,'1990-01-01 00:00:00'),(10,'Harry Potter','Rowling, J.K.','audio',1,'1990-01-01 00:00:00'),(11,'One Hundred Years of Solitude','Marquez','paper',0,'1990-01-01 00:00:00'),(12,'Hamlet, Prince of Denmark','Shakespeare','paper',0,'1990-01-01 00:00:00'),(13,'Lord of the Rings','Tolkien, J.R.','paper',0,'1990-01-01 00:00:00');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checked_out_book`
--

DROP TABLE IF EXISTS `checked_out_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checked_out_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `checked_out_by` int DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `returned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked_out_by` (`checked_out_by`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `checked_out_book_ibfk_1` FOREIGN KEY (`checked_out_by`) REFERENCES `user` (`id`),
  CONSTRAINT `checked_out_book_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checked_out_book`
--

LOCK TABLES `checked_out_book` WRITE;
/*!40000 ALTER TABLE `checked_out_book` DISABLE KEYS */;
INSERT INTO `checked_out_book` VALUES (1,5,1,'2022-07-31 15:52:06','2022-07-06 15:52:06',0),(2,1,1,'2022-07-31 15:52:51','2022-08-14 15:52:51',0),(3,2,1,'2022-07-31 15:52:53','2022-08-14 15:52:53',0),(4,13,1,'2022-07-31 15:52:56','2022-08-21 15:52:56',0),(5,12,1,'2022-07-31 15:52:58','2022-08-21 15:52:58',0),(6,3,1,'2022-07-31 15:53:15','2022-08-21 15:53:15',0),(7,4,2,'2022-07-31 17:18:11','2022-08-14 17:18:11',0),(8,6,2,'2022-07-31 18:21:19','2022-08-21 18:21:19',0),(9,7,2,'2022-07-31 18:25:57','2022-08-21 18:25:57',0);
/*!40000 ALTER TABLE `checked_out_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John Doe','john_doe','1234',11,'4020 Drive','123456789'),(2,'Jane Smith','jane_smith25','123456',25,'4010 Drive','123456890'),(3,'admin','admin','abc1234',35,'100 Parkway','0000000000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-31 22:28:55
