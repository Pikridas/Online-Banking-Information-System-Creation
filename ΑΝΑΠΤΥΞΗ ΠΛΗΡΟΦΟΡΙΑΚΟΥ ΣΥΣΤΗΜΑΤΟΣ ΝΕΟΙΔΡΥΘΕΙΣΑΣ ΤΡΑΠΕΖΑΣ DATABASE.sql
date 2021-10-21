-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: diaxeirisi
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `DEPTID` int(2) NOT NULL,
  `DNAME` varchar(100) DEFAULT NULL,
  `EMPLOYEES` int(2) DEFAULT NULL,
  PRIMARY KEY (`DEPTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'ΤΜΗΜΑ ΠΛΗΡΟΦΟΡΙΚΗΣ',5),(2,'ΤΜΗΜΑ ΑΣΦΑΛΕΙΑΣ ΣΥΝΑΛΛΑΓΩΝ',5),(3,'ΤΜΗΜΑ ΑΝΘΡΩΠΙΝΟΥ ΔΥΝΑΜΙΚΟΥ',5),(4,'ΤΜΗΜΑ ΔΑΝΕΙΩΝ',5),(5,'ΤΜΗΜΑ ΤΑΜΕΙΩΝ',5);
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docs` (
  `DOCID` varchar(3) NOT NULL,
  `DOCNAME` varchar(10000) DEFAULT NULL,
  `DEPTID` int(2) DEFAULT NULL,
  PRIMARY KEY (`DOCID`),
  KEY `DEPTID` (`DEPTID`),
  CONSTRAINT `docs_ibfk_1` FOREIGN KEY (`DEPTID`) REFERENCES `dept` (`DEPTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES ('D01','ΠΕΡΙΓΡΑΦΗ ΑΝΤΙΚΕΙΜΕΝΟΥ',1),('D02','ΠΕΡΙΓΡΑΦΗ ΑΠΑΙΤΗΣΕΩΝ ΧΡΗΣΤΩΝ',1),('D03','ΠΕΡΙΓΡΑΦΗ ΑΠΑΙΤΟΥΜΕΝΩΝ ΧΑΡΑΚΤΗΡΙΣΤΗΚΩΝ ΤΟΥ ΠΛΗΡΟΦΟΡΙΑΚΟΥ ΣΥΣΤΗΜΑΤΟΣ',1),('D04','ΠΕΡΙΓΡΑΦΗ ΑΠΑΙΤΗΣΕΨΝ ΧΡΗΣΤΩΝ',1),('D05','ΑΞΙΟΛΟΓΗΣΗ ΑΝΑΛΥΣΗΣ',1),('D06','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΣΧΕΔΙΑΣΗΣ',1),('D07','ΠΕΡΙΓΡΑΦΗ ΧΡΗΣΙΜΟΠΟΙΗΜΕΝΟΥ ΠΕΡΙΒΑΛΛΟΝΤΟΣ',1),('D08','ΔΗΜΙΟΥΡΓΙΑ ΕΓΧΕΙΡΙΔΙΟΥ ΧΡΗΣΤΗ',1),('D09','ΔΗΜΙΟΥΡΓΙΑ ΕΓΧΕΙΡΙΔΙΟΥ ΕΓΚΑΤΑΣΤΑΣΗΣ',1),('D10','ΑΞΙΟΛΟΓΗΣΗ ΥΛΟΠΟΙΗΣΗΣ ΠΛΗΡΟΦΟΡΙΑΚΟΥ ΣΥΣΤΗΜΑΤΟΣ',1),('D11','ΠΕΡΙΓΡΑΦΗ ΔΙΑΔΙΚΑΣΙΑΣ ΔΟΚΙΜΗΣ',1),('D12','ΑΞΙΟΛΟΓΗΣΗ ΑΠΟΤΕΛΕΣΜΑΤΩΝ',1),('D13','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΥΠΟΔΟΜΗΣ ΔΙΚΤΥΟΥ',1),('D14','ΜΕΛΕΤΗ ΚΟΣΤΟΥΣ ΥΠΟΔΟΜΗΣ ΔΙΚΤΥΟΥ',1),('D15','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΔΙΚΥΤΥΑΚΟΥ ΤΟΠΟΥ',1),('D16','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΥΛΙΚΟΤΕΧΝΙΚΗΣ ΥΠΟΔΟΜΗΣ',1),('D17','ΜΕΛΕΤΗ ΚΟΣΤΟΥΣ ΥΛΙΚΟΤΕΧΝΙΚΗΣ ΥΠΟΔΟΜΗΣ',1),('D18','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΑΣΦΑΛΕΙΑΣ ΤΟΥ ΠΛΗΡΟΦΟΡΙΑΚΟΥ ΣΥΣΤΗΜΑΤΟΣ',1),('D19','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΑΣΦΑΛΕΙΑΣ ΤΟΥ ΔΙΚΤΥΑΚΟΥ ΤΟΠΟΥ',1),('D20','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΑΣΦΑΛΕΙΑΣ ΤΟΥ ΔΙΚΤΥΟΥ ΤΗΣ ΤΡΑΠΕΖΑΣ',1),('D21','ΜΕΛΕΤΗ ΑΠΑΙΤΗΣΕΩΝ ΑΣΦΑΛΕΙΑΣ ΤΟΥ ΥΛΙΚΟΤΕΧΝΙΚΟΥ ΕΞΟΠΛΙΣΜΟΥ',1),('D22','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΣΥΝΤΗΡΗΣΗΣ ΤΟΥ ΠΛΗΡΟΦΟΡΙΑΚΟΥ ΣΥΣΤΗΜΑΤΟΣ',1),('D23','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΣΥΝΤΗΡΗΣΗΣ ΤΗΣ ΥΠΟΔΟΜΗΣ ΤΟΥ ΔΙΚΤΥΑΚΟΥ ΤΟΠΟΥ',1),('D24','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΣΥΝΤΗΡΗΣΗΣ ΤΗΣ ΥΠΟΔΟΜΗΣ ΔΙΚΤΥΟΥ',1),('D25','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΣΥΝΤΗΡΗΣΗΣ ΤΟΥ ΥΛΙΚΟΤΕΧΝΙΚΟΥ ΕΞΟΠΛΙΣΜΟΥ',1),('D26','ΑΞΙΟΛΟΓΗΣΗ ΣΥΝΤΗΡΗΣΗΣ ΤΟΥ ΠΛΗΡΟΦΟΡΙΑΚΟΥ ΣΥΣΤΗΜΑΤΟΣ',1),('D27','ΑΞΙΟΛΟΓΗΣΗ ΣΥΝΤΗΡΗΣΗΣ ΤΟΥ ΔΙΚΤΥΑΚΟΥ ΤΟΠΟΥ',1),('D28','ΑΞΙΟΛΟΓΗΣΗ ΣΥΝΤΗΡΗΣΗΣ ΥΠΟΔΟΜΗΣ ΔΙΚΤΥΟΥ',1),('D29','ΑΞΙΟΛΟΓΗΣΗ ΣΥΝΤΗΡΗΣΗΣ ΥΛΙΚΟΤΕΧΝΙΚΗΣ ΥΠΟΔΟΜΗΣ',1),('D30','ΤΕΛΙΚΗ ΑΝΑΦΟΡΑ ΑΞΙΟΛΟΓΗΣΗΣ',1),('D31','ΠΕΡΙΓΡΑΦΗ ΜΕΘΟΔΟΛΟΓΙΑΣ ΑΝΑΛΥΣΗΣ',1),('D32','ΑΠΟΔΕΙΞΗ ΣΥΝΑΛΛΑΓΗΣ',2),('D33','ΣΥΝΑΛΛΑΓΕΣ ΧΡΗΣΤΗ',2),('D34','ΑΣΤΥΝΟΜΙΚΗ ΤΑΥΤΟΤΗΤΑ Η ΔΙΑΒΑΤΗΡΙΟ',2),('D35','ΒΙΒΛΙΑΡΙΟ ΚΑΤΑΘΕΣΕΩΝ',2),('D36','ΑΝΑΛΥΣΗ ΧΩΡΟΥ ΚΑΙ ΕΓΚΑΤΑΣΤΑΣΕΩΝ',3),('D37','ΜΕΛΕΤΗ ΚΟΣΤΟΥΣ ΓΙΑ ΔΙΑΦΥΛΑΞΗ ΤΗΣ ΤΡΑΠΕΖΑΣ',3),('D38','ΠΑΡΑΚΟΛΟΥΘΗΣΗ ΣΥΣΤΗΜΑΤΩΝ ΑΣΦΑΛΕΙΑΣ ΚΑΙ ΔΙΑΧΕΙΡΙΣΗ ΑΥΤΩΝ',3),('D39','ΠΑΡΑΚΟΛΟΥΘΗΣΗ ΕΘΝΙΚΩΝ ΝΟΜΩΝ ΚΑΙ ΠΡΩΤΟΚΟΛΛΩΝ ΓΙΑ ΔΙΑΣΦΑΛΙΣΗ ΤΗΣ ΤΡΑΠΕΖΑΣ',3),('D40','ΜΕΛΕΤΗ ΘΕΣΕΩΝ ΠΟΥ ΧΡΗΖΟΥΝ ΓΡΑΜΜΑΤΕΙΑΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ',3),('D41','ΥΠΟΛΟΓΙΣΜΟΣ ΚΟΣΤΟΥΣ ΚΑΙ ΠΡΟΣΩΠΙΚΟΥ',3),('D42','ΑΞΙΟΛΟΓΗΣΗ ΠΡΟΣΩΠΙΚΟΥ',3),('D43','ΣΧΕΔΙΑΣΜΟΣ ΟΡΓΑΝΟΓΡΑΜΜΑΤΟΣ',3),('D44','ΣΧΕΔΙΑΣΜΟΣ ΘΕΣΕΩΝ ΕΡΓΑΣΙΑΣ',3),('D45','ΑΞΙΟΛΟΓΗΣΗ ΠΡΟΣΩΠΙΚΟΥ',3),('D46','ΜΕΛΕΤΗ ΑΝΑΓΚΩΝ',3),('D47','ΕΠΙΤΕΥΞΗ ΣΤΟΧΩΝ ΜΕ ΚΑΤΑΛΛΗΛΕΣ ΔΙΑΡΥΘΜΙΣΕΙΣ',3),('D48','ΜΕΛΕΤΗ ΓΙΑ ΤΗΝ ΣΩΣΤΗ ΧΡΗΣΗ ΠΟΡΩΝ',3),('D49','ΣΥΝΕΧΗΣ ΑΞΙΟΛΟΓΗΣΗ ΑΠΟΤΕΛΕΣΜΑΤΩΝ ΚΑΙ ΠΡΟΣΩΠΙΚΟΥ',3),('D50','ΣΧΕΔΙΑΣΜΟΣ ΠΟΛΙΤΙΚΗΣ ΑΝΑΠΤΥΞΗΣ ΠΡΟΣΩΠΙΚΟΥ',3),('D51','ΕΡΕΥΝΑ ΑΝΑΓΚΑΙΩΝ ΘΕΣΕΩΝ ΕΡΓΑΣΙΑΣ',3),('D52','ΔΙΑΛΟΓΗ ΒΙΟΓΡΑΦΙΚΩΝ',3),('D53','ΠΡΑΓΜΑΤΟΠΟΙΗΣΗ ΤΕΣΤ ΔΕΞΙΟΤΗΤΩΝ',3),('D54','ΑΞΙΟΛΟΓΗΣΗ ΑΠΟΤΕΛΕΣΜΑΤΩΝ',3),('D55','ΤΑΞΙΝΟΜΗΣΗ ΠΟΡΩΝ',3),('D56','ΑΜΟΙΒΕΣ ΑΝΑ ΘΕΣΗ ΕΡΓΑΣΙΑΣ',3),('D57','ΚΑΤΑΓΡΑΦΗ ΕΣΟΔΩΝ ΚΑΙ ΕΞΟΔΩΝ',3),('D58','ΚΑΤΑΓΡΑΦΗ ΔΑΝΕΙΩΝ',3),('D59','ΚΑΤΑΓΡΑΦΗ ΕΞΟΦΛΗΣΕΩΝ',3),('D60','ΚΑΘΗΜΕΡΙΝΗ ΑΞΙΟΛΟΓΗΣΗ ΑΜΟΙΒΩΝ ΜΕΣΩ ΣΥΣΤΗΜΑΤΟΣ',3),('D61','ΑΣΤΥΝΟΜΙΚΗ ΤΑΥΤΟΤΗΤΑ Η ΔΙΑΒΑΤΗΡΙΟ',4),('D62','ΕΚΚΑΘΑΡΙΣΤΙΚΟ ΕΝΙΑΙΟΥ ΦΟΡΟΥ ΙΔΙΟΚΤΗΣΙΑΣ ΑΚΙΝΗΤΩΝ - ΕΝ.Φ.Ι.Α',4),('D63','ΕΚΚΑΘΑΡΙΣΤΙΚΟ ΦΟΡΟΛΟΓΙΑΣ ΕΙΣΟΔΗΜΑΤΟΣ ΔΥΟ ΤΕΛΕΥΤΑΙΩΝ ΕΤΩΝ',4),('D64','ΑΙΤΗΣΗ ΚΑΤΑΝΑΛΩΤΙΚΟΥ ΔΑΝΕΙΟΥ',4),('D65','ΑΙΤΗΣΗ ΠΡΟΣΩΠΙΚΟΥ ΔΑΝΕΙΟΥ',4),('D66','ΑΙΤΗΣΗ ΠΡΑΣΙΝΟΥ ΔΑΝΕΙΟΥ',4),('D67','ΑΙΤΗΣΗ ΠΡΑΣΙΝΟΥ ΔΑΝΕΙΟΥ',4),('D68','ΑΙΤΗΣΗ ΥΠΕΡΑΝΑΛΗΨΗΣ',4),('D69','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΚΑΤΑΒΟΛΕΑ',5),('D70','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΠΑΡΑΛΗΠΤΗ',5),('D71','ΣΥΝΕΡΓΑΣΙΑ ΜΕ ΔΗΜΟΣΙΑ ΙΔΡΥΜΑΤΑ ΠΑΡΟΧΗΣ ΥΠΗΡΕΣΙΩΝ',5),('D72','ΕΚΔΟΣΗ ΑΠΟΔΕΙΞΗΣ ΣΥΝΑΛΛΑΓΗΣ',5),('D73','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΛΟΓΑΡΙΑΣΜΟΥ ΑΝΑΚΤΗΣΗΣ ΧΡΗΜΑΤΩΝ',5),('D74','ΕΡΩΤΗΣΕΙΣ ΠΟΥ ΑΦΟΡΟΥΝ ΤΟ ΤΡΑΠΕΖΙΚΟ ΣΥΣΤΗΜΑ',5),('D75','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΔΑΝΕΙΟΥ',5),('D76','ΣΤΟΙΧΕΙΑ ΚΑΤΑΘΕΤΗ',5),('D77','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΛΟΓΑΡΙΑΣΜΟΥ ΚΑΤΑΘΕΣΗΣ',5),('D78','ΛΗΨΗ ΣΤΟΙΧΕΙΩΝ ΛΟΓΑΡΙΑΣΜΟΥ ΜΕΤΑΦΟΡΑΣ',5);
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EMPID` varchar(4) NOT NULL,
  `ENAME` varchar(50) DEFAULT NULL,
  `JOB` varchar(20) DEFAULT NULL,
  `MANAGER` varchar(14) DEFAULT NULL,
  `SALARY` decimal(5,0) DEFAULT NULL,
  `COMMISION` decimal(5,0) DEFAULT NULL,
  `DEPTID` int(2) DEFAULT NULL,
  PRIMARY KEY (`EMPID`),
  KEY `DEPTID` (`DEPTID`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`DEPTID`) REFERENCES `dept` (`DEPTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES ('E01','Γ. ΑΝΤΩΝΙΟΥ','CEO',NULL,50000,50000,NULL),('E02','Κ. ΑΝΤΩΝΙΟΥ','DEPUTY DIRECTOR','E01',30000,30000,NULL),('E03','Α. ΡΗΓΑΣ','MANAGER','E02',5000,5000,1),('E04','Ν. ΚΑΣΑΒΕΤΗΣ','SUPERVISOR','E03',3000,3000,1),('E05','Z. ΑΠΟΣΤΟΛΟΠΟΥΛΟΥ','PROGRAMMER','E03',2500,NULL,1),('E06','Γ. ΠΑΠΑΚΩΝΣΤΑΝΤΙΝΟΥ','DESIGNER','E03',2500,NULL,1),('E07','Π. ΓΕΡΑΝΙΟΥ','DEVELOPER','E03',2500,NULL,1),('E08','Μ. ΠΙΚΡΙΔΑΣ','MANAGER','E02',6000,10000,2),('E09','Ε. ΠΑΠΑΔΟΠΟΥΛΟΥ','SUPERVISOR','E08',3000,3000,2),('E10','X. ΣΧΟΙΝΙΑ','SECURITY','E08',2500,NULL,2),('E11','Ζ. ΖΑΧΑΡΙΟΥ','SECURITY','E08',2500,NULL,2),('E12','Η. ΒΟΥΛΓΑΡΗ','SECURITY','E08',2500,NULL,2),('E13','Χ. ΛΑΜΠΡΟΥ','MANAGER','E02',5000,5000,3),('E14','Ν. ΝΤΟΥΡΑΣ','SUPERVISOR','E13',3000,3000,3),('E15','Π. ΣΥΚΑΡΑΣ','TRAINER','E13',2000,NULL,3),('E16','Φ. ΖΑΧΑΡΙΑΣ','SECRETARY','E13',2000,NULL,3),('E17','Μ. ΠΑΠΑΝΤΩΝΙΟΥ','SOCIOLOGIST','E13',2000,NULL,3),('E18','Κ. ΠΑΠΑΔΟΠΟΥΛΟΣ','MANAGER','E02',5000,5000,4),('E19','Β. ΣΕΡΕΤΗΣ','SUPERVISOR','E18',3000,3000,4),('E20','Β. ΧΟΝΔΡΟΡΙΖΟΣ','BANKER','E18',3000,NULL,4),('E21','Τ. ΜΗΤΡΟΓΛΟΥ','ACCOUNTANT','E18',2000,NULL,4),('E22','Κ. ΜΠΟΥΖΟΥΡΙΩΤΟΥ','ECONOMIST','E18',2000,NULL,4),('E23','Ν. ΝΙΚΑΚΗΣ','MANAGER','E02',5000,5000,5),('E24','Κ. ΑΜΕΡΙΔΗΣ','SUPERVISOR','E23',3000,3000,5),('E25','Γ. ΜΗΤΑΡΑΣ','CASHIER','E23',3000,NULL,5),('E26','Δ. ΚΑΡΔΙΤΣΑΣ','CASHIER','E23',2000,NULL,5),('E27','Ε. ΚΕΡΑΜΕΙΚΟΥ','CASHIER','E23',2000,NULL,5);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18 13:36:07
