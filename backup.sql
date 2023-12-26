-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dacemart
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `prodid` int NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `UKorprdqi2kgemfr1l5utdeje3o` (`custid`,`prodid`),
  KEY `FKfh2bssxmgq9jblm2x79ftpo9a` (`prodid`),
  CONSTRAINT `FKfh2bssxmgq9jblm2x79ftpo9a` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`),
  CONSTRAINT `FKsigf5brtgghasucorb3kaqxda` FOREIGN KEY (`custid`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (12,2,11,1),(21,3,1,1),(41,1,25,2),(42,1,26,1),(43,1,28,1),(44,1,23,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `catmaster_id` int NOT NULL AUTO_INCREMENT,
  `cat_img_path` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `childflag` bit(1) NOT NULL,
  `parent_catid` int NOT NULL,
  PRIMARY KEY (`catmaster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'/Images/Books/book.jpg','Books',_binary '',0),(2,'/Images/HomeAppliances/homeappliance.jpg','HomeAppliances',_binary '',0),(3,'/Images/Sports/sport.jpg','Sports',_binary '\0',0),(4,'/Images/WomenAccessories/womenaccessorie.jpg','WomenAccessories',_binary '',0),(5,'/Images/Electronics/electronic.jpg','Electronics',_binary '',0),(6,'/Images/HomeAppliances/Referigerators/refrigerator.jpg','Refrigerators',_binary '\0',2),(7,'/Images/HomeAppliances/WashingMachines/washingmachine.jpg','WashingMachines',_binary '',2),(8,'/Images/HomeAppliances/WashingMachines/fullyautomated.jpg','FullyAutomated',_binary '\0',7),(9,'/Images/HomeAppliances/WashingMachines/semiautomated.jpg','SemiAutomated',_binary '\0',7),(10,'/Images/Electronics/Mobiles/mobile.jpg','Mobiles',_binary '\0',5),(11,'/Images/Electronics/Cameras/camera.jpg','Cameras',_binary '\0',5),(12,'/Images/WomenAccessories/jewellery.jpg','Jewellery',_binary '\0',4),(13,'/Images/WomenAccessories/makeupkit.jpg','Makeupkit',_binary '\0',4),(14,'/Images/Books/fictional.jpg','Fictional',_binary '\0',1),(15,'/Images/Books/educational.jpg','Education',_binary '\0',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `config_id` int NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_details`
--

DROP TABLE IF EXISTS `config_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_details` (
  `config_detailsid` int NOT NULL AUTO_INCREMENT,
  `configid` int NOT NULL,
  `config_details` varchar(255) NOT NULL,
  `prodid` int NOT NULL,
  PRIMARY KEY (`config_detailsid`),
  KEY `FKlr89oqlvfmcbygh5khantcfbk` (`prodid`),
  KEY `FK500bqy0qytveomsix73dcf1td` (`configid`),
  CONSTRAINT `FK500bqy0qytveomsix73dcf1td` FOREIGN KEY (`configid`) REFERENCES `config` (`config_id`),
  CONSTRAINT `FKlr89oqlvfmcbygh5khantcfbk` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_details`
--

LOCK TABLES `config_details` WRITE;
/*!40000 ALTER TABLE `config_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `card_holder` bit(1) NOT NULL,
  `cust_address` varchar(255) NOT NULL,
  `cust_email` varchar(255) DEFAULT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_password` varchar(10) NOT NULL,
  `cust_phone` varchar(10) NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,_binary '','11/38, Guru kripa chs ,Dombivli','vhtankariya101@gmail.com','Vivek Tankariya','123456789','9769842870',150),(2,_binary '\0','Mumbai','Rakesh@gmail.com','Rakesh Junjunwala','123456789','8527419635',0),(3,_binary '','Badlapur','Hrishi@gmail.com','Hrishikesh Khetale','123456789','1478523698',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `delivery_charge` double NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `tax` double NOT NULL,
  `total_amt` double NOT NULL,
  `total_bill` double NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `FKi8d5akvcsoljlibnylg6ds9yw` (`custid`),
  CONSTRAINT `FKi8d5akvcsoljlibnylg6ds9yw` FOREIGN KEY (`custid`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_details`
--

DROP TABLE IF EXISTS `invoice_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_details` (
  `invoice_dt_id` int NOT NULL AUTO_INCREMENT,
  `card_holder_price` double NOT NULL,
  `invoiceid` int NOT NULL,
  `mrp` double NOT NULL,
  `points_redeem` int NOT NULL,
  `prodid` int NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invoice_dt_id`),
  KEY `FK9fs3v7h66y1xemy0cl0w770rn` (`prodid`),
  KEY `FKj26286qv1hds18blkj46tjiy0` (`invoiceid`),
  CONSTRAINT `FK9fs3v7h66y1xemy0cl0w770rn` FOREIGN KEY (`prodid`) REFERENCES `product` (`prod_id`),
  CONSTRAINT `FKj26286qv1hds18blkj46tjiy0` FOREIGN KEY (`invoiceid`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_details`
--

LOCK TABLES `invoice_details` WRITE;
/*!40000 ALTER TABLE `invoice_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `deliverydate` date DEFAULT NULL,
  `invoiceid` int NOT NULL,
  `order_date` date DEFAULT NULL,
  `shipping_add` varchar(255) DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKn28v6x9tuof65nenqq790nyg7` (`invoiceid`),
  KEY `FK89iy70txskld506d7n1cfpmpx` (`cust_id`),
  CONSTRAINT `FK89iy70txskld506d7n1cfpmpx` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKn28v6x9tuof65nenqq790nyg7` FOREIGN KEY (`invoiceid`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `card_holder_price` double NOT NULL,
  `catmasterid` int NOT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `inventory_quantity` int NOT NULL,
  `mrp_price` double NOT NULL,
  `offer_price` double NOT NULL,
  `points_redeem` int NOT NULL,
  `prod_long_desc` varchar(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_short_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `FK6nao73b9orvohpdshp5so5sii` (`catmasterid`),
  CONSTRAINT `FK6nao73b9orvohpdshp5so5sii` FOREIGN KEY (`catmasterid`) REFERENCES `category` (`catmaster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,34000,6,'/Images/HomeAppliances/Referigerators/whirlpool 184 L.jpg',100,37000,33000,50,'The capillary, which transfers refrigerant from the compressor to the freezer, is enclosed in cold gas from all sides, owing to its Insulated Capillary technology.','Whirlpool 184 L Direct Cool Single Door ','Whirlpool 184 L Direct Cool Single Door 2 Star Refrigerator  (Sapphire, 205 WDE PRM 2S SAPPHIRE BLOOM-Z)'),(2,56000,6,'/Images/HomeAppliances/Referigerators/samsung 183 L direct cool single door.jpg',70,62000,56000,56000,'\nThe Digital Inverter Compressor in this refrigerator tweaks its speed automatically in response to the requirement for chilling. This refrigerator is protected from power fluctuations because it operates with a wide voltage range of 100 V to up to 300 V.','SAMSUNG 183 L Direct Cool Single Door','SAMSUNG 183 L Direct Cool Single Door 2 Star Refrigerator with Digital Inverter  (Gray Silver, RR20C2412GS/NL)'),(4,76000,6,'/Images/HomeAppliances/Referigerators/godrej 670 L frost Free french door bottom mount refrigerator.jpg',56,80000,76000,76000,'The Godrej Refrigerator redefines excellence in food storage. With its exceptional features like rapid cooling, convertible zones, intelligent temperature control, and customisable storage options, it offers a superior experience.','Godrej 670 L Frost Free French Door Bottom Mount Refrigerator','Godrej 670 L Frost Free French Door Bottom Mount Refrigerator  (Inox Steel, RM EONVELVET 685 RIT IN ST)'),(5,43000,6,'/Images/HomeAppliances/Referigerators/whirlpool 231 L frost free double door 2 star refrigerator.jpg',34,46000,43000,43000,'The Whirlpool 231 L Frost Free Double Door Convertible Refrigerator, which has amazing characteristics, can keep your food and beverages tasty and safe to consume.','Whirlpool 231 L Frost Free Double Door 2 Star Refrigerator ','Whirlpool 231 L Frost Free Double Door 2 Star Refrigerator  (Magnum Steel, IF INV ELT DF278 Magnum Steel(2S)-TL)'),(6,65000,8,'/Images/HomeAppliances/WashingMachines/motorola fully.jpg',100,70000,65000,65000,'Doing your laundry can be hectic. Boasting TruWifi Technology, this washing machine can be controlled from anywhere using your smartphone. Its TruSmart Sensors and Renesas Chipset ensure that the temperature, water level, foam level, weight.','Motorola 10.5 kg 5 Star Fully Automatic','Motorola 10.5 kg 5 Star Smart Wi-Fi Enabled Inverter Technology Fully Automatic Front Load with In-built Heater Grey  (105FLIWBM5DG)'),(7,45000,8,'/Images/HomeAppliances/WashingMachines/samsung fully.jpg',15,47000,45000,45000,'This technology generates streams of water from the centre of the pulsator to prevent the clothes from settling on it and getting damaged. The diamond drum of this washing machine is gentle on clothes.','SAMSUNG 7 kg Diamond drum Fully Automatic','SAMSUNG 7 kg Diamond drum Fully Automatic Top Load Washing Machine Silver  (WA70A4002GS/TL)'),(8,56000,8,'/Images/HomeAppliances/WashingMachines/lg fully automatic.jpg',10,60000,56000,56000,'You can get fresh, clean, and stain-free clothes with the LG T70SKSF1Z 7 kg Fully Automatic Top-loading Washing Machine.It provides simple, efficient.This washing machine uses Smart Inverter technology to reduce wasted operations','LG 7kg Top Load Washing Machine ','LG 7 kg with Smart Diagnosis and Smart Inverter Fully Automatic Top Load Washing Machine Silver  (T70SKSF1Z)'),(9,43000,8,'/Images/HomeAppliances/WashingMachines/realme semi.jpg',18,45000,43000,43000,'You can wash your clothes meticulously with the help of the Realme 7 kg Washing Machine. With up to 1400 RPM spin cycle and air dry circulation through the lid, this washing machine can quickly dry your clothes even during monsoons.','realme TechLife 7 kg  Washing Machine White','realme TechLife 7 kg 5 Star rating Semi Automatic Top Load Washing Machine White, Black  (RMSA705NNNDW)'),(10,65000,9,'/Images/HomeAppliances/WashingMachines/samsung semi.jpg',100,66000,65000,65000,'Wear clean clothes every day by washing them in the Samsung 6 kg Semi-automatic Top-load Washing Machine. This appliance can wash your clothes effectively while using less power.','SAMSUNG 6 kg 5 star Washing Machine White ','SAMSUNG 6 kg 5 star,Air Turbo Drying Semi Automatic Top Load Washing Machine White, Grey, Purple  (WT60R2000LL/TL)'),(11,28000,9,'/Images/HomeAppliances/WashingMachines/realme semi.jpg',30,30000,28000,28000,'The MarQ by Flipkart semi-automatic top-load washing machine (6 kg, 5-star rating) is an extremely durable and highly energy-efficient washing machine engineered for Indian conditions.','MarQ Washing Machine','MarQ by Flipkart 6 kg 5 Star Rating Semi Automatic Top Load Washing Machine White, Maroon  (MQSA60H5M)\n'),(12,35999,10,'/Images/Electronics/Mobiles/nothing.jpeg',100,41000,35000,35000,'The Nothing Phone (1) boasts an elegant style that comes to life with beautiful symbols to enable an enriched connection between you and your device.','Nothing Phone','Nothing Phone (1) (White, 256 GB)  (8 GB RAM)'),(13,67999,10,'/Images/Electronics/Mobiles/apple.jpeg',104,70000,67999,67999,'iPhone 14. boasts an advanced dual-camera system that allows you to click mesmerising pictures with immaculate clarity. Furthermore, the lightning-fast A15 Bionic chip allows for seamless multitasking, elevating your performance to a new dimension.','APPLE iPhone 14','APPLE iPhone 14 (Midnight, 128 GB)'),(14,184999,10,'/Images/Electronics/Mobiles/samsung.jpeg',10,190000,190000,190000,'Enjoy seamless connectivity and uninterrupted streaming on this foldable, light and compact Samsung Galaxy Z Fold5 smartphone. Turn your phone into a mobile studio with the 30x Space and show your subjects what they see with the Dual Preview Mode','SAMSUNG Galaxy Z Fold5','SAMSUNG Galaxy Z Fold5 (Icy Blue, 1 TB)  (12 GB RAM)t'),(15,33490,11,'/Images/Electronics/Cameras/canon.jpg',100,35000,33490,33490,'If you are a photography enthusiast, then the Canon EOS 3000D DSLR Camera is a must-have gadget. Featuring an 18 MP (APS-C) CMOS sensor and the DIGIC 4+ imaging processor.','Canon EOS 3000D DSLR','Canon EOS 3000D DSLR Camera 1 Camera Body, 18 - 55 mm Lens  (Black)'),(16,27490,11,'/Images/Electronics/Cameras/hero.jpg',100,29000,27490,27490,'You can capture high-quality photos with the help of the GoPro HERO9 Camera. It has a versatile design and can take photographs of a high calibre.','GoPro Hero9 ','GoPro Hero9 Sports and Action Camera  (Black, 20 MP)t'),(17,81990,11,'/Images/Electronics/Cameras/sony.jpg',10,82000,81990,81990,'Click breathtaking photos and blur-free videos with this Sony ?7 II DSLR camera - it provides you immense freedom to reinvent your photography skills.','SONY Alpha Full Frame','SONY Alpha Full Frame ILCE-7M2K/BQ IN5 Mirrorless Camera Body with 28 - 70 mm Lens  (Black)'),(18,3000,12,'/Images/WomenAccessories/Jewellery/neckles.jpg',100,3500,3000,3000,'NULL','Necklace With Earrings ','Necklace With Earrings For Women & Girls Beads Gold-plated Plated Alloy Necklace Set'),(19,2000,12,'/Images/WomenAccessories/Jewellery/bangle.jpg',100,2100,2000,2000,'NULL','Example Product','Copper Pearl Gold-plated Bangle Set  (Pack of 2)'),(20,6000,12,'/Images/WomenAccessories/Jewellery/manglsutra.jpg',100,7000,6000,6000,'NULL','manglsutra','Brado Jewellery Combo of 4 Traditional 30 inch and 18 inch Mangalsutra for Women Brass Mangalsutra'),(21,300,13,'/Images/WomenAccessories/Makeupkit/lipstick.jpg',100,350,300,300,'NULL','Lipstick','Mamaearth Soft Matte Long Stay Lipstick with Jojoba Oil & Vitamin E for 12 Hour Long Stay  (Honey Blush, 3.5 g)'),(22,700,13,'/Images/WomenAccessories/Makeupkit/eyeliner.jpg',100,750,700,700,'NULL','Eyeliner','SUGAR POP Matte Eyeliner - 01 Black 4.5 ml  (Black)'),(23,900,13,'/Images/WomenAccessories/Makeupkit/foundation.jpg',100,1000,900,900,'NULL','Liquid Foundation','Lakmé Perfecting Liquid Foundation  (Natural Shell, 27 ml)'),(24,1000,3,'/Images/Sports/bat.jpg',100,1100,1100,1100,'NULL','Plastic Cricket Bat','LYCAN Junior Cricket Bat Size 3 For Age Group 8 Years PVC/Plastic Cricket Bat  (400 g)'),(25,1500,3,'/Images/Sports/badminton.jpg',100,2000,1500,1500,'NULL','BADMINTON RACKET','\nHipkoo Sports EXCELLENT BADMINTON RACKET (SET OF 2) Blue Strung Badminton Racquet  (Pack of: 2, 95 g)'),(26,2500,3,'/Images/Sports/football.jpg',100,3000,2500,2500,'NULL','Football','Dimension7 FIFA-Ranger Football - Size: 5  (Pack of 1, White'),(27,2563,15,'/Images/Books/indian mythology.jpg',100,3000,2563,2563,'This gift edition features the greatest mythological ','Indian Mythology ','Unusual Tales from Indian Mythology  (English, Paperback, Murty Sudha)'),(28,1500,15,'/Images/Books/Educational/akshar-sulekh.jpg',100,2000,1500,1500,'The book teaches little children how to read & write the Hindi alphabet.','AKSHAR SULEKH ','\nAKSHAR SULEKH - HINDI WRITING BOOK FOR KIDS  (Hindi, Paperback, EMPIRE PUBLICATIONS INDIA PVT LTD)'),(29,1800,15,'/Images/Books/Educational/oxford-english-mini-dictionary.jpg',100,2000,1800,1800,'Vocabulary is something that can be improved all the time. The more words a person knows in a language','Oxford English Mini Dictionary 7th Edition','\nOxford English Mini Dictionary is a small dictionary that can fit snugly into a bag'),(30,1800,14,'/Images/Books/Fictional/arbian nights.jpg',100,2000,1800,1800,'Vocabulary is something that can be improved all the time. The more words a person knows in a language','Arbian nights','\nOxford English Mini Dictionary is a small dictionary that can fit snugly into a bag');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-03 12:12:22
