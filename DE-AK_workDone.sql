-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: DE-AK
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `workDone`
--

DROP TABLE IF EXISTS `workDone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workDone` (
  `workDoneID` int(11) NOT NULL AUTO_INCREMENT,
  `notableWork` varchar(45) DEFAULT NULL,
  `about` text,
  `year` varchar(45) DEFAULT NULL,
  `medium` varchar(45) DEFAULT NULL,
  `dimensions` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `artist_artistID` int(11) DEFAULT NULL,
  `category_categoryID` int(11) DEFAULT NULL,
  `company_companyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`workDoneID`),
  KEY `fk_workDone_artist1_idx` (`artist_artistID`),
  KEY `fk_workDone_category1_idx` (`category_categoryID`),
  KEY `fk_workDone_company1_idx` (`company_companyID`),
  CONSTRAINT `fk_workDone_artist1` FOREIGN KEY (`artist_artistID`) REFERENCES `artist` (`artistID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_category1` FOREIGN KEY (`category_categoryID`) REFERENCES `category` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_company1` FOREIGN KEY (`company_companyID`) REFERENCES `company` (`companyID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workDone`
--

LOCK TABLES `workDone` WRITE;
/*!40000 ALTER TABLE `workDone` DISABLE KEYS */;
INSERT INTO `workDone` VALUES (1,'Water Lilies','Oscar-Claude Monet was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner\n    of the movement\'s philosophy of expressing one\'s perceptions before nature, especially as applied \n    to plein air landscape painting. The term \'Impressionism\' is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which\n    was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris. Monet\'s ambition\n    of documenting the French countryside led him to adopt a method of painting the same scene many times in order to capture the changing of light and the passing \n    of the seasons. From 1883, Monet lived in Giverny, where he purchased a house and property and began a vast landscaping project which included lily ponds that would \n    become the subjects of his best-known works. In 1899, he began painting the water lilies, first in vertical views with a Japanese bridge as a central feature and \n    later in the series of large-scale paintings that was to occupy him continuously for the next 20 years of his life.',NULL,NULL,NULL,NULL,1,1,NULL),(2,NULL,'Leonardo di ser Piero da Vinci, more commonly Leonardo da Vinci, was an Italian polymath of the Renaissance, \n    whose areas of interest included invention, painting, sculpting, architecture, science, music, mathematics, engineering, \n    literature, anatomy, geology, astronomy, botany, writing, history, and cartography. He has been variously called the father \n    of palaeontology, ichnology, and architecture, and is widely considered one of the greatest painters of all time.\n    Sometimes credited with the inventions of the parachute, helicopter and tank, he epitomised the Renaissance humanist ideal.',NULL,NULL,NULL,NULL,2,1,NULL),(3,NULL,'The Mona Lisa is a half-length portrait painting by the Italian Renaissance artist \n    Leonardo da Vinci that has been described as \'the best known, the most visited, the most written about, \n    the most sung about, the most parodied work of art in the world\'. \n    The Mona Lisa is also one of the most valuable paintings in the world. \n    It holds the Guinness World Record for the highest known insurance valuation in history at $100 million in 1962, \n    which is worth nearly $800 million in 2017.','1503-1506','Oil on poplar panel','77cm x53 cm','Musee du Louvre, Paris',3,2,NULL),(4,NULL,'In mathematics, the Pythagorean theorem, also known as Pythagoras\' theorem, \n    is a fundamental relation in Euclidean geometry among the three sides of a right triangle. \n    It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of \n    the squares of the other two sides. The theorem can be written as an equation relating the lengths of the \n    sides a, b and c, often called the \'Pythagorean equation\': {a^{2}+b^{2}=c^{2},} a^{2}+b^{2}=c^{2}, \n    where c represents the length of the hypotenuse and a and b the lengths of the triangle\'s other two sides. \n    Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient \n    Greek mathematician Pythagoras as it is he who, by tradition, is credited with its first proof, \n    although no evidence of it exists.There is some evidence that Babylonian mathematicians understood the formula, \n    although little of it indicates an application within a mathematical framework.Mesopotamian, \n    Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases.\n    The theorem has been given numerous proofs – possibly the most for any mathematical theorem. \n    They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years.\n    The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean,\n    to objects that are not right triangles, and indeed, to objects that are not triangles at all, but n-dimensional solids. \n    The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; \n    popular references in literature, plays, musicals, songs, stamps and cartoons abound.',NULL,NULL,NULL,NULL,4,3,NULL),(5,NULL,'Euclid, sometimes given the name Euclid of Alexandria to distinguish him from Euclides of Megara, \n	was a Greek mathematician, often referred to as the \'founder of geometry\' or the \'father of geometry\'. \n	He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works \n	in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of \n	its publication until the late 19th or early 20th century. In the Elements, Euclid deduced the theorems of what is now called \n	Euclidean geometry from a small set of axioms. \n	Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and rigor.',NULL,NULL,NULL,NULL,5,4,NULL),(6,NULL,'Quicksort (sometimes called partition-exchange sort) is an efficient sorting algorithm, \n    serving as a systematic method for placing the elements of an array in order. Developed by Tony Hoare in 1959 and \n    published in 1961, it is still a commonly used algorithm for sorting. Quicksort is a comparison sort, \n    meaning that it can sort items of any type for which a \'less-than\' relation (formally, a total order) is defined. \n    In efficient implementations it is not a stable sort, meaning that the relative order of equal sort items is not preserved. \n    Quicksort can operate in-place on an array, requiring small additional amounts of memory to perform the sorting. \n    It is very similar to selection sort, except that it does not always choose worst-case partition.',NULL,NULL,NULL,NULL,6,5,NULL),(7,NULL,'William Henry Gates III is an American business magnate, investor, author, philanthropist, humanitarian, \n	and principal founder of Microsoft Corporation. During his career at Microsoft, Gates held the positions of chairman, \n	CEO and chief software architect, while also being the largest individual shareholder until May 2014. In 1975, \n	Gates and Paul Allen launched Microsoft, which became the world\'s largest PC software company. Gates led the company as chief executive officer until stepping down in January 2000, \n	but he remained as chairman and created the position of chief software architect for himself.',NULL,NULL,NULL,NULL,7,6,NULL),(8,NULL,'Steven Paul Jobs was an American entrepreneur and business magnate.\n	He was the chairman, chief executive officer (CEO), and a co-founder of Apple Inc., \n	chairman and majority shareholder of Pixar, a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar, \n	and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s and 1980s, \n	along with Apple co-founder Steve Wozniak.',NULL,NULL,NULL,NULL,8,6,NULL),(9,NULL,'Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, \n	and specifically designed to have as few implementation dependencies as possible. \n	It is intended to let application developers \'write once, run anywhere\', meaning that compiled Java code can run on all\n	platforms that support Java without the need for recompilation. Java applications are typically compiled to bytecode that \n	can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular \n	programming languages in use, particularly for client-server web applications, with a reported 9 million developers. \n    Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and \n	released in 1995 as a core component of Sun Microsystems\' Java platform. \n	The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them.',NULL,NULL,NULL,NULL,NULL,7,1);
/*!40000 ALTER TABLE `workDone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26 11:12:06
