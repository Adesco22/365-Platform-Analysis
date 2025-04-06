-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: db_course_conversions
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `student_engagement_purchase_summary`
--

DROP TABLE IF EXISTS `student_engagement_purchase_summary`;
/*!50001 DROP VIEW IF EXISTS `student_engagement_purchase_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_engagement_purchase_summary` AS SELECT 
 1 AS `student_id`,
 1 AS `date_registered`,
 1 AS `first_date_watched`,
 1 AS `first_date_purchased`,
 1 AS `days_diff_reg_watch`,
 1 AS `days_diff_watch_purch`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `student_engagement_purchase_summary`
--

/*!50001 DROP VIEW IF EXISTS `student_engagement_purchase_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_engagement_purchase_summary` AS select `i`.`student_id` AS `student_id`,`i`.`date_registered` AS `date_registered`,min(`e`.`date_watched`) AS `first_date_watched`,min(`p`.`date_purchased`) AS `first_date_purchased`,(to_days(min(`e`.`date_watched`)) - to_days(`i`.`date_registered`)) AS `days_diff_reg_watch`,(to_days(min(`p`.`date_purchased`)) - to_days(min(`e`.`date_watched`))) AS `days_diff_watch_purch` from ((`student_engagement` `e` join `student_info` `i` on((`e`.`student_id` = `i`.`student_id`))) left join `student_purchases` `p` on((`e`.`student_id` = `p`.`student_id`))) group by `i`.`student_id`,`i`.`date_registered` having ((min(`p`.`date_purchased`) is null) or (min(`e`.`date_watched`) <= min(`p`.`date_purchased`))) */;
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

-- Dump completed on 2025-04-06 16:59:07
