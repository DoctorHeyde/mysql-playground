CREATE DATABASE  IF NOT EXISTS `sql_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_blog`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_blog
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date_published` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  FULLTEXT KEY `idx_title_body` (`title`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (11,'Handling a Form in React','Web applications often need to send data from browser to the backend server. Certainly, the most used way of doing so is through a HTML form, by using text inputs, radio buttons, checkboxes, selects and so on. This remains true in React. Are you looking how to handle forms in React? If so, this article is a great fit for you. Have a good read.','2019-01-01 00:00:00'),(12,'What JavaScript Framework You Should Learn to Get a Job in 2019?','Are you wondering what JavaScript framework or library you should use to land a job in 2019? In this post, I am going to go over a comparison of the most popular JavaScript frameworks that are available today. By the end of this post, you will be ready to pick the right framework to help you land a front-end developer job in 2019.','2019-03-02 00:00:00'),(13,'Building an Accessible React Modal Component','Modal is an overlay on the web-page, but has some standards to follow. WAI-ARIA Authoring Practices are the standards set by W3C. This lets bots and screen-readers know that it is a modal. It is not within the regular flow of the page. We’ll create an awesome react modal using React components.','2019-01-15 00:00:00'),(14,'Redux Vs. Mobx – What Should I Pick For My Web App?','State management is a hard problem to solve in large applications. Redux and Mobx are both external libraries that are popularly used to solve state management problems.','2019-02-20 00:00:00'),(15,'Stateful and Stateless Components in React','Today, we’re going to review what stateful and stateless components are in React, how you can tell the difference, and the complex process of deciding whether to make components stateful or not.','2019-03-29 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sql_blog'
--

--
-- Dumping routines for database 'sql_blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-30 21:40:15
