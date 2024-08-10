-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: instagram
-- ------------------------------------------------------
-- Server version	8.4.2

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `image` longblob NOT NULL,
  `introduce` text,
  PRIMARY KEY (`email`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('test','1',NULL,'테스터',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0	m\"H\0\0\0�PLTE\0\0\0���������������������\�\�\�PPP\Z\Z\Z\�\�\�\�\�\�\�\�\�ggg\�\�\�UUU\�\�\�%%%���~~~[[[\"\"\"���III\�\�Ь�����:::ooo111���www���333BBB���lll������>>>��f�\0\05IDATx�՝\�b�:��X�UѪ�}���\����+\�]�[\����lS�\�p��\�|\�m?���8���7�;n>	ڿ\�\��уp\��\�\"5\�J�\�\�j\�Ch\rW��厁��d��\\\r--ע�0r�	7\�S�\�i�M8̷pOM�!��������w\��3@^�0t3�W\�;�\na\�\"�\���w\�bۘK��\r\�\�	�$�\�^\�Uۨ{Bk2\�\�W*S~X\��x�����ȨD8ɴ�\�F�\�\�]\�U��>�B\�Y\��$��\�_���{�\�D\��צ�\�(C8x\��\�Y\�6J���|\�H\�ߦL\�%%\��w=Jr���G\�|�\�bI!\�Q\�7�Г*B�w�����\�:t\�U\��7\�M8\�ֆ֕qo�������jJx#\'\�k �8�8>\�|\�5I_8\�ϮY(:��\nhk\�k��!�\�\�5W\'\�7 ba�ѫ>\��kd�j17l\��`ۦ�$\�O0�s\�gNz\�ɐ\�r\�����[@7�N8\�[4�R2\'���iF\r���}�\�yD\�i��3�͠R5X�d�w�T\�\�g2-E-�X2�\rN\���)M\�\��ꂜG%B\�\�\�\r\�\�\\\�(�B��p\"!p.~f�Z�|^�iT!0��ў`�1�F\"�\�{��\����!�>\�����H�/6	�/;��:�omzoMBL	;-�O0n��\�>�wO����@�N8�tY4IA��F�Q\'<!�e/h��ZO�\�CD#�, �\�=U#D<(S��{\���#�U�%-��ym�{%Dt��.�կ`I\'D\�J���kxi��\�\0ߩ-\�\�.@��.�*a��\�\�G����eTob�\��B�^އ\0\�nY��B�\n�\�	�d*7�B1gy\0i���p�d��O�R�\�\�Ip\'PǱ\07�\�\�<�\�h�s��y�B@�=��\�/\�Q�\�\�q\�x\�U\�=M\�;��\�su(q\nP^�owB����{(Tϡ\�m͍0T\�</�g\�.r\Z�r��\��*��\��\n�\�\�v\�gU�)l\�2,����Q��K��(\�;Yـ�BȎ,A�\�o�\0\�\��$��q��@d\�\�!�\"���x�)\�}n�&qn�)D�o� |g\�<� �v\�F�\���C\�\�F�N���p%\�t���0�/�CH�G/\�a:�j\�\�\�\�p��\�B4P\�ܿ`BLo\��BH�jUC�0\rےp\0��eæ%�B�aAbz�|\��誂�uxQ�y*\0]U\\����\��=\�)Q\r\�[(!��o^��\���\�Ƙ?\��\nBب\\R�\�ن\r\�q��[�C��\�YT��\�G\�E�\�^$:W�.@���\�\0v�{0B`�k g\"�6}\�v_\�1P\�ǥ\�\�J�BN\�:�\�\�&Lfy��=�7��P\�K\�Lw�]�l\r�\�\�\��N\�\�\�\�r�j���|LN�\�j��5��.Ռ&��o����\�\�)Ԏ�J\r��{\�N$\r\�\�\�xB���~l���	�l��(�6���(wm\�\�|����П\�Z�2/\Z\�m\�E;�0#\�3�7�\�w�V�uM��\�>\�S3�ܛ���	\�/�\�wym��k���T���+\�K0�t�_b\�Æ�\�\'\�j��\�\�C\�\\�p�-4OC\�<&��\�\r\�\�\�\\U�\�g��\���\�\�[\�49\�|)[�c�?�\�9�\��m/p�>N�E*\�-��\���E\�?\�{�����S��\�Ó���\�\�\�~\Z����\�\�\�k\�.}m\�zd\�t���*��\�}��\�;�ii��=\�T�w��:\�p8�*�Eħ�l�y�o|\��\�\�\�n\�*)��|\�ij<�\�7���%�G�&\�qv\�\�\�L��iyzٝ�u�\�n\�-�q7�ċ3v�\�R|#�����-\�\\����{��w\�Ԛ0��\�\�(L\��ë�\�/�a�>+\�gHKɿJ�\�e=ϐ�\�\�N��<��Ipܾ���f\\�R=\�(ρ\�c���r�!]UU�5\�9t$�ݹeu��b\'\�{\"讁ZY\�6M\�>\�D\����>�+���\�ls+�I\�@�W�Ojf�Jw\�c�\�\�%��ߟ�ǜ(I�}8�)I\�\�\�DI�P��\�S�T\�\�p����\�6Ɲ!a)��7�\��9so+�!)�P%]���N\�W��\�c�l�g��>re���_\�\�\�%\�\n+�*�b��<nخH�<�T��S�\'ʒP2�\�\�*;G��wP�2Gش���\�s>xğky\�Q~�\�\�}���x\�jP\�ysg3<�N�6�o^�땐\�YO�\�\�|�߫���\�,�	\��WR{aP��\'a��\�**��YZ�D\�\�(i\�=Yv�oj_��Q@u\���G\��FIj����W�\Z\�\nj\�1�l�č����\'��\�h�����f�\�k�C\�w��t�\�i�\�Lx\�\Z\�^u\�̼�5b���H\�Σ?\�����L��$BzDݵ���\�kH\�:�\�2\�N,�\�#�{H)u�~\�B\�M$O�\"���tMR�EtKR�����\�:�\�Rn\"\�٢�ә���(\r	=T�ߟ�^\�f@��t��\�,j��J\�|;\�-25\�DC@%l��\�2.��\�w}\�~:a\�ڠ��˫\�2B:a3�\�]\r\�U\�F�j`,\�f,�\�Sc5\�\�\�m�I\�,�f\�o�v�\����{6a\�*\'\�8�4���]������\�KS�\����p�\�DF3K\�j�Z		�ۮ\�ٖ\�n\�\�		�ۢ��w\�\�\�Ȫp�ƥ�߿mX�\�<�2!�\�f�n�\Z�G\�m\�&.BR\Z6}o��IH?�]!1�|c�	�:͹mq��o\�I.I\��+ԩ\�%4G��1�\�oq,�\�T�\�V�	M�\�	l\�\'�ܶ/\�V\�OH+�Lu.\�`K�N+\'BH땞;�O�\n��B�怒*\�ttHM(Ǳ�b�M�\�4]JF\�˱vuH�\�6+��!�2�9\��q�5��\�^���\��\�[\�7H8R�\�q^q��Vv\�h\�\�d�\�\�Wft�\�����\n�9\�����#4G�X�E\�t�\Z�at���d\�_\�\�M��ثZ�\�.Χ	\�on��mKp&�I�T{\'\�n\�\�ka\�A��o?̲Q�\rM3\�\�N�\��q�Ia� �&�\��_��Q)��Dhڹ\��\��\�_,�\�\��9s\�լ�\Zaɨw���ȧNXh�o@(\�\0T݄���c܌�q!�EБO�\�	Ǚ\�;����L��\0p\���;��\"ڬW\�x\ZIX*t\�\�N\�\"Є��\�!�y^ǳC�!��\�,\']M\�\�\r��ws^\�#=�I=�\r�ؙ{;�9\�\�\�ys\'4��5^e���͖?���\�\�x��\�\�2+}\�8\�t\�*���\�p_��\�\0\0\0\0IEND�B`�','난 테스터');
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

-- Dump completed on 2024-08-03 13:21:48
