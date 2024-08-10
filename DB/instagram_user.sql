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
INSERT INTO `user` VALUES ('test','1',NULL,'í…ŒìŠ¤í„°',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\á\0\0\0\á\0\0\0	m\"H\0\0\0„PLTE\0\0\0ÿÿÿüüüùùùõõõ   ¯¯¯ððð\ì\ì\ìPPP\Z\Z\Z\Ý\Ý\Ý\Í\Í\Í\ç\ç\çggg\Ù\Ù\ÙUUU\Å\Å\Å%%%‰‰‰~~~[[[\"\"\"¦¦¦III\Ð\ÐÐ¬¬¬™™™:::ooo111½½½www‘‘‘333BBBšššlll‹‹‹>>>ý‡fª\0\05IDATxœÕ\ébª:…¨X­UÑª§}ÿ÷»\àˆ„+\Â]¿[\å²³§lS·\ìp•»\Î|\êm?ñ8õ“7;n>	Ú¿\ß\Ð÷Ñƒp\â²\Í\"5\èJ›\ì\àj\ÕCh\rWŸóåŽöªd¹ÿ\\\r--×¢ƒ0r¦	7\ÜS‹\éi¥M8Ì·pOMó!øŠ „Á—§„w\Õò3@^Ž0t3ÀW\ê;û\na\×\"´\ãý„w\ÕbÛ˜Kƒœ\r\ïª\Ý	²$„\Ñ^\ÞUÛ¨{Bk2\Õ\ÆW*S~X\Õ­x¦•¯”§È¨D8É´ó•š\ÅFú\ï\ß]\ËU„¡>ûB\ÒY\Ú$œ°\Û_»¾’{‡\áD\Çþ×¦¹\å(C8x\ïú\ÔY\æ6Jºñ•ú|\áH\ïß¦L\Ø%%\Ìùw=Jr­„öG\Ç|¥\æbI!\ÂQ\×7ðª…Ð“*B˜wö«…\Ð:t\ÍU\Ñ¿7\ÎM8\èÖ†Ö•qo¼„£Ÿ®™jJx#\'\á¤k ‚88>\Â|\Ü5I_8\ÂÏ®Y(:¡û\nhk\áºk†þ!û\à¨\Ñ5W\'\ì7 baŸÑ«>\Ôûkdžj17l\Âÿ`Û¦Á$\ìO0Ás\ëgNz\éÉ\Är\à„£®¯[@7œN8\è[4ÁR2\'´ú¶iF\r‰©„}Š\èyD\Ýi„ÿ3úÍ R5X™d¶wò¸T\î\Ìg2-E-¢X2¡\rN\Î“º)M\Ö\àúê‚œG%B\Ý\í\Ì\r\É\Í\\\Ö(‡B’p\"!p.~f¯Zð|^‰iT!0µýÑž`®1ÿF\"„\í„{¾Œ\ßðõ…!ª>\èñ·û¨õH¨/6	 /;õŠ: omzoMBL	;-ºO0nð´“\Ý>ŠwOŽ½©„@ªN8€tY4IAžžF”Q\'<!¾e/hš›ZO¡\ÖCD#, ñ»\Ö=U#D<(S…†{\È÷³#ÀUš%-„¹ymó{%Dtªµ.¾Õ¯`I\'D\ìJ½  kxi¹©\Ú\0ß©-\Ç\Þ.@Á«.”*a¬þ\Ù\êG´¬¥úeTob…\Ð¬B…^Þ‡\0\ænY¹‰BÀ\n\ß	«d*7±B1gy\0i°‰ðp´dùôOýRž\Ë\åIp\'PÇ±\07ñ\é\Ø<\ïhšsõ‹y„B@=®\Ô/\æQ¾\Ú\êq\áx\ÄU\Ý=M\î;ó°\Ûsu(q\nP^¿owB€œ¤{(TÏ¡\ÞmÍ0T\Ï</‘g\ê.r\Z¼r¤¨\Íð*À–\è¼¢\n‘\Þ\ëv\ì‚gUÀ)l\ä2,–ú¥Q…ðKýó(\Õ;YÙ€ñºBÈŽ,A‡\Ëo²\0\ë\æø$ªšq´@d\Ý\Â!¢\"ªž¾x¢)\Ò}nŸ&qnŽ)Doú |g\ã<¿ •v\ëFˆ\Èƒ·C\á\äF©Nö’ðp%\Ät°õ’0³/„CH¿G/\×a:¼j\ã\á\ç\Âp³Œ\ËB4P\ÍÜ¿`BLo\äúBHûjUC’0\rÛ’p\0¨ŠeÃ¦%†B›aAbz¼|\ì²èª‚‚uxQ”y*\0]U\\¢š¼°\Ûª=\Ò)Q\r\Ý[(!ª™o^¢š\æþ\ÑÆ˜?\Ãð\nBØ¨\\R”\ÚÙ†\r\Äqž“[°Cþ\ÐYT…´\îˆG\ÔE\ã•^$:W….@¶ô®\Ø\0v­{0B`¿k g\"¡6}\Ôv_\Ê1P\íÇ¥\ä\ÚJ›BN\Ú:˜\È\â&Lfy­=„7ƒ„P\ÐK\ÊLwõ]ˆl\rö\Ø\Ü\ÒÀN\Ï\Û\Ñ\Ïròjø½¢|LN½\ãjŒ‚5¿ù.ÕŒ&õ”oÀœ¶»\Ô\ì)ÔŽ–J\rø™{\îN$\r\á\È\ÇxB•¦Œ~l¯–©	žl(ü6¥ƒñ(wm\ì\Þ|•Ž§´ÐŸ\ÌZ¡2/\Z\ãm\éE;ñ0#\Ò3¹7…\ï‡w‰V½uM¶õ\Ñ>\ÍS3‘Ü›¾©Œ	\Ø/­\Êwymª•kû¿T‡ýº+\ãK0®t¯_b\ãÃ†¦\í\'\Új½‚\ã\ä±C\Æ\\÷pþ-4OC\Ñ<&Á\ä\r\ã\î\Ð\\U»\égŸ†\Ç†“\Ï\é[\Æ49\È|)[‹c¶?œ\Ç9ö\Ùñm/p>N—E*\Ö-ú©\È¼ûE\ï•?\Ö{©«÷S°Ž\ßOÍ½ý”\ì§\é§\Ê~\ZÀ‘§þ\ê\Ò\êk\ë§.}m\Ðzd\ßtö—¶*ùó¦\ç}©ó\Ô;¾ii¬=\ÂTw³ý:\Âp8°*±EÄ§ýl§yo|\íó\Ö\è·\çn\Ä*)Ž¢|\ëij<ö\ê7õó›ó%†Gñ‡&\×qv\í\Õ\ÇL¿ªiyzÙ¬u¤\Än\ç-ðq7Ä‹3vð\ÙR|#´°»ü’-\æ\\ð¼Ÿ{‚¶w\ÌÔš0¡¹\Ó\Ë(L\ØùÃ«ö\ê/œa³>+\çgHKÉ¿Jó•\åe=Ïš\×\ÔNþ€<«óIpÜ¾¿ ‡f\\€R=\Ë(Ï\Ûc«›‡r¹!]UU“5\Õ9t$­Ý¹eu¦‚b\'\Ò{\"è®ZY\ã6M\æ>\ÛD\á±£>•+¬žñ\ëls+ýI\ì@ŒWòOjf½Jw\Çc†\Ð\Ñ%½ÿßŸ¬Çœ(I¯}8¶)I\á\×\çDI†Pú–\àS¹T\í\èpÿ÷¡Œ\ç6Æ!a)–±7\àû9so+ü!)öP%]‘¸¥N\ØW˜›\ècül‰g­Ÿ>reö¥ _\ã\ë\Ü%\ê\n+”*„b†<nØ®H‘<¿T¬½S‡\'Ê’P2©\Ú\à*;Gø½wP‘2GØ´ùû“\Ðs>xÄŸky\éQ~™\ç\Í}±óõx\ÅjP\çysg3<ðNñ6ºo^þë•\ïYOô„ƒ\í\â|ß«¨½\á,þ	\ï—WR{aP\'aƒœ\Ä**Ž”YZóD\ê\ï(i\ï=Yv³oj_ŠõQ@u\ÂöƒG\ïóFIj‰¹¨Wô\Z\ï\nj\Û1ô‡¼lµÄ€®ù¾\'¶±\éh£¨ˆýœf\ëk²C\áw…„t±\íi³\êLx\ï\Z\Ë^u\ãÌ¼Š5b˜°†H\ïÎ£?\ã®öúªôƒL¤¹$BzDÝµ™¹Š\ÚkH\Ì:½\Ã2\ÅN,“\í#ò{H)uŸ~\ÜB\êM$Oª\"’›¿tMR–EtKR²‘ ¼˜\è:ô\åRn\"\ÅÙ¢½Ó™ð€‰(\r	=T´ßŸú^\îf@œt¥ª\æ¤,j…ˆJ\Ø|;\ê-25\ÞDC@%lŽ¦\í2.¬«\îw}\Ó~:a\ÓÚ ‡’Ë«\Å2B:a3\Ò]\r\åU\ÃF°j`,\Âf,¶\ïƒSc5\Ê\Â\ÌmŒI\Ø,›f\Ýoúv£\ÏðÀü{6a\Ó*\'\ï¬8‘4ü™–]¬…°Œ½©\îKS³\Ü²¶œp§\ÃDF3K\ÓjýZ		ˆÛ®\ã Ù–\Ùn\Þ\Û		þÛ¢›¬w\Ô\ìˆ\áÈªp’Æ¥®ß¿mX„\É<®2!©\×fön›\Z²G\ìm\â&.BR\Z6}o´øIH?ñ]!1¾|c·	©:Í¹mq’óo\ïI.I\å¢ú+Ô©\â%4G¤Ÿ1ù\Òoq,—\ÔT¸\äŽV¹	M›\Ø	l\Ð\'‹Ü¶/\ÐV\ÎOH+ûLu.\Ç`KüN+\'BHë•ž;‡OŽÂ—\ný¦B„æ€’*\ÎttHM(Ç±¶böMŒ\Ð4]JF\ÝË±vuH¯\ä‹6+‰š!­2µ9\à’q£5­ƒ\Ý^õÂ„¬ú\âó°\Æ[\ê7H8R„\æˆq^q«…Vv\Ìh\Î\Ïdž\Â\âWftö\ïöœœ›\nó9\ãƒ¹”Á–#4GÿX­E\Ét‰\Zžatš²ºd\Ó_\É\ßM’°Ø«ZŽ\Ö.Î§	\ïon­œmKp&­IþT{\'\ãn\ï\äka\ÚAþ¹o?Ì²Qð\rM3\ç\ë›N¼\íÁqóIa© ˆ&¹\ëö_óöQ)½§DhÚ¹\Èù\Úô\Û_,’\Å\Âÿ9s\ÌÕ¬³\ZaÉ¨w´£§È§NXh¥o@(\ç\0TÝ„¥“¥cÜŒq!„EÐ‘O±\Ó	Ç™\Ê;ƒŽ‡‚L—§\0p\â‹;¢†\"Ú¬W\Èx\ZIX*t\Õ\ìN\æ¢\"Ð„…¬\É!“y^Ç³C¬!¢\Ð,\']M\Ö\Û\rÿ¸ws^\Ç#=™I=„\rƒØ™{;Ÿ9\Î\Ë\ßys\'4¦–5^e …ºÍ–?‰ŸŽ\Ç\Æxœú\É\Ï2+}\Õ8\Òt\ã*úÀ\Äp_¸¢\Õ\0\0\0\0IEND®B`‚','ë‚œ í…ŒìŠ¤í„°');
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
