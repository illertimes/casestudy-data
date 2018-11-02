
CREATE DATABASE CASESTUDY;
USE CASESTUDY;

DROP TABLE IF EXISTS `Branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` int(9) NOT NULL,
  `branch_name` varchar(25) NOT NULL,
  `branch_street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(7) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `state` int(11) NOT NULL,
  `LAST_UPDATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  CONSTRAINT `Branch_ibfk_1` FOREIGN KEY (`state`) REFERENCES `State` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branch`
--

LOCK TABLES `Branch` WRITE;
/*!40000 ALTER TABLE `Branch` DISABLE KEYS */;
INSERT INTO `Branch` VALUES (1,853966189,'Branch-Aaren','Street-Aaren','New York',5724,'527189976',27,'2018-05-09 15:35:25'),(2,255511981,'Branch-Aarika','Street-Aarika','New York',18667,'590041424',2,'2018-05-09 15:35:25'),(3,810705737,'Branch-Abagael','Street-Abagael','New York',69962,'628728244',11,'2018-05-09 15:35:25'),(4,167109945,'Branch-Abagail','Street-Abagail','New York',2900,'396819286',35,'2018-05-09 15:35:25'),(5,855595807,'Branch-Abbe','Street-Abbe','New York',74816,'503429828',24,'2018-05-09 15:35:25'),(6,692677429,'Branch-Abbey','Street-Abbey','New York',35594,'533892618',33,'2018-05-09 15:35:25'),(7,23801472,'Branch-Abbi','Street-Abbi','New York',90630,'416898983',41,'2018-05-09 15:35:25'),(8,852797386,'Branch-Abbie','Street-Abbie','New York',92174,'86891531',44,'2018-05-09 15:35:25'),(9,425740667,'Branch-Abby','Street-Abby','New York',74917,'796484086',12,'2018-05-09 15:35:25');
/*!40000 ALTER TABLE `Branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CDW_SAPP_D_BRANCH`
--

DROP TABLE IF EXISTS `CDW_SAPP_D_BRANCH`;
/*!50001 DROP VIEW IF EXISTS `CDW_SAPP_D_BRANCH`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CDW_SAPP_D_BRANCH` AS SELECT 
 1 AS `BRANCH_CODE`,
 1 AS `BRANCH_NAME`,
 1 AS `BRANCH_STREET`,
 1 AS `BRANCH_CITY`,
 1 AS `BRANCH_STATE`,
 1 AS `BRANCH_ZIP`,
 1 AS `BRANCH_PHONE`,
 1 AS `LAST_UPDATED`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CDW_SAPP_D_CUSTOMER`
--

DROP TABLE IF EXISTS `CDW_SAPP_D_CUSTOMER`;
/*!50001 DROP VIEW IF EXISTS `CDW_SAPP_D_CUSTOMER`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CDW_SAPP_D_CUSTOMER` AS SELECT 
 1 AS `CUST_SSN`,
 1 AS `CUST_F_NAME`,
 1 AS `CUST_M_NAME`,
 1 AS `CUST_L_NAME`,
 1 AS `CUST_CC_NO`,
 1 AS `CUST_STREET`,
 1 AS `CUST_CITY`,
 1 AS `CUST_STATE`,
 1 AS `CUST_COUNTRY`,
 1 AS `CUST_ZIP`,
 1 AS `CUST_PHONE`,
 1 AS `CUST_EMAIL`,
 1 AS `LAST_UPDATED`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CDW_SAPP_D_TIME`
--

DROP TABLE IF EXISTS `CDW_SAPP_D_TIME`;
/*!50001 DROP VIEW IF EXISTS `CDW_SAPP_D_TIME`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CDW_SAPP_D_TIME` AS SELECT 
 1 AS `TIMEID`,
 1 AS `day`,
 1 AS `month`,
 1 AS `Quarter`,
 1 AS `year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `CDW_SAPP_F_CREDIT_CARD`
--

DROP TABLE IF EXISTS `CDW_SAPP_F_CREDIT_CARD`;
/*!50001 DROP VIEW IF EXISTS `CDW_SAPP_F_CREDIT_CARD`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CDW_SAPP_F_CREDIT_CARD` AS SELECT 
 1 AS `id`,
 1 AS `credit_card_no`,
 1 AS `TIMEID`,
 1 AS `ssn`,
 1 AS `branch_code`,
 1 AS `transaction_type`,
 1 AS `transaction_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (1,'United States');
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CreditCard`
--

DROP TABLE IF EXISTS `CreditCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CreditCard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `credit_card_no` varchar(16) NOT NULL,
  `branch_code` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `branch_code` (`branch_code`),
  KEY `customer` (`customer`),
  CONSTRAINT `CreditCard_ibfk_1` FOREIGN KEY (`branch_code`) REFERENCES `Branch` (`id`),
  CONSTRAINT `CreditCard_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `Customer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CreditCard`
--

LOCK TABLES `CreditCard` WRITE;
/*!40000 ALTER TABLE `CreditCard` DISABLE KEYS */;
INSERT INTO `CreditCard` VALUES (1,7,11,2020,'1671099454571238',4,1),(2,7,11,2020,'1671099451665626',4,2),(3,7,11,2020,'6926774293761424',6,3),(4,7,11,2020,'4257406673855039',9,4),(5,7,11,2020,'8555958079656359',5,5),(6,7,11,2020,'8539661891748824',1,6),(7,7,11,2020,'8555958071656466',5,7),(8,7,11,2020,'8555958073946071',5,8),(9,7,11,2020,'2555119812116849',2,9),(10,7,11,2020,'4257406674071919',9,10),(11,7,11,2020,'8539661896982544',1,11),(12,7,11,2020,'425740667268990',9,12),(13,7,11,2020,'4257406671046187',9,13),(14,7,11,2020,'855595807438988',5,14),(15,7,11,2020,'4257406672216782',9,15),(16,7,11,2020,'8527973862640227',8,16),(17,7,11,2020,'8527973861135368',8,17),(18,7,11,2020,'4257406673576510',9,18),(19,7,11,2020,'8527973868162568',8,19),(20,7,11,2020,'238014724523778',7,20);
/*!40000 ALTER TABLE `CreditCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `middle_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `ssn` varchar(9) NOT NULL,
  `zip` varchar(7) NOT NULL,
  `apt_no` varchar(7) NOT NULL,
  `street_name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` int(11) NOT NULL,
  `number_of_cc` int(11) NOT NULL,
  `LAST_UPDATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `state` (`state`),
  CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`state`) REFERENCES `State` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Norry','Mitch','Helena',280529077,'Norry@gmail.com','533379877','3116367','23F','7. Juli','New York',3,1,'2018-05-09 15:36:25'),(2,'Manda','Rupert','Bushore',416097713,'Manda@gmail.com','183688870','148800','68F','7. Juli','New York',14,1,'2018-05-09 15:36:25'),(3,'Saloma','Hyman','Bertasi',507521641,'Saloma@gmail.com','645387280','453344','3F','7. Juli','New York',22,1,'2018-05-09 15:36:25'),(4,'Cassandry','Rurik','Flower',855137964,'Cassandry@gmail.com','817435294','7980977','76F','7. Juli','New York',13,1,'2018-05-09 15:36:25'),(5,'Nicol','Isaac','Chadwick',431964264,'Nicol@gmail.com','90958236','6032381','11F','7. Juli','New York',19,1,'2018-05-09 15:36:25'),(6,'Marthena','Farley','Radman',73654274,'Marthena@gmail.com','302945804','7623926','76F','7. Juli','New York',13,1,'2018-05-09 15:36:25'),(7,'Kellyann','Farlie','Reena',438341260,'Kellyann@gmail.com','615600673','9935157','1F','7. Juli','New York',15,1,'2018-05-09 15:36:25'),(8,'Tomi','Stanton','Cam',487639636,'Tomi@gmail.com','728543360','5439129','30F','7. Juli','New York',3,1,'2018-05-09 15:36:25'),(9,'Licha','Nolan','Fauver',10746856,'Licha@gmail.com','44802142','3732983','58F','7. Juli','New York',21,1,'2018-05-09 15:36:25'),(10,'Adrian','Jone','Earl',106272983,'Adrian@gmail.com','495321808','9094355','75F','7. Juli','New York',11,1,'2018-05-09 15:36:25'),(11,'Heida','Delmer','Canada',370757618,'Heida@gmail.com','908056067','8772571','31F','7. Juli','New York',44,1,'2018-05-09 15:36:25'),(12,'Leese','Manfred','Lawry',958439817,'Leese@gmail.com','269198976','6632883','84F','7. Juli','New York',22,1,'2018-05-09 15:36:25'),(13,'Carole','Etan','Coffee',671816625,'Carole@gmail.com','938066022','8303289','26F','7. Juli','New York',7,1,'2018-05-09 15:36:25'),(14,'Vivien','Sheffy','Lowrie',534515842,'Vivien@gmail.com','106504367','872056','9F','7. Juli','New York',7,1,'2018-05-09 15:36:25'),(15,'Kippy','Virgil','Oran',857654869,'Kippy@gmail.com','455781494','2256335','50F','7. Juli','New York',47,1,'2018-05-09 15:36:25'),(16,'Nananne','Reamonn','Dare',850414596,'Nananne@gmail.com','587333156','5574907','80F','7. Juli','New York',28,1,'2018-05-09 15:36:25'),(17,'Rozella','Whitby','Miksen',938457387,'Rozella@gmail.com','741288646','7438328','89F','7. Juli','New York',5,1,'2018-05-09 15:36:25'),(18,'Myriam','Royce','Concha',906367591,'Myriam@gmail.com','744251199','2274947','68F','7. Juli','New York',44,1,'2018-05-09 15:36:25'),(19,'Goldina','Davide','Firmin',775989148,'Goldina@gmail.com','588953483','6092373','73F','7. Juli','New York',10,1,'2018-05-09 15:36:25'),(20,'Nikki','Elroy','Dempster',428272683,'Nikki@gmail.com','958884362','3499867','17F','7. Juli','New York',41,1,'2018-05-09 15:36:25');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `balance` float NOT NULL,
  `payments` float NOT NULL,
  `credit_card` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_card` (`credit_card`),
  CONSTRAINT `Payments_ibfk_1` FOREIGN KEY (`credit_card`) REFERENCES `CreditCard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (1,'1','2018',50679,0,1),(2,'4','2018',18875,0,1),(3,'3','2018',36096,0,1),(4,'2','2018',618,0,1),(5,'3','2018',16648,0,2),(6,'1','2018',24799,0,2),(7,'2','2018',18221,0,2),(8,'2','2018',806,0,3),(9,'3','2018',780,0,3),(10,'1','2018',5849,0,4),(11,'2','2018',25385,0,4),(12,'3','2018',1529,0,4),(13,'4','2018',5165,0,4),(14,'3','2018',29790,0,5),(15,'2','2018',32888,0,5),(16,'1','2018',18415,0,5),(17,'2','2018',7896,0,6),(18,'1','2018',18428,0,6),(19,'4','2018',8216,0,6),(20,'2','2018',6897,0,7),(21,'1','2018',28061,0,7),(22,'3','2018',18439,0,7),(23,'1','2018',13787,0,8),(24,'4','2018',3401,0,8),(25,'2','2018',45583,0,8),(26,'3','2018',5187,0,8),(27,'1','2018',15985,0,9),(28,'3','2018',11692,0,9),(29,'2','2018',6229,0,9),(30,'2','2018',9517,0,10),(31,'1','2018',2614,0,10),(32,'4','2018',15687,0,10),(33,'3','2018',8904,0,10),(34,'2','2018',50633,0,11),(35,'1','2018',32583,0,11),(36,'4','2018',13220,0,11),(37,'3','2018',25263,0,11),(38,'2','2018',20138,0,12),(39,'1','2018',32545,0,12),(40,'4','2018',14027,0,12),(41,'3','2018',19205,0,12),(42,'2','2018',15957,0,13),(43,'3','2018',43474,0,13),(44,'1','2018',38308,0,13),(45,'4','2018',4738,0,13),(46,'3','2018',53989,0,14),(47,'2','2018',36870,0,14),(48,'1','2018',24545,0,14),(49,'4','2018',9920,0,14),(50,'3','2018',26617,0,15),(51,'4','2018',25647,0,15),(52,'1','2018',22801,0,15),(53,'2','2018',18536,0,15),(54,'1','2018',31001,0,16),(55,'3','2018',57288,0,16),(56,'2','2018',9942,0,16),(57,'4','2018',7499,0,16),(58,'3','2018',23516,0,17),(59,'1','2018',30989,0,17),(60,'2','2018',20740,0,17),(61,'4','2018',5262,0,17),(62,'3','2018',39162,0,18),(63,'1','2018',29572,0,18),(64,'4','2018',30899,0,18),(65,'2','2018',42637,0,18),(66,'3','2018',24159,0,19),(67,'1','2018',2512,0,19),(68,'2','2018',24995,0,19),(69,'2','2018',13505,0,20),(70,'3','2018',27190,0,20),(71,'1','2018',11455,0,20),(72,'4','2018',26292,0,20);
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `State`
--

DROP TABLE IF EXISTS `State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `State` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `State_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `Countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State`
--

LOCK TABLES `State` WRITE;
/*!40000 ALTER TABLE `State` DISABLE KEYS */;
INSERT INTO `State` VALUES (1,'Alabama',1),(2,'Alaska',1),(3,'Arizona',1),(4,'Arkansas',1),(5,'California',1),(6,'Colorado',1),(7,'Connecticut',1),(8,'Delaware',1),(9,'Florida',1),(10,'Georgia',1),(11,'Hawaii',1),(12,'Idaho',1),(13,'Illinois',1),(14,'Indiana',1),(15,'Iowa',1),(16,'Kansas',1),(17,'Kentucky',1),(18,'Louisiana',1),(19,'Maine',1),(20,'Maryland',1),(21,'Massachusetts',1),(22,'Michigan',1),(23,'Minnesota',1),(24,'Mississippi',1),(25,'Missouri',1),(26,'Montana',1),(27,'Nebraska',1),(28,'Nevada',1),(29,'New Hampshire',1),(30,'New Jersey',1),(31,'New Mexico',1),(32,'New York',1),(33,'North Carolina',1),(34,'North Dakota',1),(35,'Ohio',1),(36,'Oklahoma',1),(37,'Oregon',1),(38,'Pennsylvania',1),(39,'Rhode Island',1),(40,'South Carolina',1),(41,'South Dakota',1),(42,'Tennessee',1),(43,'Texas',1),(44,'Utah',1),(45,'Vermont',1),(46,'Virginia',1),(47,'Washington',1),(48,'West Virginia',1),(49,'Wisconsin',1),(50,'Wyoming',1);
/*!40000 ALTER TABLE `State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_no` int(11) NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `transaction_value` double NOT NULL,
  `transaction_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_card_no` (`credit_card_no`),
  CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`credit_card_no`) REFERENCES `CreditCard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;
