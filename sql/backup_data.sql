-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: eagleeye
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buydetails`
--

DROP TABLE IF EXISTS `buydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buydetails` (
  `orderid` int(11) NOT NULL,
  `bunits` varchar(45) DEFAULT NULL,
  `bpkts` varchar(45) DEFAULT NULL,
  `bqty` varchar(45) DEFAULT NULL,
  `brate` varchar(45) DEFAULT NULL,
  `btotal` varchar(45) DEFAULT NULL,
  `bfreight` varchar(45) DEFAULT NULL,
  `btotalbeforetax` varchar(45) DEFAULT NULL,
  `bigst` varchar(45) DEFAULT NULL,
  `bcgst` varchar(45) DEFAULT NULL,
  `bsgst` varchar(45) DEFAULT NULL,
  `bgrandtotal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buydetails`
--

LOCK TABLES `buydetails` WRITE;
/*!40000 ALTER TABLE `buydetails` DISABLE KEYS */;
INSERT INTO `buydetails` VALUES (1,'Kg','1','40Kg','3100','124000','0','124000','','11160','11160','146320'),(2,'Kg','1','1Kg','7500','7500','100','7600','1368','','','8968'),(3,'Kg','1','3Kg','8500','25500','150','25650','4617','','','30267'),(4,'Kg','1','1Kg','13000','13000','0','13000','2340','','','15340'),(5,'Kg','1','5Kg','4500','22500','500','23000','','2070','2070','27140'),(6,'2.5Kg','5','12.5Kg','2804','35050','400','35450','6381','','','41831'),(7,'5gm','1','5gm','2934','2934','0','2934','','264','264','3462'),(8,'Kg','1','3Kg','2500','7500','0','7500','1350','','','8850'),(9,'gm','1','5gm','900','4500','0','4500','','405','405','5310'),(10,'gm','1','500gm','27000','27000','0','27000','','2430','2430','31860'),(11,'Kg','1','2Kg','3000','6000','0','6000','1080','','','7080'),(12,'gm','1','250gm','0','0','0','0','0','0','0','0'),(13,'Kg','1','250Kg','195','48750','0','48750','','4387.5','4387.5','57525'),(14,'gm','1','100gm','5800','5800','0','5800','','522','522','6844'),(15,'Kg','1','1500Kg','195','292500','0','292500','','26325','26325','345150'),(16,'Kg','1','10Kg','3000','30000','500','30500','5490','','','35990'),(17,'Kg','1','1Kg','13000','13000','0','13000','','1170','1170','15340'),(18,'Kg','1','1Kg','13000','13000','650','13650','','1228.5','1228.5','16107'),(19,'gm','1','100gm','5800','5800','0','5800','','522','522','6844'),(20,'gm','1','500gm','960','960','0','960','','86.5','86.5','1133'),(21,'gm','1','50gm','0','0','0','0','0','0','0','0'),(22,'gm','1','25gm','160','4000','0','4000','','360','360','4720'),(23,'gm','1','25gm','7000','7000','0','7000','','630','630','8260'),(24,'Kg','1','1Kg','4484','4484','0','4484','403.56','403.56','','5291'),(25,'gm','1','25gm','0','0','0','0','0','0','0','0'),(26,'gm','1','25gm','0','0','0','0','0','0','0','0'),(27,'gm','1','100gm','0','0','0','0','0','0','0','0'),(28,'lts','1','2.5lts','0','0','0','0','0','0','0','0'),(29,'Kg','1','2Kg','16100','16100','0','16100','2898','','','18998');
/*!40000 ALTER TABLE `buydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `companies` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) DEFAULT NULL,
  `consultantname` varchar(100) DEFAULT NULL,
  `gstin` varchar(45) DEFAULT NULL,
  `pan` varchar(45) DEFAULT NULL,
  `iec` varchar(45) DEFAULT NULL,
  `tin` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `deliveryaddress` varchar(1000) DEFAULT NULL,
  `taxinvoiceaddress` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Saradhi Organics','Saradhi Chandra Bhushan Rao','36ADFFS1196R1ZA','ADFFS1196R','ADFFS1196R','36982293576','sales@saradhiorganics.com','+91-7660890360','H.no.4-32-111, P.No: A/255,  Allwyn colony,Phase-1, Kukatpally,\nHyderabad, Telangana-500072\n','H.no.4-32-111, P.No: A/255,  Allwyn colony,Phase-1, Kukatpally,\nHyderabad, Telangana-500072\n'),(2,'Sai Carbohydrates','Sai Ram','36ADGFS1756E1Z2','','','','info@saicarbohydrates.com','','Kukatpally,Hyderabad,Telangana-500072,India','Kukatpally,Hyderabad,Telangana-500072,India'),(3,'Chempure','Laxman','','','','','','+91-22-26764461/62','328,Ashirwad Industrial Estate,Bldg No.3,Ram Mandir Road,Goregaon(West),India','328,Ashirwad Industrial Estate,Bldg No.3,Ram Mandir Road,Goregaon(West),India'),(4,'Chemical Unlimited','Laxman','','','','','','+91-22-26764461/62','328,Ashirwad Industrial Estate,Bldg No. 3,Ram Mandir Road,Goregaon(West),Mumbai-400104,India','328,Ashirwad Industrial Estate,Bldg No. 3,Ram Mandir Road,Goregaon(West),Mumbai-400104,India'),(5,'Survival Technologies Pvt. Ltd.','','','','','','manjiri@surviivaltechnologies.in','+91-22-61902012','1401-A,Naman Midtown,14th Floor,Senapati Bapat Marg,Elphinstone West Mumbai,400013','1401-A,Naman Midtown,14th Floor,Senapati Bapat Marg,Elphinstone West Mumbai,400013'),(6,'Sreeja Chemicals','','36ABHFS1315G1ZE','','','','sreejachemicals@gmail.com','','Plot No 70,Groud Floor,Rajiv Gandhi Nagar,Prashanthi Nagar,Kukatpally,Hyderabad-500072','Plot No 70,Groud Floor,Rajiv Gandhi Nagar,Prashanthi Nagar,Kukatpally,Hyderabad-500072'),(7,'Molekula Biokemix Ltd','','36AAECM6213A1Z0','','','','','','C-14,Co-Operative Industrial Estate,Balanagar,Hyderabad,Telangana-500036','C-14,Co-Operative Industrial Estate,Balanagar,Hyderabad,Telangana-500036'),(8,'Prince Scientific','Mirza,Irshad','36AQCPM4384M1ZD','','','','sales@p-scientific.com','91-9866972244,92-9000189324','4-1-10/1,TIlak Road,Opp Church Building,Hyderabad,Telangana,India','4-1-10/1,TIlak Road,Opp Church Building,Hyderabad,Telangana,India'),(9,'Karvy Therapeutics Pvt Ltd','','24AAACK8880F','AAACK8880F','','','','0281-2783375/2783675','Survey No. 29,Haripar(pal),Kalawad Road,Tal. Lodhika Dist, Rajkot','Survey No. 29,Haripar(pal),Kalawad Road,Tal. Lodhika Dist, Rajkot'),(10,'Nilima Organics Private Limited','','36AABCN8129M1Z2','','','','nilimaorganics@gmail.com','','Plot No:105,107,IDA,Uppal,Hyderabad-500039','Plot No:105,107,IDA,Uppal,Hyderabad-500039'),(11,'Almas Life Sciences','','','','','','','91-9390399174,9390399175','Plot No 20 CFC,Road No-15,Industrial park Nacharam,Hydeabad-500076','Plot No 20 CFC,Road No-15,Industrial park Nacharam,Hydeabad-500076'),(12,'Siri Oganics','','36ACBFS1183K1ZZ','ACBFS1183K','0912007516','','','91-4023070323','# 5-9-285/16/3,Plot No : 8,Rajiv Gandhi Nagar,I.E,Ext. Prasanthi Nagar,Kukatpally,Hyderabad,Telangana-500072','# 5-9-285/16/3,Plot No : 8,Rajiv Gandhi Nagar,I.E,Ext. Prasanthi Nagar,Kukatpally,Hyderabad,Telangana-500072'),(13,'Reddy N Reddy Pharmaceuticals','','36AAJFR4341J1Z0','','','','info@reddynreddypharma.com','04065556759','Plot No : A3/A1,IDA Gandhi Nagar,Near Techno Industries,IDPL Colony,Hyderabad-500037','Plot No : A3/A1,IDA Gandhi Nagar,Near Techno Industries,IDPL Colony,Hyderabad-500037'),(14,'Biosyn Research Chemicals (P) Limited','','36AADCB4783B1ZV','','','','','','Plot No.176/A,Phase-2,IDA,Mallapur,Hyderabad-500076,Telangana,India','Plot No.176/A,Phase-2,IDA,Mallapur,Hyderabad-500076,Telangana,India'),(15,'Srini Pharmaceuticals Private Limited','Neelima','36AACCS8456P1ZK','','','','neelima@srinipharma.com','09618884942','Plot No 10,Road No 8,Filmnagar,Jubilee Hills,Hyderabad-500096,India','S No-247,Choutuppal,Bhongiri Dist.,Telangana,India'),(16,'Sai Life Science Limited','','36AAECS6143F1ZF','','','','','','Plot no DS-7,IKP Knowledge Park,Turkapally (V),Shameerpet (M), R.R District TG-500078,India','Plot no DS-7,IKP Knowledge Park,Turkapally (V),Shameerpet (M), R.R District TG-500078,India'),(17,'APL Research Centre-2 (A division of Aurobindo Pharma)','','36AABCA7366H1ZL','','','','','','Survey No 71&72,Indrakarn Village,Sangareddy Mandal,Medak Dist,Telangana-502329','Survey No 71&72,Indrakarn Village,Sangareddy Mandal,Medak Dist,Telangana-502329'),(18,'INTAS Pharmaceuticals LTD, Matoda R&D','','24AAACI5120L1ZU','','','','','','Plot No 457,458,Village-Matoda,Sarkhej bawla road,Tal-Sanand,Ahmedabad-382210,India','Plot No 457,458,Village-Matoda,Sarkhej bawla road,Tal-Sanand,Ahmedabad-382210,India'),(19,'Lotus Lab World','S Ravi Shankar','36BGVPS6981G1ZE','','','','','9989997533','Plot G-16,Flat No 201,SRI Home,Officers Colony,Neredmet,Sainathapuram,Dr A.S Rao Nagar,Hyderabad-500062,Telangana','Plot G-16,Flat No 201,SRI Home,Officers Colony,Neredmet,Sainathapuram,Dr A.S Rao Nagar,Hyderabad-500062,Telangana'),(20,'Analytica Chemie Inc','','29ACSPA0867H1ZC','ACSPA0867H','','','stores@analyticachemie.in','080-67012000','# 308,3rd Floor,1st Block,VITC Model Export Bhavan,14th Cross,Peenya 2nd Stage,Bangalore,India-560058','# 308,3rd Floor,1st Block,VITC Model Export Bhavan,14th Cross,Peenya 2nd Stage,Bangalore,India-560058'),(21,'Souvenier Chemicals','','27ALIPS8610F1ZW','','','','','9820324403','Office No-16,89 Peerbhal Building S,G Marg,Princess Street,Mumbai-400 002,India','Office No-16,89 Peerbhal Building S,G Marg,Princess Street,Mumbai-400 002,India'),(22,'Sai Life Sciences Limited, Pune','','27AAECS6143F1ZE','','','','','','Ground Floor,1st Floor,2nd Floor,3rd Floor,Building-1,Plot No:02,Chrylasis Enclave,International Biotech Park Phase-2,Hinjewadi,Pune,MH-411057','Ground Floor,1st Floor,2nd Floor,3rd Floor,Building-1,Plot No:02,Chrylasis Enclave,International Biotech Park Phase-2,Hinjewadi,Pune,MH-411057'),(23,'Themis Medicare Limited (Bulk Drugs)','','24AABCT1183B1ZW','','','','','','Plot No:69/A-1,GIDC,Indsutrial Estate,Valsad dist.,VAPI,Gujarat-396195,India','Plot No:69/A-1,GIDC,Indsutrial Estate,Valsad dist.,VAPI,Gujarat-396195,India'),(24,'ClearSynth Labs Ltd. Research Center','','36AADCC9150H1ZN','','','','','','Ground Floor,Plot No:177IDA,Mallapur,Hyderabad-500076,India','Ground Floor,Plot No:177IDA,Mallapur,Hyderabad-500076,India'),(25,'Ogene System (I) Pvt Ltd','','36AAACO7056R1ZS','','','','','9000990483,40-23815560','Plot no:218 & 219,Phase-2,IDA,Pashamylaram,Medak dist,502307','#5/A,2nd Floor,Vengalrao Nagar,Hyderabad-500038'),(26,'Green Vision Life Sciences Pvt Ltd','','27AAFCG3329Q1Z4','','','','info@greenvisionindia.com','7875443924','Sr No.-284,8-D,Raisoni Industrial Park,Hinjewadi,Phase-2,Village-Maan,Tal-Mulshi,Pune-411057,India','Sr No.-284,8-D,Raisoni Industrial Park,Hinjewadi,Phase-2,Village-Maan,Tal-Mulshi,Pune-411057,India'),(27,'Vasudha Pharma Chem Ltd','','37AAACV9857D2ZY','','','','','','Ground Floor and  1st Floor,R&D building,Ramky Commercial Hub,Road No 13,JNP City,Parawada,Vishakapatnam-531019,Andhra Pradesh','Ground Floor and  1st Floor,R&D building,Ramky Commercial Hub,Road No 13,JNP City,Parawada,Vishakapatnam-531019,Andhra Pradesh'),(28,'Azole rasayanas India Private Limited','','36AANCA6655K1Z4','','','','','','Plot No : 60,Tech Park,IDA nacharam,Hyderabad,Telangana-500076,India','Plot No : 60,Tech Park,IDA nacharam,Hyderabad,Telangana-500076,India'),(29,'Vagdevi Inno Science Pvt Ltd','','36AAFCV1406p2Z1','','','','','','5-A/8,IDA Nacharam,Hyderabad-500076,Telangana,India','5-A/8,IDA Nacharam,Hyderabad-500076,Telangana,India'),(30,'Vivan Life Sciences Pvt Ltd','Rawat','27AADCV2596A1ZD','','','','','+91(22)25870080/81/82','Plot No:178-B,IDA Mallapur, Near Manikchand Chaurasta,Telangana,Hyderabad-500076','511,Lodha Supremus,Road No 22,Wagle Industrial Estate,Thane-w,Mumbai-400604,India'),(31,'Vyas Bio Life Sciences Pvt Ltd','','36AACCV8849H1ZT','','','','','+91-040-65546424','#5-9-264/4,Rajeev Gandhi Nagar,L.E Ext,Prasanthi Nagar,Hyderabad-500037,Telangana,India','#5-9-264/4,Rajeev Gandhi Nagar,L.E Ext,Prasanthi Nagar,Hyderabad-500037,Telangana,India'),(32,'VGS Synthesis Private Limited','','36AAFCV8746A1Z8','','','','','+91-040-23075588','#5-9-264/4,Rajeev Gandhi Nagar,I.E,Ext,Prasanthi Nagar,Hyderabad-500037,Telangana,India','#5-9-264/4,Rajeev Gandhi Nagar,I.E,Ext,Prasanthi Nagar,Hyderabad-500037,Telangana,India'),(33,'Emmennar Pharma Pvt Ltd','','','','','','','91-040-64520280','Sy No. 10,IDA,Gaddapotharam(Vill),Jinnaram(Mdl),Medak(Dist),Telangana,India','Plot No :A-4,Industrial Estate,Opposite Sanath Nagar Police Station,Sanath Nagar,Hyderabad-500018,Telangana,India.'),(34,'Sample Product','No Company','','','','','','','','');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `pocompanyid` int(11) DEFAULT NULL,
  `taxinvoicecompanyid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,27,2,14),(2,25,3,14),(3,24,4,16),(4,23,5,17),(5,4,2,18),(6,22,4,19),(7,21,6,20),(8,20,3,19),(9,19,7,21),(10,18,8,22),(11,17,9,23),(12,16,33,20),(13,15,10,25),(14,13,11,26),(15,15,10,25),(16,14,5,27),(17,12,5,29),(18,12,5,28),(19,13,11,26),(20,11,6,27),(21,16,34,24),(22,2,13,32),(23,3,12,31),(24,4,12,34),(25,4,34,30),(26,1,34,31),(27,9,34,6),(28,8,34,12),(29,26,4,15);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) DEFAULT NULL,
  `casno` varchar(45) DEFAULT NULL,
  `hsncode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2-Nitrobenzenesulfonyl Hydrazide','5906-99-0',''),(2,'5-Bromo-1H-Indole-2-Carboxylic Acid','7254-19-5',''),(3,'2-Amino-5-Bromo-4-Methylthiazol','3034-57-9',''),(4,'L-2-Aminobutyramide Hydrochloride(SABAM HCL)','7682-20-4','29241990'),(5,'2-amino-4-methyl thiozole','to be filled 1',''),(6,'Thionyl Chloride','to be fiiled 2',''),(7,'Bromine','To be fiiled 3',''),(8,'2-Methoxyethanol','to be fiiled 4',''),(9,'P-Tolualdehyde','104-87-0','29122930'),(10,'Paraformaldehyde','to be filled 6',''),(11,'Dicyclo Hexyl Carbodiimide','538-75-0','29252090'),(12,'Chloromethyl trimethylsilane','2344-80-1','29310010'),(13,'Cyclopropyl Bromide','4333-56-6','29035970'),(14,'1-3-Dimethyl-2-Imidazolidinone','80-73-9','29332990'),(15,'Piperizine(Recovery)','110-85-0','29335995'),(16,'N-Methyl-1-(Methylthio)-2-Nitroethanamine','61832-41-5','29309099'),(17,'4-Methyl Thio Benzyl Cyanide','38746-92-8','2930909090'),(18,'3-Bromopyruvic Acid','1113-59-3','29159050'),(19,'S-BINAP','76189-56-5','29310090'),(20,'Hexyl  Chloroformate','6092-54-2','29159090'),(21,'Xantphos','161265-03-8','29329990'),(22,'Nitro Ethane','79-24-3','29042090'),(23,'2-Amino acetophenone','551-93-9','29223900'),(24,'Trimethylsilyl Bromide','2857-97-8','29310090'),(25,'3,4,5-Trimethoxy Benzaldehyde','86-81-7','29124940'),(26,'Ethyl Chloro oxoacetate','4755-77-5','29171990'),(27,'4-Nitro Phenyl Acetic Acid','104-03-0','29163990');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders`
--

DROP TABLE IF EXISTS `purchaseorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `purchaseorders` (
  `orderid` int(11) NOT NULL,
  `ponumber` varchar(45) DEFAULT NULL,
  `podate` varchar(20) DEFAULT NULL,
  `poinsurance` varchar(45) DEFAULT NULL,
  `potransportation` varchar(45) DEFAULT NULL,
  `podelivery` varchar(45) DEFAULT NULL,
  `popayment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders`
--

LOCK TABLES `purchaseorders` WRITE;
/*!40000 ALTER TABLE `purchaseorders` DISABLE KEYS */;
INSERT INTO `purchaseorders` VALUES (1,'SO/23/17-18','2018-03-29','Nill','By Transport','Immediate','Advance Payment'),(2,'SO/22/17-18','2018-03-19','Nill','By Transport','Immediate','Advance Payment'),(3,'SO/21/17-18','2018-03-16','Nill','By Transport','Immediate','Advance'),(4,'SO/20/17-18','2018-02-27','Nill','By Road','Immediate','100% Advance'),(5,'SO/18/17-18','2018-02-10','Nill','By Hand','7 Days','100% Advance Payment'),(6,'SO/15/17-18','2018-01-20','Nill','By Courier','Immediate','100% Advance Payment'),(7,'SO/14/17-18','2018-01-09','Nill','By Courier','Immediate','Advance'),(8,'SO/13/17-18','2017-12-15','Nill','By Courier','Immediate','100% Advance'),(9,'SO/12/17-18','2017-12-05','Nill','By Hand','Immediate','100% Advance'),(10,'SO/11/17-18','2017-11-21','Nill','By Courier','21 Days','Advance Payment'),(11,'SO/10/17-18','2017-10-31','Nill','By Courier','Immediate','Advance Payment'),(12,'SO/00/17-18','2017-10-12','Nill','By Hand','Immediate','Advance'),(13,'SO/09/17-18','2017-10-11','Nill','By Road','3 Days','45 Days'),(14,'SO/08/17-18','2017-10-09','Nill','By Hand','Immediate','Against Advance Payment'),(15,'SO/07/17-18','2017-10-03','Nill','By Road','3 Days','45 Days'),(16,'SO/06/17-18','2017-09-20','Nill','By hand','Immediate','Advance'),(17,'So/04/17-18','2017-09-11','Nill','Courier','3-4 Days','Against Advance Payment'),(18,'SO/05/17-18','2017-09-19','Nill','Courier','3-4 Days','Against Advance Payment'),(19,'SO/07/17-18','2017-09-25','Nill','By Hand','Immediate','Against Advance Payment'),(20,'SO/02/17-18','2017-08-07','Nill','By Hand','Immediate','Advance'),(21,'SO/Sample','2017-10-12','Nill','Nill','Nill','Nill'),(22,'SO/NoPO','2017-07-08','Nill','By Hand','Immediate','Advance'),(23,'SO/01/17-18','2017-08-02','Nill','By Hand','2-3 Days','Advance'),(24,'SO/01/17-18','2017-08-02','Nill','By Hand','Immediate','Advance'),(25,'SO/NoPO','nill','Nill','Nill','Nill','Nill'),(26,'SO/NoPO','nill','nill','nil','nill','nill'),(27,'SO/NoPO','nill','nill','nill','nill','nill'),(28,'SO/NoPO','nill','nill','nill','nill','nill'),(29,'SO/19/17-18','2018-03-20','Nill','By Courier','Immediate','Advance Payment');
/*!40000 ALTER TABLE `purchaseorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selldetails`
--

DROP TABLE IF EXISTS `selldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `selldetails` (
  `orderid` int(11) NOT NULL,
  `sunits` varchar(45) DEFAULT NULL,
  `spkts` varchar(45) DEFAULT NULL,
  `sqty` varchar(45) DEFAULT NULL,
  `srate` varchar(45) DEFAULT NULL,
  `stotal` varchar(45) DEFAULT NULL,
  `sfreight` varchar(45) DEFAULT NULL,
  `stotalbeforetax` varchar(45) DEFAULT NULL,
  `sigst` varchar(45) DEFAULT NULL,
  `scgst` varchar(45) DEFAULT NULL,
  `ssgst` varchar(45) DEFAULT NULL,
  `sgrandtotal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selldetails`
--

LOCK TABLES `selldetails` WRITE;
/*!40000 ALTER TABLE `selldetails` DISABLE KEYS */;
INSERT INTO `selldetails` VALUES (1,'Kg','1','40Kg','3600','144000','0','144000','','12960','12960','169920'),(2,'Kg','1','1Kg','11000','11000','0','11000','','990','990','12980'),(3,'Kg','1','3Kg','11600','34800','0','34800','','3132','3132','41064'),(4,'Kg','1','1Kg','17000','17000','500','17500','','1575','1575','20650'),(5,'Kg','1','5Kg','7500','37500','1000','38500','6930','','','45430'),(6,'2.5Kg','5','12.5Kg','3800','47500','1000','48500','','4365','4365','57230'),(7,'5gm','1','5gm','7300','7300','0','7300','1314','','','8614'),(8,'Kg','1','3Kg','5500','16500','0','16500','','1485','1485','19470'),(9,'gm','1','5gm','1980','9900','250','10150','1827','','','11977'),(10,'gm','1','500gm','49000','49000','0','49000','8820','','','57820'),(11,'Kg','1','2Kg','6500','13000','600','13600','2448','','','16048'),(12,'gm','1','250gm','44','11000','350','11350','2043','','','13393'),(13,'Kg','1','250Kg','265','66250','0','66250','','5962.5','5962.5','78175'),(14,'gm','1','100gm','10000','10000','900','10900','','981','981','12862'),(15,'Kg','1','1500Kg','265','397500','0','397500','','35775','35775','469050'),(16,'Kg','1','10Kg','4200','42000','0','42000','7560','','','49560'),(17,'Kg','1','1Kg','16500','16500','200','16700','','1503','1503','19706'),(18,'Kg','1','1Kg','17000','17000','200','17200','','1548','1548','20296'),(19,'gm','1','100gm','10000','10000','200','10200','','918','918','12036'),(20,'gm','1','500gm','1360','1360','0','1360','245','','','1605'),(21,'gm','1','50gm','100','5000','100','5100','','459','459','6018'),(22,'gm','1','25gm','11000','11000','0','11000','1980','','','12980'),(23,'gm','1','25gm','17058','17058','0','17058','3070','','','20128'),(24,'Kg','1','1Kg','0','0','0','0','0','0','0','0'),(25,'gm','1','25gm','5000','5000','200','5200','936','','','6136'),(26,'gm','1','25gm','13000','13000','0','13000','650','','','13650'),(27,'gm','1','100gm','828','828','0','828','','74.52','74.52','977'),(28,'lts','1','2.5lts','936','936','0','936','168','','','1104'),(29,'Kg','1','2Kg','24500','24500','0','24500','','2205','2205','28910');
/*!40000 ALTER TABLE `selldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxinvoices`
--

DROP TABLE IF EXISTS `taxinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taxinvoices` (
  `orderid` int(11) NOT NULL,
  `taxinvoicenumber` varchar(45) DEFAULT NULL,
  `taxinvoicedate` varchar(20) DEFAULT NULL,
  `taxinvoiceponumber` varchar(45) DEFAULT NULL,
  `taxinvoicepodate` varchar(20) DEFAULT NULL,
  `taxinvoicetransportation` varchar(45) DEFAULT NULL,
  `taxinvoicedelivery` varchar(45) DEFAULT NULL,
  `taxinvoicepayment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxinvoices`
--

LOCK TABLES `taxinvoices` WRITE;
/*!40000 ALTER TABLE `taxinvoices` DISABLE KEYS */;
INSERT INTO `taxinvoices` VALUES (1,'28-2017-2018','2018-03-30','BRC/PO/19/2017-18','2018-03-29','By Courier','5 Days','Advance'),(2,'26-2017-2018','2018-03-24','BRC/PO/18/2017-2018','2018-03-17','By Courier','5 Days','Advance'),(3,'25-2017-2018','2018-03-23','2209825','2018-03-19','By Courier','10 Days','30 days'),(4,'24-2017-2018','2018-03-03','541708326','2018-02-26','By Courier','7 Days','Advance'),(5,'23-2017-2018','2018-02-23','140224614','2018-02-06','By Courier','7 Days','Advance'),(6,'21-2017-2018','2018-01-27','LLW/2017-18/005','2018-01-18','By Hand','7 Days','Advance'),(7,'20-2017-2018','2018-01-16','4554','2018-01-19','By Courier','3 Days','100% Advance'),(8,'19-2017-2018','2017-12-22','LLW/2017-18/002','2017-12-14','By Hand','7 Days','Advance'),(9,'18-2017-2018','2017-12-11','S/17-18/1110','2017-12-07','By Courier','15 Days','30 Days Net'),(10,'17-2017-2018','2017-12-09','2513135','2017-11-21','By Courier','15 Days','30 Days Net'),(11,'16-2017-2018','2017-11-15','201/1718/POS/TRM/00066','2017-10-31','By Courier','7 Days','100% Advance'),(12,'15-2017-2018','2017-10-17','4427','2017-10-16','By Courier','3 Days','100% Advance'),(13,'13-2017-2018','2017-10-11','PORMG/033/17-18','2017-10-11','By Road','3 Days','60 Days'),(14,'12-2017-2018','2017-10-10','LPO/011718000110','2017-10-09','By Courier','7 Days','100% Advance'),(15,'11-2017-2018','2017-10-04','PORMG/028/17-18','2017-10-03','By Road','60 Days','3 Days'),(16,'10-2017-2018','2017-09-28','VPCL/17-18/RD/R&D/5600000653','2017-09-20','By Hand','7 Days','Advance'),(17,'07-2017-2018','2017-09-16','352/vagdevi/2017-18','2017-09-06','By Hand','5 Days','Advance'),(18,'08-2017-2018','2017-09-23','AR/RM/088/2017-18','2017-09-19','By Hand','7 Days','Advance'),(19,'09-2017-2018','2017-09-27','LPO/011718000106','2017-09-25','By Courier','7 Days','100% Advance'),(20,'06-2017-2018','2017-08-07','VpCL/17-18/RD/R&D/5600000588','2017-08-05','By hand','Immediate','Advance'),(21,'14-2017-2018','2017-10-12','POCH-17180375','2017-10-11','By Courier','3 Days','Immediate'),(22,'02-2017-2018','2017-07-08','VGS8-0001/PO/2017-18','2017-07-08','By Hand','Immediate','Advance'),(23,'03-2017-2018','2017-07-27','VBL 7170080/2017-2018','2017-07-19','By hand','6 Days','30 Days'),(24,'Nill','NULL','Nill','Nill','Nill','Nill','Nill'),(25,'04-2017-2018','2017-07-31','VLS/PDPO/1718/0006','2017-07-31','By Hand','Immediate','Advance'),(26,'01-2017-2018','2017-04-29','VBL7170020/2017-18','2017-04-28','By Hand','4 Days','30 NET'),(27,'22-2017-2018','2018-01-27','2322/17-18','2017-07-20','By Hand','1 days','Advance'),(28,'05-2017-2018','2017-07-31','nill','2017-07-31','By Hand','Immediate','Advance'),(29,'27-2018-2019','2018-03-26','SPPL/GEN/352/17-18','2018-03-19','By Courier','10 Days','Advance');
/*!40000 ALTER TABLE `taxinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ramakrishna','test1@gmail.com','asd','2018-12-17 17:58:38','2018-12-17 17:58:38','sWz6ecoc1CQq3CVYCgjqXIE07KoYXUR4sgAYyBnpTfyDPUsenk9OmC1tRe9x');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 13:06:00
