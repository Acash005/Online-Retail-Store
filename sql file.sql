CREATE DATABASE  IF NOT EXISTS `royalmart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `royalmart`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: royalmart
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_id` int NOT NULL AUTO_INCREMENT,
  `ref_username` varchar(100) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`),
  KEY `ref_username` (`ref_username`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ref_username`) REFERENCES `login_credentials` (`Username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (101,'Amory','Michaelina','Raiker','305 692 0894'),(102,'Shandra','Binky','Shapiro','945 109 0602'),(103,'Rebe','Jeff','Harkin','264 209 6482'),(104,'Maurine','Thayne','Meynell','985 263 7528'),(105,'Cullan','Kahaleel','Kenningham','105 922 9275'),(106,'Phil','Tina','Georgeon','347 656 5749'),(107,'Con','Nicolea','Blagdon','374 950 2789'),(108,'Monica','Jemima','Cramer','686 102 6596'),(109,'Sloan','Manfred','Ledram','655 705 2717'),(110,'Cathee','Rodge','Dewbury','238 755 8995'),(111,'Honor','Marybeth','Talbot','858 372 7466'),(112,'Patricio','Alameda','Bollon','198 965 9095'),(113,'Eda','Osborne','Pezey','113 400 2986'),(114,'Elisabetta','Viki','Braemer','774 158 8945'),(115,'Roosevelt','Tabb','Braams','411 341 0209'),(116,'Konstantine','Connie','Langan','794 867 4335'),(117,'Russ','Barclay','Brydone','598 967 0975'),(118,'Ula','Julieta','Poynton','827 374 9089'),(119,'Lowe','Letta','Motion','830 369 3928'),(120,'Curry','Reeba','MacNeilage','236 304 2146'),(121,'Gretel','Drucy','Guerin','217 325 8640'),(122,'Grannie','Cross','Aveyard','319 324 2959'),(123,'Barbara-anne','Gage','Roscamps','754 707 2439'),(124,'Pepito','Zack','Kuhlmey','672 588 0866'),(125,'Diandra','Audrye','Coddrington','820 645 4397'),(126,'Mollee','Lynne','Shillaker','970 215 6087'),(127,'Raynell','Teddie','Kubas','910 322 5966'),(128,'Emelen','Arie','Wilman','845 316 2163'),(129,'Daveta','Leone','Works','142 398 6607'),(130,'Davy','Hildy','Goolden','587 531 5328'),(131,'Killie','Doretta','Bowdler','187 223 1178'),(132,'Emery','Merell','Magnus','558 929 3530'),(133,'Raquel','Norine','Gonzalvo','683 705 0877'),(134,'Aristotle','Cyrus','Capinetti','674 906 8397'),(135,'Randene','Chrissy','Cronkshaw','409 388 9695'),(136,'Darryl','Warden','Duell','392 229 7965'),(137,'Noach','Clemmie','Ringwood','255 681 4051'),(138,'Reg','Janel','Collishaw','778 623 9272'),(139,'Raven','Fredi','Sibille','150 807 4250'),(140,'Zebulen','Carver','McNevin','369 110 7685'),(141,'Sibylla','Queenie','Fusedale','668 718 2551'),(142,'Xymenes','Verney','Whiteford','537 772 2698'),(143,'Gerladina','Titus','Klejin','807 910 8496'),(144,'Sabrina','Dion','McLucas','651 144 2062'),(145,'Grant','Arlan','Wincott','615 624 5759'),(146,'Mackenzie','Denney','Reading','761 719 6137'),(147,'Matti','Trstram','Pinkie','136 505 5701'),(148,'Jaquith','Eldin','Benadette','103 686 5933'),(149,'Amble','Torrance','Piatek','298 172 0399'),(150,'Arluene','Durante','Figurski','404 736 2018'),(151,'Laurene','Chalmers','Hanington','505 534 4583'),(152,'Rem','Orson','MacIlhargy','623 303 8083'),(153,'Brose','Tedman','Dumingo','105 843 4067'),(154,'Jobina','Arri','Simao','664 808 4575'),(155,'Anson','Alan','Dulin','895 655 5491'),(156,'Auria','Trudey','Dennes','573 843 1969'),(157,'Mirella','Ardyth','Reidshaw','505 256 0986'),(158,'Serge','Ninette','Shrimpton','658 159 6624'),(159,'Adora','Farrand','McPeice','398 629 7839'),(160,'Yvonne','Zacharias','Szymanowicz','782 121 4680'),(161,'Rinaldo','Elizabet','Tills','809 286 6082'),(162,'Petey','Leicester','Sabater','674 412 0037'),(163,'Sheppard','Feliza','Doche','865 983 5727'),(164,'Ianthe','Perri','Kliement','563 211 1460'),(165,'Arny','Byrle','Shevels','223 679 8473'),(166,'Clemente','Karina','Stidson','835 811 2000'),(167,'Gerta','Hardy','Falloon','159 227 8078'),(168,'Bessy','Goran','Hartmann','901 878 4188'),(169,'Eduard','Abeu','Ludvigsen','228 134 6897'),(170,'Abel','Westbrook','Shovelin','904 181 6835'),(171,'Darsey','Charity','de Almeida','942 253 1535'),(172,'Zarah','Bliss','Clibbery','510 929 9605'),(173,'Harley','Lotte','Turfrey','239 639 0167'),(174,'Yul','Lon','Mahy','279 456 5408'),(175,'Fawn','Anabel','Blagburn','747 834 7467'),(176,'Corine','Mireille','Hancox','194 351 8942'),(177,'Mitch','Devlin','Polk','782 615 2551'),(178,'Willy','Brent','Clemits','775 816 8530'),(179,'Maybelle','Arlinda','Hartshorn','959 881 0482'),(180,'Cathie','Sylvester','Ornells','573 950 1520'),(181,'Kahaleel','Nial','Fanstone','632 120 2333'),(182,'Salvatore','Bobbe','Placstone','408 734 6305'),(183,'Kennedy','Rooney','Neilus','187 446 4171'),(184,'Bessie','Leyla','Prose','840 716 6396'),(185,'Catharina','Katrinka','Lamyman','897 268 5589'),(186,'Danice','Xenos','Jiroutek','818 494 7253'),(187,'Crystie','Andy','Pershouse','647 166 6788'),(188,'Carmel','Fanya','Bordone','495 798 9841'),(189,'Ellsworth','Eldin','Soro','827 203 3374'),(190,'Cody','Phillie','Balaison','324 764 4216'),(191,'Donall','Brennen','Arnaudet','933 450 8813'),(192,'Chariot','Kean','Raulstone','699 277 4652'),(193,'Alasdair','Rea','Reade','615 628 5904'),(194,'Gabriello','Robenia','McCutcheon','970 116 1724'),(195,'Irene','Datha','Pllu','391 617 9188'),(196,'Pernell','Vi','Klement','279 701 0561'),(197,'Fonsie','Melody','Dore','422 436 8205'),(198,'Kirbee','Casar','Wellings','473 658 2055'),(199,'Estell','Harlin','Crampsey','500 777 5383'),(200,'Darelle','Tyrus','Trigwell','972 760 7129'),(201,'ab','aa','bb','123456789');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Sno` int NOT NULL,
  `custID` int DEFAULT NULL,
  `PID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `PNAME` varchar(45) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`Sno`),
  KEY `custID_idx` (`custID`),
  KEY `PID_idx` (`PID`),
  CONSTRAINT `custID` FOREIGN KEY (`custID`) REFERENCES `customer` (`Cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PID` FOREIGN KEY (`PID`) REFERENCES `product` (`P_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,901,4,2,'Pineapple - Regular',NULL,200),(2,901,11,3,'Pork - Belly Fresh',NULL,200);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `ref_username` varchar(100) DEFAULT NULL,
  `Wallet` int DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `StreetNo` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `PhoneNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cust_id`),
  KEY `ref_username` (`ref_username`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ref_username`) REFERENCES `login_credentials` (`Username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (901,'Michaelina','Raiker','Amory',110809,'2/24/1990','Y-962','Miami','Porto',753827,'305 692 0894'),(902,'Binky','Shapiro','Shandra',28311,'5/17/1990','B-074','Zhangyang','Aveiro',740356,'945 109 0602'),(903,'Jeff','Harkin','Rebe',108965,'2/24/1990','W-571','Kupchino','Porto',696247,'264 209 6482'),(904,'Thayne','Meynell','Maurine',113615,'3/29/1990','X-833','Ulaan Khat','Melaka',717100,'985 263 7528'),(905,'Kahaleel','Kenningham','Cullan',66369,'5/17/1990','W-735','Jianshe','Porto',738444,'105 922 9275'),(906,'Tina','Georgeon','Phil',25559,'3/29/1990','X-722','Babahoyo','Aveiro',435006,'347 656 5749'),(907,'Nicolea','Blagdon','Con',42505,'2/24/1990','V-616','Bucheon-si','Melaka',432826,'374 950 2789'),(908,'Jemima','Cramer','Monica',65433,'2/24/1990','Z-511','Jinping','Porto',994063,'686 102 6596'),(909,'Manfred','Ledram','Sloan',57477,'11/14/1990','I-453','Barranco de Loba','Aveiro',967831,'655 705 2717'),(910,'Rodge','Dewbury','Cathee',31023,'4/16/1990','P-228','Malapaubhara','Csongrád',781259,'238 755 8995'),(911,'Marybeth','Talbot','Honor',90149,'5/17/1990','C-774','Chor','Midi-Pyrénées',769597,'858 372 7466'),(912,'Alameda','Bollon','Patricio',77651,'7/19/1990','R-774','Quezon City','Veracruz Llave',786775,'198 965 9095'),(913,'Osborne','Pezey','Eda',93422,'2/24/1990','R-970','Borovlyany','New Mexico',690286,'113 400 2986'),(914,'Viki','Braemer','Elisabetta',52185,'2/24/1990','G-717','Itéa','Leiria',110518,'774 158 8945'),(915,'Tabb','Braams','Roosevelt',1276,'12/13/1990','Q-946','Bakalang','New Mexico',205313,'411 341 0209'),(916,'Connie','Langan','Konstantine',69514,'10/31/1990','R-247','Lete','Leiria',388046,'794 867 4335'),(917,'Barclay','Brydone','Russ',56989,'1/24/2023','Q-623','Kirovgrad','Midi-Pyrénées',245842,'598 967 0975'),(918,'Julieta','Poynton','Ula',71619,'1/29/2023','P-358','Rosario de Mora','Veracruz Llave',262626,'827 374 9089'),(919,'Letta','Motion','Lowe',6352,'6/25/1990','I-170','Newton','Scotland',455337,'830 369 3928'),(920,'Reeba','MacNeilage','Curry',79747,'3/13/1990','E-235','Catungawan Sur','Leiria',86617,'236 304 2146'),(921,'Drucy','Guerin','Gretel',63967,'9/26/1990','O-284','Nanton','Midi-Pyrénées',595437,'217 325 8640'),(922,'Cross','Aveyard','Grannie',63274,'1/26/2023','A-802','Cane','Veracruz Llave',374847,'319 324 2959'),(923,'Gage','Roscamps','Barbara-anne',98434,'6/29/1990','K-602','Sekirnik','Scotland',255008,'754 707 2439'),(924,'Zack','Kuhlmey','Pepito',97777,'8/29/1990','D-097','Bongao','New Mexico',259519,'672 588 0866'),(925,'Audrye','Coddrington','Diandra',63596,'3/31/1990','S-418','Kolpny','Leiria',112074,'820 645 4397'),(926,'Lynne','Shillaker','Mollee',83169,'9/13/1990','H-242','Tianzishan','New Mexico',220258,'970 215 6087'),(927,'Teddie','Kubas','Raynell',123804,'2/18/1990','H-402','Chayek','Leiria',347385,'910 322 5966'),(928,'Arie','Wilman','Emelen',34418,'5/17/1990','R-129','Veselí nad Moravou','New Mexico',812309,'845 316 2163'),(929,'Leone','Works','Daveta',21917,'10/16/1990','F-604','Klju?','Leiria',735834,'142 398 6607'),(930,'Hildy','Goolden','Davy',86489,'5/30/1990','J-860','Galapa','Leiria',196270,'587 531 5328'),(931,'Doretta','Bowdler','Killie',33678,'11/26/1990','E-775','Pazari?','Midi-Pyrénées',649878,'187 223 1178'),(932,'Merell','Magnus','Emery',57322,'8/20/1990','N-994','Mafra','Veracruz Llave',532464,'558 929 3530'),(933,'Norine','Gonzalvo','Raquel',45647,'9/24/1990','W-079','Wojciechów','Scotland',939779,'683 705 0877'),(934,'Cyrus','Capinetti','Aristotle',29157,'1/22/2023','H-378','Krajan Gajihan','New Mexico',69711,'674 906 8397'),(935,'Chrissy','Cronkshaw','Randene',113497,'5/17/1990','R-671','Jiaobei','Leiria',50721,'409 388 9695'),(936,'Warden','Duell','Darryl',74674,'12/28/1990','K-002','Zárate','New Mexico',112725,'392 229 7965'),(937,'Clemmie','Ringwood','Noach',91840,'6/18/1990','C-009','Yajiwa','Leiria',490933,'255 681 4051'),(938,'Janel','Collishaw','Reg',12892,'5/17/1990','A-110','Chaery?ng-?p','Aveiro',479079,'778 623 9272'),(939,'Fredi','Sibille','Raven',8552,'5/22/1990','A-281','Trnava','Veracruz Llave',408028,'150 807 4250'),(940,'Carver','McNevin','Zebulen',95544,'2/23/1990','S-022','Szeged','Csongrád',441111,'369 110 7685'),(941,'Queenie','Fusedale','Sibylla',15793,'7/17/1990','S-664','Millau','Midi-Pyrénées',624078,'668 718 2551'),(942,'Verney','Whiteford','Xymenes',76622,'6/22/1990','C-387','Petrolera','Veracruz Llave',904963,'537 772 2698'),(943,'Titus','Klejin','Gerladina',86619,'3/15/1990','O-050','Dzüyl','Porto',537286,'807 910 8496'),(944,'Dion','McLucas','Sabrina',25377,'5/17/1990','X-132','Cartí Suitupo','Aveiro',482316,'651 144 2062'),(945,'Arlan','Wincott','Grant',20915,'1/4/2023','H-521','Cisoka','Veracruz Llave',324873,'615 624 5759'),(946,'Denney','Reading','Mackenzie',65852,'5/17/1990','Z-830','Nikol’skoye','Melaka',173595,'761 719 6137'),(947,'Trstram','Pinkie','Matti',96033,'5/17/1990','N-629','Cestas','Porto',338141,'136 505 5701'),(948,'Eldin','Benadette','Jaquith',59515,'5/20/1990','S-328','In?ija','Veracruz Llave',861084,'103 686 5933'),(949,'Torrance','Piatek','Amble',89501,'6/13/1990','O-243','Nuwara Eliya','Québec',324097,'298 172 0399'),(950,'Durante','Figurski','Arluene',32650,'12/25/1990','N-698','Tharyarwady','Melaka',481134,'404 736 2018'),(951,'Chalmers','Hanington','Laurene',58100,'5/20/1990','T-123','Santa Fe','New Mexico',842359,'505 534 4583'),(952,'Orson','MacIlhargy','Rem',70043,'5/20/1990','Z-267','Baraçais','Leiria',253162,'623 303 8083'),(953,'Tedman','Dumingo','Brose',64112,'3/14/1990','T-443','Saronída','',532756,'105 843 4067'),(954,'Arri','Simao','Jobina',85934,'1/13/2023','K-102','Kyaukse','Veracruz Llave',187299,'664 808 4575'),(955,'Alan','Dulin','Anson',79654,'3/19/1990','W-187','Mandaon','Aveiro',157506,'895 655 5491'),(956,'Trudey','Dennes','Auria',23180,'5/20/1990','K-983','Lucas','Veracruz Llave',208637,'573 843 1969'),(957,'Ardyth','Reidshaw','Mirella',57483,'5/20/1990','R-820','Albuquerque','New Mexico',104957,'505 256 0986'),(958,'Ninette','Shrimpton','Serge',93746,'5/20/1990','S-252','Sapu Padidu','Québec',55650,'658 159 6624'),(959,'Farrand','McPeice','Adora',74815,'12/29/1990','T-304','Concepción','Québec',243155,'398 629 7839'),(960,'Zacharias','Szymanowicz','Yvonne',118383,'4/21/1990','N-796','Berlin','Berlin',126024,'782 121 4680'),(961,'Elizabet','Tills','Rinaldo',26946,'4/21/1990','T-815','Itzig','Québec',553551,'809 286 6082'),(962,'Leicester','Sabater','Petey',97484,'11/23/1990','K-495','Zvishavane','Csongrád',878488,'674 412 0037'),(963,'Feliza','Doche','Sheppard',38910,'10/13/1990','U-615','Novosineglazovskiy','Midi-Pyrénées',593602,'865 983 5727'),(964,'Perri','Kliement','Ianthe',83297,'4/21/1990','O-374','?oka','Veracruz Llave',233789,'563 211 1460'),(965,'Byrle','Shevels','Arny',62992,'11/26/1990','A-172','?abia Wola','Csongrád',69579,'223 679 8473'),(966,'Karina','Stidson','Clemente',63578,'8/27/1990','G-722','Pavlohrad','Midi-Pyrénées',163091,'835 811 2000'),(967,'Hardy','Falloon','Gerta',80894,'2/18/1990','Q-106','Slatina','Veracruz Llave',132689,'159 227 8078'),(968,'Goran','Hartmann','Bessy',42630,'2/18/1990','W-305','Little Current','Ontario',78590,'901 878 4188'),(969,'Abeu','Ludvigsen','Eduard',37911,'9/14/1990','M-564','Jingyao','Csongrád',317419,'228 134 6897'),(970,'Westbrook','Shovelin','Abel',94522,'4/21/1990','O-770','Ban Ratsada','Midi-Pyrénées',330415,'904 181 6835'),(971,'Charity','de Almeida','Darsey',51781,'12/19/1990','K-132','Mtwango','Veracruz Llave',82534,'942 253 1535'),(972,'Bliss','Clibbery','Zarah',70716,'2/18/1990','Y-042','Wosai','Ontario',591190,'510 929 9605'),(973,'Lotte','Turfrey','Harley',64142,'2/18/1990','C-608','Santa Cruz do Bispo','Porto',175207,'239 639 0167'),(974,'Lon','Mahy','Yul',75329,'8/17/1990','G-918','Alquerubim','Aveiro',73413,'279 456 5408'),(975,'Anabel','Blagburn','Fawn',70723,'2/18/1990','F-957','Horodnya','Québec',768345,'747 834 7467'),(976,'Mireille','Hancox','Corine',124004,'9/30/1990','B-208','Melaka','Melaka',708310,'194 351 8942'),(977,'Devlin','Polk','Mitch',84021,'9/30/1990','N-218','Limulunga','Porto',907117,'782 615 2551'),(978,'Brent','Clemits','Willy',15131,'2/18/1990','I-759','Ouro Preto do Oeste','Aveiro',279308,'775 816 8530'),(979,'Arlinda','Hartshorn','Maybelle',97920,'8/21/1990','M-756','Zhoujiaba','Porto',709670,'959 881 0482'),(980,'Sylvester','Ornells','Cathie',93954,'2/13/1990','X-928','Encrucijada','Aveiro',555224,'573 950 1520'),(981,'Nial','Fanstone','Kahaleel',30409,'11/17/1990','Y-916','Ponta Grossa','Québec',774683,'632 120 2333'),(982,'Bobbe','Placstone','Salvatore',91209,'2/18/1990','H-387','Weicheng','Melaka',583353,'408 734 6305'),(983,'Rooney','Neilus','Kennedy',57427,'11/23/1990','C-048','Hövsan','Aveiro',39611,'187 446 4171'),(984,'Leyla','Prose','Bessie',112425,'2/18/1990','U-848','Nanniu','Melaka',583024,'840 716 6396'),(985,'Katrinka','Lamyman','Catharina',98359,'12/16/1990','T-051','Hedong','Aveiro',267528,'897 268 5589'),(986,'Xenos','Jiroutek','Danice',27255,'10/19/1990','Q-001','Bi?nh Minh','Porto',655360,'818 494 7253'),(987,'Andy','Pershouse','Crystie',89935,'2/18/1990','D-617','Talin Hiag','Aveiro',432690,'647 166 6788'),(988,'Fanya','Bordone','Carmel',68558,'3/21/1990','Z-232','Baisha','Aveiro',944772,'495 798 9841'),(989,'Eldin','Soro','Ellsworth',50955,'2/18/1990','Q-359','Maubin','Melaka',461510,'827 203 3374'),(990,'Phillie','Balaison','Cody',90627,'2/18/1990','A-268','Y?nggwang-?p','Québec',940979,'324 764 4216'),(991,'Brennen','Arnaudet','Donall',71555,'7/20/1990','P-135','Santa Marta','Québec',683048,'933 450 8813'),(992,'Kean','Raulstone','Chariot',90510,'2/18/1990','S-233','Ný?any','Aveiro',677421,'699 277 4652'),(993,'Rea','Reade','Alasdair',49864,'9/19/1990','A-875','Roberval','Québec',155845,'615 628 5904'),(994,'Robenia','McCutcheon','Gabriello',105352,'1/6/2023','Q-128','La Mohammedia','Québec',300823,'970 116 1724'),(995,'Datha','Pllu','Irene',44351,'3/20/1990','X-765','Shuangqiao','Porto',569790,'391 617 9188'),(996,'Vi','Klement','Pernell',27773,'2/6/2023','R-052','Wongaya Kaja','Aveiro',369335,'279 701 0561'),(997,'Melody','Dore','Fonsie',77412,'2/27/1990','R-696','Maqia','Aveiro',528582,'422 436 8205'),(998,'Casar','Wellings','Kirbee',58768,'5/28/1990','R-394','Saki','Melaka',212391,'473 658 2055'),(999,'Harlin','Crampsey','Estell',78236,'2/18/1990','Z-492','Åkersberga','Stockholm',156190,'500 777 5383'),(1000,'Tyrus','Trigwell','Darelle',25525,'5/17/1990','Y-618','Dejen','Aveiro',391129,'972 760 7129'),(1001,'cust','omer','cust1',80250,'21/06/2003','lasnc','vuusb','sidbsud',123211,'329497369');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_status` (
  `ref_order_id` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Sno` int NOT NULL,
  PRIMARY KEY (`Sno`),
  KEY `ref_order_id_idx` (`ref_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status`
--

LOCK TABLES `delivery_status` WRITE;
/*!40000 ALTER TABLE `delivery_status` DISABLE KEYS */;
INSERT INTO `delivery_status` VALUES (201,'Delivered',1),(202,'Pending',2),(203,'Pending',3),(204,'Delivered',4),(205,'Delivered',5),(206,'Pending',6),(207,'Delivered',7),(208,'Pending',8),(209,'Pending',9),(210,'Delivered',10),(211,'Pending',11),(212,'Pending',12),(213,'Delivered',13),(214,'Pending',14),(215,'Delivered',15),(216,'Pending',16),(217,'Pending',17),(218,'Delivered',18),(219,'Pending',19),(220,'Pending',20),(221,'Delivered',21),(222,'Pending',22),(223,'Pending',23),(224,'Delivered',24),(225,'Pending',25),(226,'Pending',26),(227,'Delivered',27),(228,'Pending',28),(229,'Delivered',29),(230,'Pending',30),(231,'Pending',31),(232,'Delivered',32),(233,'Delivered',33),(234,'Pending',34),(235,'Pending',35),(236,'Delivered',36),(237,'Pending',37),(238,'Pending',38),(239,'Delivered',39),(240,'Pending',40),(241,'Pending',41),(242,'Delivered',42),(243,'Pending',43),(244,'Pending',44),(245,'Delivered',45),(246,'Pending',46),(247,'Delivered',47),(248,'Pending',48),(249,'Delivered',49),(250,'Pending',50),(251,'Pending',51),(252,'Delivered',52),(253,'Pending',53),(254,'Pending',54),(255,'Delivered',55),(256,'Pending',56),(257,'Pending',57),(258,'Delivered',58),(259,'Pending',59),(260,'Pending',60),(261,'Delivered',61),(262,'Pending',62),(263,'Delivered',63),(264,'Delivered',64),(265,'Pending',65),(266,'Pending',66),(267,'Delivered',67),(268,'Pending',68),(269,'Pending',69),(270,'Delivered',70),(271,'Pending',71),(272,'Pending',72),(273,'Delivered',73),(274,'Pending',74),(275,'Pending',75),(276,'Delivered',76),(277,'Pending',77),(278,'Delivered',78),(279,'Pending',79),(280,'Pending',80),(281,'Delivered',81),(282,'Pending',82),(283,'Pending',83),(284,'Delivered',84),(285,'Pending',85),(286,'Pending',86),(287,'Delivered',87),(288,'Pending',88),(289,'Pending',89),(290,'Delivered',90),(291,'Pending',91),(292,'Delivered',92),(293,'Pending',93),(294,'Pending',94),(295,'Delivered',95),(296,'Pending',96),(297,'Pending',97),(298,'Delivered',98),(299,'Pending',99),(300,'Pending',100),(301,'Delivered',101),(302,'Pending',102),(301,'Delivered',103),(302,'Pending',104);
/*!40000 ALTER TABLE `delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Sno` int NOT NULL,
  `Rating` int DEFAULT NULL,
  `Feedback` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,4,'GOOD'),(2,5,'BEST'),(3,3,'OKAISH'),(4,5,'EXCELLENT');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials` (
  `Role` varchar(30) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Passwd` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials`
--

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;
INSERT INTO `login_credentials` VALUES ('admin','ab','123'),('Supplier','abc','abc'),('Customer','Abel','86766eot'),('Supplier','Adora','09065oas'),('Customer','Alasdair','26385gij'),('Customer','Amble','79585dhd'),('Admin','Amory','37973tic'),('Customer','Anson','97433jxb'),('Customer','Aristotle','33765pyp'),('Customer','Arluene','47738phl'),('Customer','Arny','95234tku'),('Customer','Auria','38189gke'),('Customer','Barbara-anne','90021wic'),('Customer','Bessie','57610ecd'),('Customer','Bessy','90213tyy'),('Customer','Brose','52627wgi'),('Customer','Carmel','09909tjg'),('Admin','Catharina','73563vfg'),('Customer','Cathee','62131gpj'),('Supplier','Cathie','90975hig'),('Customer','Chariot','70391vwa'),('Customer','Clemente','55657syr'),('Customer','Cody','73629ehe'),('Customer','Con','78360gdi'),('Supplier','Corine','07140lye'),('Supplier','Crystie','74941ebs'),('Customer','Cullan','42774uhh'),('Customer','Curry','10358dzc'),('customer','cust1','123'),('Supplier','Danice','03416knr'),('Customer','Darelle','85308yfi'),('Admin','Darryl','80095zwo'),('Customer','Darsey','51855mbd'),('Customer','Daveta','36692biz'),('Supplier','Davy','61191nqs'),('Customer','Diandra','33769nlo'),('Customer','Donall','83890yjf'),('Customer','Eda','19495ayr'),('Customer','Eduard','44793cqg'),('Customer','Elisabetta','49569zcw'),('Customer','Ellsworth','48939fhb'),('Customer','Emelen','14426zvs'),('Supplier','Emery','80893ucb'),('Supplier','Estell','87004hve'),('Customer','Fawn','71340dsy'),('Customer','Fonsie','69987imq'),('Customer','Gabriello','28504exg'),('Admin','Gerladina','25141zgv'),('Customer','Gerta','38299bjf'),('Customer','Grannie','79231tmd'),('Admin','Grant','85291nhr'),('Customer','Gretel','24094iyz'),('Customer','Harley','25802ktc'),('Customer','Honor','16180pee'),('Supplier','Ianthe','04651bvy'),('Customer','Irene','03929lbd'),('Customer','Jaquith','38371ljo'),('Customer','Jobina','74101txm'),('Customer','Kahaleel','06086yyk'),('Customer','Kennedy','86836knw'),('Admin','Killie','15322qna'),('Customer','Kirbee','46724sxo'),('Customer','Konstantine','52126orq'),('Customer','Laurene','40293nqe'),('Supplier','Lowe','55948oec'),('Supplier','Mackenzie','79462odl'),('Supplier','Matti','23515cse'),('Customer','Maurine','98892wgg'),('Supplier','Maybelle','37117cmn'),('Customer','Mirella','33214zxb'),('Customer','Mitch','75691rbt'),('Customer','Mollee','11756wuf'),('Customer','Monica','06657qir'),('Customer','Noach','46225fdo'),('Customer','Patricio','40975epe'),('Customer','Pepito','87175nqj'),('Customer','Pernell','70324ann'),('Admin','Petey','35627qhm'),('Customer','Phil','81254djl'),('Supplier','Randene','23596imv'),('Supplier','Raquel','14567hsb'),('Customer','Raven','08869kjs'),('Customer','Raynell','49990awu'),('Supplier','Rebe','68653snu'),('Customer','Reg','38729toj'),('Customer','Rem','23769yef'),('Supplier','Rinaldo','72819fef'),('Supplier','Roosevelt','10451akk'),('Supplier','Russ','23409scv'),('Supplier','Sabrina','99000qjn'),('Customer','Salvatore','33272dlf'),('Customer','Serge','93002dno'),('Supplier','Shandra','18106oxv'),('Supplier','Sheppard','70055fns'),('Supplier','Sibylla','34532zlo'),('Customer','Sloan','03482cyn'),('Supplier','Ula','26972lyp'),('Supplier','Willy','54652lfm'),('Admin','Xymenes','21350qpa'),('Customer','Yul','82784ira'),('Customer','Yvonne','78000lzi'),('Customer','Zarah','12879arw'),('Customer','Zebulen','58546mas');
/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_id` int NOT NULL,
  `TimeStamp` varchar(20) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `StreetNo` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `ref_cust_id` int DEFAULT NULL,
  PRIMARY KEY (`Order_id`),
  KEY `ref_cust_id_idx` (`ref_cust_id`),
  CONSTRAINT `ref_cust_id` FOREIGN KEY (`ref_cust_id`) REFERENCES `customer` (`Cust_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (201,'4/4/2022',69152,'Y-962','Miami','Porto',753827,901),(202,'10/8/2022',97337,'B-074','Zhangyang','Aveiro',740356,902),(203,'9/4/2022',58500,'W-571','Kupchino','Porto',696247,903),(204,'2/17/2022',95598,'X-833','Ulaan Khat','Melaka',717100,904),(205,'10/11/2022',26204,'W-735','Jianshe','Porto',738444,905),(206,'4/20/2022',93120,'X-722','Babahoyo','Aveiro',435006,906),(207,'2/6/2023',23961,'V-616','Bucheon-si','Melaka',432826,907),(208,'7/14/2022',48705,'Z-511','Jinping','Porto',994063,908),(209,'11/11/2022',2538,'I-453','Barranco de Loba','Aveiro',967831,909),(210,'5/10/2022',64010,'P-228','Malapaubhara','Csongrád',781259,910),(211,'12/28/2022',47086,'C-774','Chor','Midi-Pyrénées',769597,911),(212,'10/22/2022',83736,'R-774','Quezon City','Veracruz Llave',786775,912),(213,'11/22/2022',82833,'R-970','Borovlyany','New Mexico',690286,913),(214,'9/8/2022',91964,'G-717','Itéa','Leiria',110518,914),(215,'4/12/2022',21516,'Q-946','Bakalang','New Mexico',205313,915),(216,'6/5/2022',83802,'R-247','Lete','Leiria',388046,916),(217,'8/28/2022',73407,'Q-623','Kirovgrad','Midi-Pyrénées',245842,917),(218,'7/1/2022',69155,'P-358','Rosario de Mora','Veracruz Llave',262626,918),(219,'11/29/2022',35738,'I-170','Newton','Scotland',455337,919),(220,'8/5/2022',92711,'E-235','Catungawan Sur','Leiria',86617,920),(221,'12/5/2022',50048,'O-284','Nanton','Midi-Pyrénées',595437,921),(222,'3/22/2022',19609,'A-802','Cane','Veracruz Llave',374847,922),(223,'10/12/2022',45059,'K-602','Sekirnik','Scotland',255008,923),(224,'9/24/2022',74168,'D-097','Bongao','New Mexico',259519,924),(225,'6/20/2022',86332,'S-418','Kolpny','Leiria',112074,925),(226,'7/9/2022',48266,'H-242','Tianzishan','New Mexico',220258,926),(227,'1/16/2023',85699,'H-402','Chayek','Leiria',347385,927),(228,'2/20/2022',15375,'R-129','Veselí nad Moravou','New Mexico',812309,928),(229,'1/11/2023',9922,'F-604','Klju?','Leiria',735834,929),(230,'11/26/2022',87012,'J-860','Galapa','Leiria',196270,930),(231,'4/4/2022',19319,'E-775','Pazari?','Midi-Pyrénées',649878,931),(232,'1/2/2023',54486,'N-994','Mafra','Veracruz Llave',532464,932),(233,'3/2/2022',22070,'W-079','Wojciechów','Scotland',939779,933),(234,'3/10/2022',92911,'H-378','Krajan Gajihan','New Mexico',69711,934),(235,'1/7/2023',93285,'R-671','Jiaobei','Leiria',50721,935),(236,'11/15/2022',46174,'K-002','Zárate','New Mexico',112725,936),(237,'2/10/2022',33165,'C-009','Yajiwa','Leiria',490933,937),(238,'3/30/2022',2651,'A-110','Chaery?ng-?p','Aveiro',479079,938),(239,'8/28/2022',29610,'A-281','Trnava','Veracruz Llave',408028,939),(240,'9/20/2022',87563,'S-022','Szeged','Csongrád',441111,940),(241,'8/19/2022',46877,'S-664','Millau','Midi-Pyrénées',624078,941),(242,'8/25/2022',92341,'C-387','Petrolera','Veracruz Llave',904963,942),(243,'12/14/2022',40215,'O-050','Dzüyl','Porto',537286,943),(244,'1/26/2023',87681,'X-132','Cartí Suitupo','Aveiro',482316,944),(245,'4/24/2022',3884,'H-521','Cisoka','Veracruz Llave',324873,945),(246,'4/20/2022',1153,'Z-830','Nikol’skoye','Melaka',173595,946),(247,'6/5/2022',52927,'N-629','Cestas','Porto',338141,947),(248,'4/30/2022',98867,'S-328','In?ija','Veracruz Llave',861084,948),(249,'6/20/2022',603,'O-243','Nuwara Eliya','Québec',324097,949),(250,'6/6/2022',159,'N-698','Tharyarwady','Melaka',481134,950),(251,'12/11/2022',63290,'T-123','Santa Fe','New Mexico',842359,951),(252,'11/28/2022',78430,'Z-267','Baraçais','Leiria',253162,952),(253,'12/31/2022',87700,'T-443','Saronída','',532756,953),(254,'7/16/2022',57452,'K-102','Kyaukse','Veracruz Llave',187299,954),(255,'1/31/2023',49239,'W-187','Mandaon','Aveiro',157506,955),(256,'5/26/2022',39679,'K-983','Lucas','Veracruz Llave',208637,956),(257,'4/28/2022',73809,'R-820','Albuquerque','New Mexico',104957,957),(258,'10/6/2022',38737,'S-252','Sapu Padidu','Québec',55650,958),(259,'5/28/2022',4706,'T-304','Concepción','Québec',243155,959),(260,'7/25/2022',95432,'N-796','Berlin','Berlin',126024,960),(261,'12/30/2022',46883,'T-815','Itzig','Québec',553551,961),(262,'10/5/2022',33169,'K-495','Zvishavane','Csongrád',878488,962),(263,'2/11/2022',39212,'U-615','Novosineglazovskiy','Midi-Pyrénées',593602,963),(264,'10/3/2022',58863,'O-374','?oka','Veracruz Llave',233789,964),(265,'2/4/2023',84646,'A-172','?abia Wola','Csongrád',69579,965),(266,'8/26/2022',15291,'G-722','Pavlohrad','Midi-Pyrénées',163091,966),(267,'11/7/2022',89097,'Q-106','Slatina','Veracruz Llave',132689,967),(268,'5/19/2022',6197,'W-305','Little Current','Ontario',78590,968),(269,'10/14/2022',33137,'M-564','Jingyao','Csongrád',317419,969),(270,'5/10/2022',37941,'O-770','Ban Ratsada','Midi-Pyrénées',330415,970),(271,'2/3/2023',41132,'K-132','Mtwango','Veracruz Llave',82534,971),(272,'1/28/2023',66659,'Y-042','Wosai','Ontario',591190,972),(273,'7/7/2022',71968,'C-608','Santa Cruz do Bispo','Porto',175207,973),(274,'5/15/2022',84831,'G-918','Alquerubim','Aveiro',73413,974),(275,'6/4/2022',69168,'F-957','Horodnya','Québec',768345,975),(276,'10/2/2022',75231,'B-208','Melaka','Melaka',708310,976),(277,'11/19/2022',46577,'N-218','Limulunga','Porto',907117,977),(278,'8/13/2022',49796,'I-759','Ouro Preto do Oeste','Aveiro',279308,978),(279,'8/11/2022',83193,'M-756','Zhoujiaba','Porto',709670,979),(280,'2/16/2022',3785,'X-928','Encrucijada','Aveiro',555224,980),(281,'10/16/2022',20922,'Y-916','Ponta Grossa','Québec',774683,981),(282,'8/8/2022',5622,'H-387','Weicheng','Melaka',583353,982),(283,'6/28/2022',71512,'C-048','Hövsan','Aveiro',39611,983),(284,'2/24/2022',81275,'U-848','Nanniu','Melaka',583024,984),(285,'5/21/2022',42293,'T-051','Hedong','Aveiro',267528,985),(286,'6/14/2022',80872,'Q-001','Bi?nh Minh','Porto',655360,986),(287,'10/17/2022',44268,'D-617','Talin Hiag','Aveiro',432690,987),(288,'8/14/2022',7888,'Z-232','Baisha','Aveiro',944772,988),(289,'5/10/2022',9098,'Q-359','Maubin','Melaka',461510,989),(290,'8/25/2022',23654,'A-268','Y?nggwang-?p','Québec',940979,990),(291,'8/21/2022',51164,'P-135','Santa Marta','Québec',683048,991),(292,'3/19/2022',48596,'S-233','Ný?any','Aveiro',677421,992),(293,'1/9/2023',36816,'A-875','Roberval','Québec',155845,993),(294,'1/3/2023',63959,'Q-128','La Mohammedia','Québec',300823,994),(295,'6/15/2022',85515,'X-765','Shuangqiao','Porto',569790,995),(296,'7/17/2022',9113,'R-052','Wongaya Kaja','Aveiro',369335,996),(297,'1/19/2023',67015,'R-696','Maqia','Aveiro',528582,997),(298,'6/27/2022',10194,'R-394','Saki','Melaka',212391,998),(299,'5/16/2022',9085,'Z-492','Åkersberga','Stockholm',156190,999),(300,'5/20/2022',12321,'Y-618','Dejen','Aveiro',391129,1000),(301,'23/08/2023',350,'sdcd','duss','wieb',356536,1001),(302,'2423234',50,'ds','svds','idvbs',782736,1001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `P_id` int NOT NULL AUTO_INCREMENT,
  `P_Name` varchar(100) DEFAULT NULL,
  `Category_Name` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Product_Discount` int DEFAULT NULL,
  `ref_sup_id` int DEFAULT NULL,
  PRIMARY KEY (`P_id`),
  KEY `ref_sup_id_idx` (`ref_sup_id`),
  CONSTRAINT `ref_sup_id` FOREIGN KEY (`ref_sup_id`) REFERENCES `supplier` (`Sup_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'Pineapple - Regular','Fruit',783,4781,44,1006),(5,'V8 Splash Strawberry Kiwi','Food',859,3103,45,1005),(6,'Broom - Corn','Food',828,4067,18,1006),(11,'Pork - Belly Fresh','Alchohol',772,7432,159,1008),(29,'Scallops - 20/30','Alchohol',866,7250,33,1010),(30,'Lemon Tarts','Vegetable',872,2338,99,1020),(31,'Seabream Whole Farmed','Alchohol',592,2028,98,1020),(32,'Flour - Pastry','Food',703,10440,139,1020),(33,'Fond - Neutral','Fruit',386,9168,174,1020),(34,'Pork - Shoulder','Alchohol',776,5096,29,1020),(35,'Kellogs All Bran Bars','Alchohol',806,3124,83,1020),(36,'Wine - Malbec Trapiche Reserve','Alchohol',335,8362,173,1020),(37,'Wine - Bouchard La Vignee Pinot','Alchohol',999,4177,33,1020),(38,'Soup - Tomato Mush. Florentine','Drink',597,1147,97,1041),(39,'Flavouring - Orange','Fruit',921,7129,163,1041),(40,'Lettuce - Radicchio','Vegetable',129,5856,187,1041),(41,'Shiro Miso','Fruit',815,9474,136,1041),(42,'Bandage - Fexible 1x3','Vegetable',181,164,0,1041),(43,'Sage - Ground','Drink',360,9076,187,1041),(44,'Rabbit - Whole','Drink',694,3929,79,1041),(45,'Tomato - Green','Drink',919,6354,121,1041),(46,'Coke - Classic, 355 Ml','Drink',906,1329,17,1042),(47,'Soup - Campbells, Spinach Crm','Alchohol',329,5657,175,1042),(48,'Garlic - Peeled','Alchohol',742,1697,38,1042),(49,'Brandy - Bar','Alchohol',355,5230,161,1042),(50,'Chocolate - White','Food',304,8389,118,1042),(64,'Wine - Magnotta - Bel Paese White','Alchohol',86,3579,84,1078),(65,'Bread Roll Foccacia','Alchohol',964,359,40,1078),(66,'Wine - Redchard Merritt','Drink',531,3855,53,1078),(67,'Wine - Placido Pinot Grigo','Drink',277,6694,117,1078),(68,'Sesame Seed','Fruit',307,7016,130,1078),(69,'Chicken - Leg, Fresh','Vegetable',803,7304,177,1078),(70,'Juice - Orange, Concentrate','Fruit',112,9524,189,1078),(71,'Wiberg Super Cure','Vegetable',318,4349,8,1090),(72,'Guinea Fowl','Alchohol',387,9051,142,1090),(73,'Bread - Rolls, Rye','Drink',963,7904,133,1090),(74,'Potatoes - Yukon Gold, 80 Ct','Drink',719,1076,76,1090),(75,'Liquid Aminios Acid - Braggs','Fruit',483,451,44,1090),(76,'Sauce - Rosee','Vegetable',147,1895,41,1090),(77,'Ice - Clear, 300 Lb For Carving','Mat',890,5494,167,1090),(78,'Oil - Macadamia','Vegetable',623,7765,123,1090),(79,'Soup - Campbells, Lentil','Fruit',976,9044,194,1090),(80,'Soup - Boston Clam Chowder','Vegetable',392,8175,193,1090),(81,'Bagel - Everything','Mat',723,8142,118,1090),(82,'Capers - Ox Eye Daisy','Mat',480,6246,153,1100),(83,'Wonton Wrappers','Vegetable',0,9599,109,1100),(84,'Lettuce - Romaine','Fruit',674,7286,173,1100),(85,'Cod - Fillets','Vegetable',457,826,37,1100),(86,'Bamboo Shoots - Sliced','Fruit',425,3052,4,1100),(87,'Longos - Greek Salad','Vegetable',274,6808,181,1100),(88,'Jerusalem Artichoke','Fruit',965,5619,163,1100),(89,'Yogurt - French Vanilla','Vegetable',214,7852,111,1100),(99,'Shrimp - 16 - 20 Cooked, Peeled','Vegetable',976,7701,137,1038),(100,'Placemat - Scallop, White','Mat',807,7754,142,1038),(101,'p1','c1',234,456,23,1064);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_from_cart` BEFORE DELETE ON `product` FOR EACH ROW delete from cart where PID = old.P_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `show_products`
--

DROP TABLE IF EXISTS `show_products`;
/*!50001 DROP VIEW IF EXISTS `show_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_products` AS SELECT 
 1 AS `P_id`,
 1 AS `P_Name`,
 1 AS `Category_Name`,
 1 AS `Quantity`,
 1 AS `Price`,
 1 AS `Product_Discount`,
 1 AS `ref_sup_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `show_suppliers`
--

DROP TABLE IF EXISTS `show_suppliers`;
/*!50001 DROP VIEW IF EXISTS `show_suppliers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_suppliers` AS SELECT 
 1 AS `Sup_id`,
 1 AS `Sup_name`,
 1 AS `ref_username`,
 1 AS `Status`,
 1 AS `StreetNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Pincode`,
 1 AS `PhoneNo`,
 1 AS `ref_admin_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Sup_id` int NOT NULL AUTO_INCREMENT,
  `Sup_name` varchar(100) DEFAULT NULL,
  `ref_username` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `StreetNo` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `PhoneNo` varchar(30) DEFAULT NULL,
  `ref_admin_id` int DEFAULT NULL,
  PRIMARY KEY (`Sup_id`),
  KEY `ref_username` (`ref_username`),
  KEY `ref_admin_id_idx` (`ref_admin_id`),
  CONSTRAINT `ref_admin_id` FOREIGN KEY (`ref_admin_id`) REFERENCES `admin` (`Admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_username` FOREIGN KEY (`ref_username`) REFERENCES `login_credentials` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=1192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1005,'Reeva O\'Neill','Cullan','Accepted','W-735','Jianshe','Porto',738444,'105 922 9275',101),(1006,'Gabi Bellhouse','Phil','Accepted','X-722','Babahoyo','Aveiro',435006,'347 656 5749',101),(1007,'Erinn Corbin','Con','Accepted','V-616','Bucheon-si','Melaka',432826,'374 950 2789',101),(1008,'Xymenes Georger','Monica','Accepted','Z-511','Jinping','Porto',994063,'686 102 6596',101),(1010,'Emyle Chipperfield','Cathee','Accepted','P-228','Malapaubhara','Csongrád',781259,'238 755 8995',101),(1011,'Meta Taggerty','Honor','Rejected','C-774','Chor','Midi-Pyrénées',769597,'858 372 7466',101),(1012,'Madel Stringfellow','Patricio','Rejected','R-774','Quezon City','Veracruz Llave',786775,'198 965 9095',102),(1013,'Gusella Couling','Eda','Rejected','R-970','Borovlyany','New Mexico',690286,'113 400 2986',102),(1014,'Nichole Wisdish','Elisabetta','Rejected','G-717','Itéa','Leiria',110518,'774 158 8945',102),(1015,'Rikki Menear','Roosevelt','Rejected','Q-946','Bakalang','New Mexico',205313,'411 341 0209',102),(1016,'Marty Truwert','Konstantine','Rejected','R-247','Lete','Leiria',388046,'794 867 4335',102),(1017,'Barbi Priestland','Russ','Rejected','Q-623','Kirovgrad','Midi-Pyrénées',245842,'598 967 0975',102),(1018,'Meredeth Elham','Ula','Pending','P-358','Rosario de Mora','Veracruz Llave',262626,'827 374 9089',103),(1019,'Brandtr Lamke','Lowe','Rejected','I-170','Newton','Scotland',455337,'830 369 3928',103),(1020,'Emmery Oneill','Curry','Pending','E-235','Catungawan Sur','Leiria',86617,'236 304 2146',103),(1021,'Alon Damrel','Gretel','Rejected','O-284','Nanton','Midi-Pyrénées',595437,'217 325 8640',103),(1022,'Audy Vellden','Grannie','Pending','A-802','Cane','Veracruz Llave',374847,'319 324 2959',103),(1023,'Joya Silvester','Barbara-anne','Rejected','K-602','Sekirnik','Scotland',255008,'754 707 2439',103),(1024,'Burtie Willisch','Pepito','Rejected','D-097','Bongao','New Mexico',259519,'672 588 0866',103),(1025,'Wiatt Jankowski','Diandra','Rejected','S-418','Kolpny','Leiria',112074,'820 645 4397',103),(1026,'Manon Glowacki','Mollee','Pending','H-242','Tianzishan','New Mexico',220258,'970 215 6087',104),(1027,'Edouard Petrello','Raynell','Pending','H-402','Chayek','Leiria',347385,'910 322 5966',104),(1028,'Melita Marran','Emelen','Pending','R-129','Veselí nad Moravou','New Mexico',812309,'845 316 2163',104),(1029,'Dyanne Grammer','Daveta','Pending','F-604','Klju?','Leiria',735834,'142 398 6607',104),(1030,'Ruthe Brasier','Davy','Pending','J-860','Galapa','Leiria',196270,'587 531 5328',104),(1032,'Ardyce Gloves','Emery','Pending','N-994','Mafra','Veracruz Llave',532464,'558 929 3530',104),(1034,'Fannie Caslin','Aristotle','Pending','H-378','Krajan Gajihan','New Mexico',69711,'674 906 8397',116),(1035,'Hedvige Tomaello','Randene','Rejected','R-671','Jiaobei','Leiria',50721,'409 388 9695',116),(1036,'Ninette Sargint','Darryl','Rejected','K-002','Zárate','New Mexico',112725,'392 229 7965',116),(1037,'Caralie Pearmain','Noach','Rejected','C-009','Yajiwa','Leiria',490933,'255 681 4051',116),(1038,'Loise Webben','Reg','Pending','A-110','Chaery?ng-?p','Aveiro',479079,'778 623 9272',116),(1039,'Lorry Dumberell','Raven','Pending','A-281','Trnava','Veracruz Llave',408028,'150 807 4250',116),(1040,'Angelina Reeken','Zebulen','Pending','S-022','Szeged','Csongrád',441111,'369 110 7685',116),(1041,'Sidnee Lannen','Sibylla','Pending','S-664','Millau','Midi-Pyrénées',624078,'668 718 2551',116),(1042,'Gaye Issacoff','Xymenes','Pending','C-387','Petrolera','Veracruz Llave',904963,'537 772 2698',116),(1043,'Lucinda Lehon','Gerladina','Rejected','O-050','Dzüyl','Porto',537286,'807 910 8496',116),(1044,'Delora Valentinuzzi','Sabrina','Pending','X-132','Cartí Suitupo','Aveiro',482316,'651 144 2062',116),(1045,'Feodor Toseland','Grant','Rejected','H-521','Cisoka','Veracruz Llave',324873,'615 624 5759',119),(1046,'Vinny Jonson','Mackenzie','Pending','Z-830','Nikol’skoye','Melaka',173595,'761 719 6137',119),(1047,'Stanleigh Taplin','Matti','Rejected','N-629','Cestas','Porto',338141,'136 505 5701',119),(1048,'Bernette Kelsell','Jaquith','Rejected','S-328','In?ija','Veracruz Llave',861084,'103 686 5933',119),(1049,'Marc Tebbut','Amble','Rejected','O-243','Nuwara Eliya','Québec',324097,'298 172 0399',119),(1050,'Elvina Lars','Arluene','Pending','N-698','Tharyarwady','Melaka',481134,'404 736 2018',119),(1051,'Cleo Deville','Laurene','Pending','T-123','Santa Fe','New Mexico',842359,'505 534 4583',119),(1052,'Matthus Jancik','Rem','Pending','Z-267','Baraçais','Leiria',253162,'623 303 8083',119),(1053,'Wakefield Sainz','Brose','Pending','T-443','Saronída','',532756,'105 843 4067',129),(1054,'Willie Martynikhin','Jobina','Pending','K-102','Kyaukse','Veracruz Llave',187299,'664 808 4575',129),(1055,'Morgen Menear','Anson','Rejected','W-187','Mandaon','Aveiro',157506,'895 655 5491',129),(1056,'Jessica Silwood','Auria','Pending','K-983','Lucas','Veracruz Llave',208637,'573 843 1969',129),(1057,'Lian Crickmoor','Mirella','Rejected','R-820','Albuquerque','New Mexico',104957,'505 256 0986',129),(1058,'Ralf Ambrois','Serge','Accepted','S-252','Sapu Padidu','Québec',55650,'658 159 6624',129),(1059,'Stinky Siggin','Adora','Accepted','T-304','Concepción','Québec',243155,'398 629 7839',129),(1060,'Mareah Blackshaw','Yvonne','Accepted','N-796','Berlin','Berlin',126024,'782 121 4680',129),(1061,'Devin Kiddy','Rinaldo','Accepted','T-815','Itzig','Québec',553551,'809 286 6082',129),(1062,'Caspar Barson','Petey','Accepted','K-495','Zvishavane','Csongrád',878488,'674 412 0037',130),(1063,'Maris McGeady','Sheppard','Accepted','U-615','Novosineglazovskiy','Midi-Pyrénées',593602,'865 983 5727',130),(1064,'Rooney Paull','Ianthe','Pending','O-374','?oka','Veracruz Llave',233789,'563 211 1460',130),(1065,'Linoel Cisco','Arny','Pending','A-172','?abia Wola','Csongrád',69579,'223 679 8473',130),(1066,'Wallie Kearey','Clemente','Pending','G-722','Pavlohrad','Midi-Pyrénées',163091,'835 811 2000',116),(1067,'Nico Dobsons','Gerta','Pending','Q-106','Slatina','Veracruz Llave',132689,'159 227 8078',130),(1068,'Kathryne Randall','Bessy','Rejected','W-305','Little Current','Ontario',78590,'901 878 4188',130),(1069,'Bernadina Geeves','Eduard','Pending','M-564','Jingyao','Csongrád',317419,'228 134 6897',130),(1070,'Bard Jentet','Abel','Rejected','O-770','Ban Ratsada','Midi-Pyrénées',330415,'904 181 6835',130),(1071,'Mack Terron','Darsey','Pending','K-132','Mtwango','Veracruz Llave',82534,'942 253 1535',130),(1072,'Andeee Swainston','Zarah','Accepted','Y-042','Wosai','Ontario',591190,'510 929 9605',130),(1073,'Bertine Sendley','Harley','Accepted','C-608','Santa Cruz do Bispo','Porto',175207,'239 639 0167',130),(1074,'Kaleb Mohan','Yul','Accepted','G-918','Alquerubim','Aveiro',73413,'279 456 5408',143),(1075,'Delcine Stainbridge','Fawn','Accepted','F-957','Horodnya','Québec',768345,'747 834 7467',143),(1076,'Jeno Robbeke','Corine','Accepted','B-208','Melaka','Melaka',708310,'194 351 8942',143),(1077,'Marsh Desorts','Mitch','Accepted','N-218','Limulunga','Porto',907117,'782 615 2551',143),(1078,'Vitia Sabberton','Willy','Pending','I-759','Ouro Preto do Oeste','Aveiro',279308,'775 816 8530',116),(1079,'Marj Winckworth','Maybelle','Pending','M-756','Zhoujiaba','Porto',709670,'959 881 0482',143),(1080,'Luca Trimble','Cathie','Rejected','X-928','Encrucijada','Aveiro',555224,'573 950 1520',143),(1081,'Philippe Corbould','Kahaleel','Pending','Y-916','Ponta Grossa','Québec',774683,'632 120 2333',143),(1082,'Ly Middlemiss','Salvatore','Rejected','H-387','Weicheng','Melaka',583353,'408 734 6305',143),(1083,'Salmon Kean','Kennedy','Pending','C-048','Hövsan','Aveiro',39611,'187 446 4171',143),(1084,'Von Pilmoor','Bessie','Rejected','U-848','Nanniu','Melaka',583024,'840 716 6396',143),(1085,'Isador Northey','Catharina','Rejected','T-051','Hedong','Aveiro',267528,'897 268 5589',143),(1086,'Denise Spavon','Danice','Rejected','Q-001','Bi?nh Minh','Porto',655360,'818 494 7253',156),(1087,'Lynett Bawden','Crystie','Accepted','D-617','Talin Hiag','Aveiro',432690,'647 166 6788',156),(1088,'Angus Mosten','Carmel','Accepted','Z-232','Baisha','Aveiro',944772,'495 798 9841',156),(1089,'Lance Grastye','Ellsworth','Accepted','Q-359','Maubin','Melaka',461510,'827 203 3374',156),(1090,'Adena Janjusevic','Cody','Accepted','A-268','Y?nggwang-?p','Québec',940979,'324 764 4216',156),(1091,'Sisile Sibbs','Donall','Accepted','P-135','Santa Marta','Québec',683048,'933 450 8813',156),(1092,'Loydie Batchley','Chariot','Accepted','S-233','Ný?any','Aveiro',677421,'699 277 4652',116),(1093,'Danyelle Upton','Alasdair','Pending','A-875','Roberval','Québec',155845,'615 628 5904',156),(1094,'Garv MacLoughlin','Gabriello','Rejected','Q-128','La Mohammedia','Québec',300823,'970 116 1724',156),(1095,'Kitti Stanes','Irene','Rejected','X-765','Shuangqiao','Porto',569790,'391 617 9188',156),(1096,'Genvieve Kilban','Pernell','Accepted','R-052','Wongaya Kaja','Aveiro',369335,'279 701 0561',156),(1097,'Row Girt','Fonsie','Accepted','R-696','Maqia','Aveiro',528582,'422 436 8205',187),(1098,'Ami Freckingham','Kirbee','Accepted','R-394','Saki','Melaka',212391,'473 658 2055',187),(1099,'Jena Fritchley','Estell','Accepted','Z-492','Åkersberga','Stockholm',156190,'500 777 5383',187),(1100,'Tab Manners','Darelle','Accepted','Y-618','Dejen','Aveiro',391129,'972 760 7129',187),(1101,'abc','abc','Pending','A-143','Delhi','India',212121,'123123789',105);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_product` BEFORE DELETE ON `supplier` FOR EACH ROW delete from product where ref_sup_id = old.Sup_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_login` BEFORE DELETE ON `supplier` FOR EACH ROW delete from login_credentials where username = old.ref_username */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'royalmart'
--

--
-- Dumping routines for database 'royalmart'
--

--
-- Final view structure for view `show_products`
--

/*!50001 DROP VIEW IF EXISTS `show_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_products` AS select `product`.`P_id` AS `P_id`,`product`.`P_Name` AS `P_Name`,`product`.`Category_Name` AS `Category_Name`,`product`.`Quantity` AS `Quantity`,`product`.`Price` AS `Price`,`product`.`Product_Discount` AS `Product_Discount`,`product`.`ref_sup_id` AS `ref_sup_id` from `product` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `show_suppliers`
--

/*!50001 DROP VIEW IF EXISTS `show_suppliers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_suppliers` AS select `supplier`.`Sup_id` AS `Sup_id`,`supplier`.`Sup_name` AS `Sup_name`,`supplier`.`ref_username` AS `ref_username`,`supplier`.`Status` AS `Status`,`supplier`.`StreetNo` AS `StreetNo`,`supplier`.`City` AS `City`,`supplier`.`State` AS `State`,`supplier`.`Pincode` AS `Pincode`,`supplier`.`PhoneNo` AS `PhoneNo`,`supplier`.`ref_admin_id` AS `ref_admin_id` from `supplier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 13:26:37
