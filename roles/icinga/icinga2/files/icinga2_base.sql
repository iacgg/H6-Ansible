-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: icinga2
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `icinga_acknowledgements`
--

DROP TABLE IF EXISTS `icinga_acknowledgements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_acknowledgements` (
  `acknowledgement_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_time_usec` int(11) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_sticky` smallint(6) DEFAULT '0',
  `persistent_comment` smallint(6) DEFAULT '0',
  `notify_contacts` smallint(6) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`acknowledgement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical host and service acknowledgements';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_acknowledgements`
--

LOCK TABLES `icinga_acknowledgements` WRITE;
/*!40000 ALTER TABLE `icinga_acknowledgements` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_acknowledgements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commands`
--

DROP TABLE IF EXISTS `icinga_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commands` (
  `command_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `command_line` text,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`command_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`config_type`),
  KEY `commands_i_id_idx` (`instance_id`),
  KEY `command_object_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1 COMMENT='Command definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commands`
--

LOCK TABLES `icinga_commands` WRITE;
/*!40000 ALTER TABLE `icinga_commands` DISABLE KEYS */;
INSERT INTO `icinga_commands` VALUES (1,1,1,1,'<internal>','4d0f7d2e5cca083df280c6842ab65428dd647730670018f948b8e579ecd7c4df'),(2,1,1,2,' \"/usr/lib/nagios/plugins/check_adaptec_raid\"','f7d4a61967b12a9d4ba70ac7038adfa6342cd99558de0261b0aca6d638a34051'),(3,1,1,3,' \"/usr/lib/nagios/plugins/check_apache_status.pl\"','bbaf6dab5bdae3a9ea46047948b5d23e72ae282183a6cb07f5dc6e2d77125712'),(4,1,1,4,' \"/usr/lib/nagios/plugins/check_apt\"','48e2272b128f789a7979140322c5437993ff27318fa0f4597aa540201d96eaff'),(5,1,1,5,' \"/usr/lib/nagios/plugins/check_breeze\"','1ea451ca23e51ab44800537c3ac82f69c8fe6a57f199f3a49f9f1adb68cf2225'),(6,1,1,6,' \"/usr/lib/nagios/plugins/check_by_ssh\"','a74dfce8968912bd20f60b7999d89b0dff3114b9f1282de0a15cb96a8b69b80f'),(7,1,1,7,' \"/usr/lib/nagios/plugins/check_clamd\"','ca92645d01349014b34910120e82e113e271816de427365823ab69cdcd37d3c8'),(8,1,1,8,'<internal>','4d0f7d2e5cca083df280c6842ab65428dd647730670018f948b8e579ecd7c4df'),(9,1,1,9,'<internal>','37a81bcf38c96d132737875138b01a7f95bab6fa33aeb0e4a4d0ddfa823c2329'),(10,1,1,10,' \"/usr/lib/nagios/plugins/check_db2_health\"','2eb58928e95bcd0ce584ab9e1f67c50c142308a355ade83f5e56d4bd30dcd683'),(11,1,1,11,' \"/usr/lib/nagios/plugins/check_dhcp\"','9a48c2ebeb3c1a8de4169aee358a5a850c3f1c1e93930fad8c41bd84419fe79f'),(12,1,1,12,' \"/usr/lib/nagios/plugins/check_dig\"','652700ee22284c3fb5ea36d0b1e09d1025009bba13a0689772b2cf673bc17b32'),(13,1,1,13,' \"/usr/lib/nagios/plugins/check_disk\"','eb0b1713d2b3cd521dbaede3900de6c9cf39753fa000d7cc840fa21eb91adf69'),(14,1,1,14,' \"/usr/lib/nagios/plugins/check_disk.exe\"','4f3a0c8b4c53b63392f48d62f89b6028f120f82191a549124439857ede651ad5'),(15,1,1,15,' \"/usr/lib/nagios/plugins/check_disk_smb\"','0f54ec688ddb7a03d17b6110e6c6dd078ca04ba163cbbcfc44c310bd5ae316f2'),(16,1,1,16,' \"/usr/lib/nagios/plugins/check_dns\"','a7fcfc1826e08e69357eb620be40eb6b86a558803464f20c113dca778a62fb61'),(17,1,1,17,' \"/usr/lib/nagios/plugins/check_dummy\"','d7bc789d5c140c9aba315ab94e8b993cea6d07f740d5482c9df4e29e973a56cd'),(18,1,1,18,' \"/usr/lib/nagios/plugins/check_elasticsearch\"','0750bc0545d56f58928b4569286ed4cab527a665181abc5d26f6be47be6a0dbb'),(19,1,1,19,' \"/usr/lib/nagios/plugins/check_esxi_hardware.py\"','e0a376574b6fe0c48b3c958545f40ed8761f0ac52277c0ab81705f2bea930542'),(20,1,1,20,'<internal>','4d0f7d2e5cca083df280c6842ab65428dd647730670018f948b8e579ecd7c4df'),(21,1,1,21,' \"/usr/lib/nagios/plugins/check_file_age\"','019e76a34f8f6d8cd73660ddac7f36fd8a184d8900fc4b9de0943dcdc512ac55'),(22,1,1,22,' \"/usr/lib/nagios/plugins/check_flexlm\"','2fb8bf173070bcc819f89a5dc1d8434cdd6c2c626f2c45293ed7b6b848a681d4'),(23,1,1,23,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-4\"','82ed8e80103fabb3607fd12a64c233583c6caca30d48f9f74f7d9082e606c516'),(24,1,1,24,' \"/usr/lib/nagios/plugins/check_fping\" \"$fping_address$\" \"-6\"','37d1a6169f955733472135c598987d1f02ecbe24c073cb37017d7b003a1f8360'),(25,1,1,25,' \"/usr/lib/nagios/plugins/check_ftp\"','a3f918d3bf47367416d17dc2dd4a427e74d4c56cd481d0a4f08fd0e8eddc3396'),(26,1,1,26,' \"/usr/lib/nagios/plugins/check_game\"','371f21d6afec5f8ab1636c38ce6bb0a943fd54719ebaa0b45d0baf66cd2877ba'),(27,1,1,27,' \"sudo\" \"/usr/lib/nagios/plugins/check_glusterfs\"','9a42f91b5cea7025cb1d6fdb705f6dcb79f18cd8cdf26a4d21d5ac019e1256ea'),(28,1,1,28,' \"/usr/lib/nagios/plugins/check_graphite\"','1e53a40cf3b63572fba400bd74c46c12bd94c9caaab831e8d496fd184d23d8d3'),(29,1,1,29,' \"/usr/lib/nagios/plugins/check_ping\"','810b942e2043e7979e493bd52a0e62660689ad7d113994b841ce1df4a9e94ff8'),(30,1,1,30,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"','e07784dac758b378ff5a7285876529e4f98b9b7f2001546ff9d09d780ffb8ad2'),(31,1,1,31,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"','4cdfb36a78fbf4a85da41061b10765e2170f56c88f85ea3a864a801c36031abf'),(32,1,1,32,' \"/usr/lib/nagios/plugins/check_hpasm\"','96ddfa08277d7b12c013612449f48ec3157ecdd474878dcb42bd0ac026bdf032'),(33,1,1,33,' \"/usr/lib/nagios/plugins/check_hpjd\"','701700a199e60d7aa9f66643d3b22eadc0618fc4e0f13ed30731fa51d093b8de'),(34,1,1,34,' \"/usr/lib/nagios/plugins/check_http\"','4699de2e3caae5e1a793640b303ca3d0a8010a8c1f06ecdebbb9586ada653cd2'),(35,1,1,35,'<internal>','4d0f7d2e5cca083df280c6842ab65428dd647730670018f948b8e579ecd7c4df'),(36,1,1,36,' \"/usr/bin/icingacli\" \"businessprocess\" \"process\" \"check\"','514b4f62775c31641aea4df311aa874c119e277affdc85fcee84e73503727d53'),(37,1,1,37,' \"/usr/lib/nagios/plugins/check_icmp\"','c4fb0d797060ac7f2d702b823890c2df7f2e44aa4b464da6e623caad43e04f0e'),(38,1,1,38,' \"/usr/lib/nagios/plugins/check_iftraffic.pl\"','a9b5d14c723da40890afef2aa1cdff02bfd4beda316a8631b6f54aee0b0fc491'),(39,1,1,39,' \"/usr/lib/nagios/plugins/check_iftraffic64.pl\"','9f631f9b5d8929aa53f176cf1eadbe434e598e33ce52f7c35bf1372b33836fa6'),(40,1,1,40,' \"/usr/lib/nagios/plugins/check_imap\"','c5c8cadc6fc38e0b7c3c011630a688a1828bf359a4befa1cd6b137236fd42b40'),(41,1,1,41,' \"/usr/lib/nagios/plugins/check_interfaces\"','16c6d5b683bf269c621d9681e23ac928697afacec85ffa3939c4746d3d5e93c5'),(42,1,1,42,' \"/usr/lib/nagios/plugins/check_interface_table_v3t\"','fd261fd5d93b3e0811eec83962d00b121b06c6074bfb207492ec342610d78559'),(43,1,1,43,' \"/usr/lib/nagios/plugins/check_iostat\"','a06c6dd442bfb30583e0ea4c7873b39b7504da70957289f357ceeb5f590f0c1b'),(44,1,1,44,' \"/usr/lib/nagios/plugins/check_iostats\"','94a65805db57a02a63a984d8e6ea31e20b1c8f83112818e0ee05e72201ebd9cc'),(45,1,1,45,' \"/usr/lib/nagios/plugins/check_ping\"','d0b5bd67eab2f2294ab485f8b8c9fba835db7860babe6eab0a783c90bcf35959'),(46,1,1,46,' \"/usr/lib/nagios/plugins/check_ipmi_sensor\"','8b6b20f9bee30c399371f48a361ad958fe44d60a842c6d56e5798d11ae749a79'),(47,1,1,47,' \"/usr/lib/nagios/plugins/check_jmx4perl\"','4b917a15e86592c35bcc23cb69d6923194692fa6df51b047041a1d93b2f5baa6'),(48,1,1,48,' \"/usr/lib/nagios/plugins/check_kdc\"','01dd81ffb170e6235797029b56f93ad39fabce5d7f30924b0410ad08a3a4e034'),(49,1,1,49,' \"/usr/lib/nagios/plugins/check_ldap\"','905de241902a701f2648b3a5f23f3bf964b3399ebe8cb4bdd03758b00076c2ae'),(50,1,1,50,' \"/usr/lib/nagios/plugins/check_load\"','d6505f35edb577938d52f87b21b3fe8890cf0c2930e62dc317c2aac429ebd737'),(51,1,1,51,' \"/usr/lib/nagios/plugins/check_load.exe\"','3dfe1d0815553215a83f5f3554a4270780cdf04477fdb40b6bbc1a2cf3c7933c'),(52,1,1,52,' \"/usr/lib/nagios/plugins/check_logstash\"','324e40120ea42ccedd72c809be85fb57cfa83d8138a0805dd4ccec9281c78033'),(53,1,1,53,' \"/usr/lib/nagios/plugins/check_lsi_raid\"','5d52f110036352e7e08ce08d9d17c293e231b327c23c00699c15c0ccf8048390'),(54,1,1,54,' \"/usr/lib/nagios/plugins/check_mailq\"','75be9e404e791f9cbed19606cbce602f1f51087c8072916e4000a2e20512eaf1'),(55,1,1,55,' \"/usr/lib/nagios/plugins/check_mem.pl\"','e91f7deeb783e1eb9793130ff4dafab5b91edd200948ba59c59d13b1a27432c1'),(56,1,1,56,' \"/usr/lib/nagios/plugins/check_memory.exe\"','2eba435e3db093dc3361f65f17619ad6e83637efab3dd169a4dece5fb949b88f'),(57,1,1,57,' \"/usr/lib/nagios/plugins/check_mongodb.py\"','2506e05c69bf1fcdc8e20c39bbf8aaa177cd89e30d4b0763d549917dd6d629a1'),(58,1,1,58,' \"/usr/lib/nagios/plugins/check_mssql_health\"','a69bb3e487522ce371fa01e8830a93fd1b4e4581e5c1225d78a1a0c3849c1a6f'),(59,1,1,59,' \"/usr/lib/nagios/plugins/check_mysql\"','c0a803cc9891ea4f3fead6a528210e95ff1b714027ebe2f694162d283125c714'),(60,1,1,60,' \"/usr/lib/nagios/plugins/check_mysql_health\"','1217114ec9f2f356d68fcae87a8c850d895aea333fad4937d38a7e842d3fca79'),(61,1,1,61,' \"/usr/lib/nagios/plugins/check_mysql_query\"','704a4e7c3be262eb2af24bcdf8c4f575c71514016b58c3e03827f1d32c3a20a1'),(62,1,1,62,' \"/usr/lib/nagios/plugins/negate\"','aaca8cc1e9f78a28c6425643178df811ff626252b691711f10298e54cb771e28'),(63,1,1,63,' \"/usr/lib/nagios/plugins/check_network.exe\"','1d16e8136243ebc1532e72a4c7f266a812ddbfd49e18bcc2716972416f022c40'),(64,1,1,64,' \"/usr/lib/nagios/plugins/check_nginx_status.pl\"','5e0743618d08691ee11b328455b24f9679820576cca73310e8af4f40fca726d8'),(65,1,1,65,' \"/usr/lib/nagios/plugins/check_nrpe\"','b9deced144d9302ca64ef75beb89cde743ef88222bed0e51497e350a1e7923bb'),(66,1,1,66,' \"/usr/lib/nagios/plugins/check_nt\"','ee4ae72cf872f387bae118c25ecc145da401b1ba613a5a7b5cb34648cb6fa0c6'),(67,1,1,67,' \".\\nscp.exe\" \"client\"','77dc871b15cac77dfa69a1a3809e244f14c1f3f92cd410219e11adf0ba0c5e22'),(68,1,1,68,' \".\\nscp.exe\" \"client\"','5adc33e7e42b3fee252329690706a96bd109ded6ea651d7fc0d204299a14a2c1'),(69,1,1,69,' \".\\nscp.exe\" \"client\"','99d567b386e4f16d94c58b84b522fcd7887c64f4cc9f27666603239a62d8970e'),(70,1,1,70,' \".\\nscp.exe\" \"client\"','8e4e983bc373b0f63c6b88b3509c858072892b4d3d1d0aefd1503ddcc0ee5666'),(71,1,1,71,' \".\\nscp.exe\" \"client\"','85f6aeef0c166e3330ebe0448143ecd12806b78186cae0b7abee484baa5a29fe'),(72,1,1,72,' \".\\nscp.exe\" \"client\"','644a8cd444c32ae981f06dab77f6ef971cbf732f7e3abc14b9ed6151fdee53e3'),(73,1,1,73,' \".\\nscp.exe\" \"client\"','437532be3e2c0bfac31e2902ae29ea71f063f3da9511df2ab197c8d945f1fef1'),(74,1,1,74,' \".\\nscp.exe\" \"client\"','29a6886e9a31f9d1cd7f4ff4d54fdf6a2ef7f255d736a20f20a805d93e7a7d67'),(75,1,1,75,' \".\\nscp.exe\" \"client\"','d013cb409e649d6f90fa760e0f3519cd2298ad8df403f412e354e13e950f8d27'),(76,1,1,76,' \".\\nscp.exe\" \"client\"','960fe1bf2ee7404ae7e9127f889e4a6721a6a8a9ff4cfd43532d413d16ec1fd5'),(77,1,1,77,' \".\\nscp.exe\" \"client\"','d99dc077f4053716410661073582ea9f6df8af338470a9f544c133fc1a51feb6'),(78,1,1,78,' \"/usr/lib/nagios/plugins/check_nscp_api\"','ebe8cf39f0f8363b3c499559ff43dd83595c71aa3f5cb7be3e7f87c34531e26e'),(79,1,1,79,' \"/usr/lib/nagios/plugins/check_ntp_peer\"','7ae4bad4fa4e2ec6f49451aab9f569daa9a83877ce0eaf521e901f6c5f276b58'),(80,1,1,80,' \"/usr/lib/nagios/plugins/check_ntp_time\"','1ccef91af8e77ff7ed81758c624ffb440ab88921c044468a56664adca07c27b5'),(81,1,1,81,' \"/usr/lib/nagios/plugins/check_nwc_health\"','3589db1452d55921fb8a5fcc78a776ba334638b653f415981b46c7a03c9d471e'),(82,1,1,82,' \"/usr/lib/nagios/plugins/check_oracle_health\"','8f66a4fd73d24fdceb586d750836a995612c4df18b7df5d4ef7d08de7ff1e8e8'),(83,1,1,83,' \"/usr/lib/nagios/plugins/check_dummy\"','6fe77ab36fba86013a65fdc489e7dcd5c5aa74a93bba4fac2845efe8732cb14c'),(84,1,1,84,' \"/usr/lib/nagios/plugins/check_perfmon.exe\"','c10bc070536791362cd73327f598b7ba5fafcffa92ba69929a5239f6ae30c2e2'),(85,1,1,85,' \"/usr/lib/nagios/plugins/check_pgsql\"','2f11b8154d95a09357ef2ab765371cbacf1523537cca4f1009685cb2cbf078ca'),(86,1,1,86,' \"/usr/lib/nagios/plugins/check_ping\"','8e08d7f81bc1c03bbeca574f1face6978ce5677f875367a93d9bf76e83162cde'),(87,1,1,87,' \"/usr/lib/nagios/plugins/check_ping.exe\"','4d14bdd17fb52e4d5cdb76c498e936389b51bf84797998282ebdc59c7343a926'),(88,1,1,88,' \"/usr/lib/nagios/plugins/check_ping\" \"-4\"','7a7395eb0ae99373c56392e7f690f1f9d453c19ad4f57fae41fddabac7f3a8b3'),(89,1,1,89,' \"/usr/lib/nagios/plugins/check_ping.exe\" \"-4\"','ac070c053780d316739d4655b1464e58958ac2a6d4ae767276552aa934d7ed7c'),(90,1,1,90,' \"/usr/lib/nagios/plugins/check_ping\" \"-6\"','0fda8e383959a6e9a7d83f4fa39575538a4d2f97bd741c84924e22484d85bdfb'),(91,1,1,91,' \"/usr/lib/nagios/plugins/check_ping.exe\" \"-6\"','603aa52839e71bc7c45da9eb3f3faff41915d1a911909bcad8bfd1e63acd6c2c'),(92,1,1,92,' \"/usr/lib/nagios/plugins/check_pop\"','54ac2425ac6bfe365cc625cc1c898430ff40140461b176b1ccb09b5549ba6a2e'),(93,1,1,93,' \"/usr/lib/nagios/plugins/check_postgres.pl\"','e0e0bb03c14594931de6441c5507fdc80f0f93d0f1195663d53bc98ff0f708f7'),(94,1,1,94,' \"/usr/lib/nagios/plugins/check_procs\"','de20d9e230a6a791d8694eb1ad35d74b66a4e8d4a05ff6370612c9ddcf069c50'),(95,1,1,95,' \"/usr/lib/nagios/plugins/check_procs.exe\"','c3cdff46b6ed6eb3bdaca1425a16633c1834fdd992506e7ce4fecdea8981f2e2'),(96,1,1,96,' \"/usr/lib/nagios/plugins/check_radius\"','30bbfdb07e4dc31347894ed977fd4631a7f85709a906f9d33a6e54d43ba548d7'),(97,1,1,97,'<internal>','4d0f7d2e5cca083df280c6842ab65428dd647730670018f948b8e579ecd7c4df'),(98,1,1,98,' \"/usr/lib/nagios/plugins/check_rbl\"','d091f74b8159db4d9a62c9d45d3d42ca8580e357bf6510b05ce3e8002489458f'),(99,1,1,99,' \"/usr/lib/nagios/plugins/check_redis.pl\"','0ee74ac68aa0c7e271259ef39b492ff7c73c96b19a52c48da70c865073b96fbb'),(100,1,1,100,'Object of type \'Function\'','6b15603e670354f17579efdedd63a137953b9684a55128cb8bcdd4a38ac69c63'),(101,1,1,101,' \"/usr/lib/nagios/plugins/check_service.exe\"','10550a285d3d67c77cd5f0132731f56a7442c92fa824ceb58ea1dde1aa6871a4'),(102,1,1,102,' \"/usr/lib/nagios/plugins/check_simap\"','550a9f460f50c638fdd3644acfec8bd0a589606c169d05d8e7ad6034f274158d'),(103,1,1,103,' \"/usr/lib/nagios/plugins/check_ide_smart\"','72cf477ff2aec0428f96ce0a6f0a855560115eff5ee27b8813a16c646eaa965a'),(104,1,1,104,' \"/usr/lib/nagios/plugins/check_smart_attributes\"','4235cef6a654f457f8d57a927abfea724f6edee4ecb9f2a93a5da983befb4739'),(105,1,1,105,' \"/usr/lib/nagios/plugins/check_smtp\"','c541a76fd50e1df7c75935c23df0096fe74ecfe11ff606402bc6bc33e48bd8fe'),(106,1,1,106,' \"/usr/lib/nagios/plugins/check_snmp\"','5a355022098b6f36cd445132109fa115b33d8767aa0e2908b3a58011f5394018'),(107,1,1,107,' \"/usr/lib/nagios/plugins/check_snmp_env.pl\"','97df1a69823e5d18572b6a616c68b5472273077e43be3d66a22d94b586f50dd5'),(108,1,1,108,' \"/usr/lib/nagios/plugins/check_snmp_int.pl\"','a6793e2fbfdcddf32559acb4cafc1236cd97c0228acfa397a3982dd5c8186ee3'),(109,1,1,109,' \"/usr/lib/nagios/plugins/check_snmp_load.pl\"','edcd7cd244d9229fd93bcd29c9b6930c3889ef872f3fee948f3311e068c85a8c'),(110,1,1,110,' \"/usr/lib/nagios/plugins/check_snmp_mem.pl\"','2048ad358497d85996917f4102b9093a5f58c3704ab8e15d1f23fc203e798edb'),(111,1,1,111,' \"/usr/lib/nagios/plugins/check_snmp_process.pl\"','a5c5815330643bd989e8e78ca97d1b2ba736806feefe638227459809fa423dc0'),(112,1,1,112,' \"/usr/lib/nagios/plugins/check_snmp_win.pl\"','07f61da79d0be5a9a29159ab84d40f91eab2864204e73ba20d14427d307b7d60'),(113,1,1,113,' \"/usr/lib/nagios/plugins/check_snmp_storage.pl\"','e8147ee40a8d3ffd4fae71238d574091e1cfb589bd284a62304b8733dc6cd24c'),(114,1,1,114,' \"/usr/lib/nagios/plugins/check_snmp\"','af2022abccfa9ca68b2948299b2b5fb40506b4ccd98ef9f1101f9144397dec8b'),(115,1,1,115,' \"/usr/lib/nagios/plugins/check_snmp\"','1840f56c0b92217812590e539403e775a06d5f353adfa318958614fda9465fa7'),(116,1,1,116,' \"/usr/lib/nagios/plugins/check_spop\"','2fcc4e43f31e6c0753d9bae455b3c35620078a4932e5c2a36cdbf9e73567abc0'),(117,1,1,117,' \"/usr/lib/nagios/plugins/check_squid\"','b8a59d52b938861926a6523c66ecef960d3c5f68a46f6af2200b96317b78236d'),(118,1,1,118,' \"/usr/lib/nagios/plugins/check_ssh\"','3ad84d1d5e623679aad316a2a2122b795f4a9893192c69aeff81a2f8e2b29dab'),(119,1,1,119,' \"/usr/lib/nagios/plugins/check_tcp\"','ad8dd3fde88bc1f71e138ccd9cc19ab0e7916db811ad38a03b9ebfe14487eb94'),(120,1,1,120,' \"/usr/lib/nagios/plugins/check_ssl_cert\"','d45a2169bf69e8b50b26d4b29ee0b3a66eea0b642a4f106c17ac8916a4828fb8'),(121,1,1,121,' \"/usr/lib/nagios/plugins/check_ssmtp\"','d7a8195777dcc95c74ad681b23bcc427d520d6c9effe2197bb78fc92f72a5044'),(122,1,1,122,' \"/usr/lib/nagios/plugins/check_swap\"','94f3cd9e9fa5a89a39c581ef9571400c820a52aa7ede71e29b0b482fac43103b'),(123,1,1,123,' \"/usr/lib/nagios/plugins/check_swap.exe\"','ad7fe64185b1aa43d395a380a90aa279c49f31f3aacaa20de125304cc1f2c6d2'),(124,1,1,124,' \"/usr/lib/nagios/plugins/check_tcp\"','4ab01c3b377a35a7519c20fd92fe4c83263cbb08d343d123ffe9ac66732753bb'),(125,1,1,125,' \"/usr/lib/nagios/plugins/check_udp\" \"-H\" \"$udp_address$\" \"-p\" \"$udp_port$\"','96c5fcb6cc4036363387e4a7f8a45d61889fa8247e46d7964c867ca7d79209c1'),(126,1,1,126,' \"/usr/lib/nagios/plugins/check_update.exe\"','213c1f6baae63abc60a2878b918b218fda7aa3ff8fb913cc8f823e5bffaab167'),(127,1,1,127,' \"/usr/lib/nagios/plugins/check_ups\"','587039e44ee86c15f15ff058e7f09bf0d79553e5d8dde93ae4d1ee5008afb270'),(128,1,1,128,' \"/usr/lib/nagios/plugins/check_uptime.exe\"','b579ac0352cdf5a03311a400e0160658f9102754688351ed8a8ed6d4ba2b99c2'),(129,1,1,129,' \"/usr/lib/nagios/plugins/check_users\"','ee44178411ceb598e628457eef61ed27bb5266c447c1c9c80962dd39a2a163c5'),(130,1,1,130,' \"/usr/lib/nagios/plugins/check_users.exe\"','d09803700869b063adc8402bd2d82dc60b942933e4d9dfba704f3d4b3c60819b'),(131,1,1,131,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(132,1,1,132,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(133,1,1,133,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(134,1,1,134,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(135,1,1,135,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(136,1,1,136,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(137,1,1,137,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','d901f68bbc50ff80519315700c568e2c359f039ec5dc3083356cc7bf645f759c'),(138,1,1,138,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','74fe2dd4e9d7a981d49fde0107ce153b798b5b75221681a79be9d9b4f2c4bceb'),(139,1,1,139,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(140,1,1,140,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','ea8221f2d4ddd515255dac5865573dd64cfce78db180e267260af8e66d73aeb7'),(141,1,1,141,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(142,1,1,142,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','ea8221f2d4ddd515255dac5865573dd64cfce78db180e267260af8e66d73aeb7'),(143,1,1,143,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(144,1,1,144,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(145,1,1,145,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(146,1,1,146,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(147,1,1,147,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(148,1,1,148,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(149,1,1,149,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(150,1,1,150,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(151,1,1,151,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(152,1,1,152,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(153,1,1,153,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(154,1,1,154,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(155,1,1,155,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(156,1,1,156,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(157,1,1,157,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(158,1,1,158,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(159,1,1,159,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(160,1,1,160,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(161,1,1,161,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(162,1,1,162,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','ea8221f2d4ddd515255dac5865573dd64cfce78db180e267260af8e66d73aeb7'),(163,1,1,163,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(164,1,1,164,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(165,1,1,165,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(166,1,1,166,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(167,1,1,167,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(168,1,1,168,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(169,1,1,169,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(170,1,1,170,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(171,1,1,171,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(172,1,1,172,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(173,1,1,173,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(174,1,1,174,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(175,1,1,175,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(176,1,1,176,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(177,1,1,177,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(178,1,1,178,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(179,1,1,179,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(180,1,1,180,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(181,1,1,181,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(182,1,1,182,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(183,1,1,183,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(184,1,1,184,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','19b2bad83986e55a8f1835a5bc86dc64e2875c26d1c74782e0958823e656cddc'),(185,1,1,185,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(186,1,1,186,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(187,1,1,187,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','ea8221f2d4ddd515255dac5865573dd64cfce78db180e267260af8e66d73aeb7'),(188,1,1,188,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(189,1,1,189,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(190,1,1,190,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(191,1,1,191,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(192,1,1,192,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(193,1,1,193,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(194,1,1,194,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(195,1,1,195,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(196,1,1,196,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','ea8221f2d4ddd515255dac5865573dd64cfce78db180e267260af8e66d73aeb7'),(197,1,1,197,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(198,1,1,198,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(199,1,1,199,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(200,1,1,200,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(201,1,1,201,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(202,1,1,202,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(203,1,1,203,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(204,1,1,204,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(205,1,1,205,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(206,1,1,206,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(207,1,1,207,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(208,1,1,208,' \"/usr/lib/nagios/plugins/check_vmware_esx\"','9af5ab10c4493a042c7de897684856dfb5c453302974a1adc0ff27b382aeaf7a'),(209,1,1,209,' \"/usr/lib/nagios/plugins/check_webinject\"','8c61e85d8b342343f63a63a36a5a83a22c282ea21c8838141461dedbefcc48eb'),(210,1,1,210,' \"/usr/lib/nagios/plugins/check_yum\"','a78990c8794e5bfbc565df5014bb03a067f48483f701045c465a8485c802fc6a'),(211,1,1,216,' \"/etc/icinga2/scripts/mail-host-notification.sh\"','42800ba6b4098f13bbf0c4f7b5160d99d963cd186b3704d8524d759ef3bedcef'),(212,1,1,217,' \"/etc/icinga2/scripts/mail-service-notification.sh\"','0d86b9b5ed7be8790ff38f0203381e80d710abdbb94777fd06ffdbb5dccfa74d');
/*!40000 ALTER TABLE `icinga_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commenthistory`
--

DROP TABLE IF EXISTS `icinga_commenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commenthistory` (
  `commenthistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NULL DEFAULT NULL,
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NULL DEFAULT NULL,
  `deletion_time` timestamp NULL DEFAULT NULL,
  `deletion_time_usec` int(11) DEFAULT '0',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`commenthistory_id`),
  KEY `commenthistory_delete_idx` (`instance_id`,`comment_time`,`internal_comment_id`),
  KEY `idx_commenthistory_remove` (`object_id`,`entry_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commenthistory`
--

LOCK TABLES `icinga_commenthistory` WRITE;
/*!40000 ALTER TABLE `icinga_commenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_commenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_comments`
--

DROP TABLE IF EXISTS `icinga_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_comments` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NULL DEFAULT NULL,
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NULL DEFAULT NULL,
  `name` text,
  `session_token` int(11) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comments_i_id_idx` (`instance_id`),
  KEY `idx_comments_object_id` (`object_id`),
  KEY `idx_comments_session_del` (`instance_id`,`session_token`),
  KEY `idx_comments_remove` (`object_id`,`entry_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Usercomments on Icinga objects';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_comments`
--

LOCK TABLES `icinga_comments` WRITE;
/*!40000 ALTER TABLE `icinga_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfiles`
--

DROP TABLE IF EXISTS `icinga_configfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfiles` (
  `configfile_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_type` smallint(6) DEFAULT '0',
  `configfile_path` varchar(255) DEFAULT '',
  PRIMARY KEY (`configfile_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`configfile_type`,`configfile_path`),
  KEY `configfiles_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfiles`
--

LOCK TABLES `icinga_configfiles` WRITE;
/*!40000 ALTER TABLE `icinga_configfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfilevariables`
--

DROP TABLE IF EXISTS `icinga_configfilevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfilevariables` (
  `configfilevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  PRIMARY KEY (`configfilevariable_id`),
  KEY `configfilevariables_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration file variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfilevariables`
--

LOCK TABLES `icinga_configfilevariables` WRITE;
/*!40000 ALTER TABLE `icinga_configfilevariables` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfilevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_conninfo`
--

DROP TABLE IF EXISTS `icinga_conninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_conninfo` (
  `conninfo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `agent_name` varchar(32) DEFAULT '',
  `agent_version` varchar(32) DEFAULT '',
  `disposition` varchar(32) DEFAULT '',
  `connect_source` varchar(32) DEFAULT '',
  `connect_type` varchar(32) DEFAULT '',
  `connect_time` timestamp NULL DEFAULT NULL,
  `disconnect_time` timestamp NULL DEFAULT NULL,
  `last_checkin_time` timestamp NULL DEFAULT NULL,
  `data_start_time` timestamp NULL DEFAULT NULL,
  `data_end_time` timestamp NULL DEFAULT NULL,
  `bytes_processed` bigint(20) unsigned DEFAULT '0',
  `lines_processed` bigint(20) unsigned DEFAULT '0',
  `entries_processed` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`conninfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='IDO2DB daemon connection information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_conninfo`
--

LOCK TABLES `icinga_conninfo` WRITE;
/*!40000 ALTER TABLE `icinga_conninfo` DISABLE KEYS */;
INSERT INTO `icinga_conninfo` VALUES (1,1,'icinga2 db_ido_mysql','r2.8.2-1','','','INITIAL','2018-04-23 13:54:20',NULL,'2018-04-23 13:54:20','2018-04-23 13:54:20',NULL,0,0,0),(2,1,'icinga2 db_ido_mysql','r2.8.2-1','','','INITIAL','2018-04-24 06:46:03',NULL,'2018-04-24 06:46:03','2018-04-24 06:46:03',NULL,0,0,0);
/*!40000 ALTER TABLE `icinga_conninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_addresses`
--

DROP TABLE IF EXISTS `icinga_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_addresses` (
  `contact_address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `address_number` smallint(6) DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_address_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`address_number`),
  KEY `contact_addresses_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact addresses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_addresses`
--

LOCK TABLES `icinga_contact_addresses` WRITE;
/*!40000 ALTER TABLE `icinga_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_notificationcommands`
--

DROP TABLE IF EXISTS `icinga_contact_notificationcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_notificationcommands` (
  `contact_notificationcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_notificationcommand_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`notification_type`,`command_object_id`,`command_args`),
  KEY `contact_notifcommands_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact host and service notification commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_notificationcommands`
--

LOCK TABLES `icinga_contact_notificationcommands` WRITE;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroup_members`
--

DROP TABLE IF EXISTS `icinga_contactgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroup_members` (
  `contactgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`contactgroup_member_id`),
  KEY `contactgroup_members_i_id_idx` (`instance_id`),
  KEY `cntgrpmbrs_cgid_coid` (`contactgroup_id`,`contact_object_id`),
  KEY `idx_contactgroup_members_object_id` (`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contactgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroup_members`
--

LOCK TABLES `icinga_contactgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_contactgroup_members` VALUES (1,1,1,236);
/*!40000 ALTER TABLE `icinga_contactgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroups`
--

DROP TABLE IF EXISTS `icinga_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroups` (
  `contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`contactgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contactgroup_object_id`),
  KEY `contactgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contactgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroups`
--

LOCK TABLES `icinga_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_contactgroups` VALUES (1,1,1,237,'Icinga 2 Admin Group','c83bc8d56bd3b7ea64d68ab4a45deecc001ad4ddf51805c76ea65d9e81629550');
/*!40000 ALTER TABLE `icinga_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotificationmethods`
--

DROP TABLE IF EXISTS `icinga_contactnotificationmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotificationmethods` (
  `contactnotificationmethod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactnotification_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  PRIMARY KEY (`contactnotificationmethod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contactnotification_id`,`start_time`,`start_time_usec`),
  KEY `contact_notif_meth_notif_idx` (`contactnotification_id`,`command_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notification methods';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotificationmethods`
--

LOCK TABLES `icinga_contactnotificationmethods` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotifications`
--

DROP TABLE IF EXISTS `icinga_contactnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotifications` (
  `contactnotification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactnotification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contact_object_id`,`start_time`,`start_time_usec`),
  KEY `contact_notification_idx` (`notification_id`,`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotifications`
--

LOCK TABLES `icinga_contactnotifications` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contactnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contacts`
--

DROP TABLE IF EXISTS `icinga_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contacts` (
  `contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `email_address` varchar(255) DEFAULT '',
  `pager_address` varchar(64) DEFAULT '',
  `host_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `service_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `can_submit_commands` smallint(6) DEFAULT '0',
  `notify_service_recovery` smallint(6) DEFAULT '0',
  `notify_service_warning` smallint(6) DEFAULT '0',
  `notify_service_unknown` smallint(6) DEFAULT '0',
  `notify_service_critical` smallint(6) DEFAULT '0',
  `notify_service_flapping` smallint(6) DEFAULT '0',
  `notify_service_downtime` smallint(6) DEFAULT '0',
  `notify_host_recovery` smallint(6) DEFAULT '0',
  `notify_host_down` smallint(6) DEFAULT '0',
  `notify_host_unreachable` smallint(6) DEFAULT '0',
  `notify_host_flapping` smallint(6) DEFAULT '0',
  `notify_host_downtime` smallint(6) DEFAULT '0',
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contact_object_id`),
  KEY `contacts_i_id_idx` (`instance_id`),
  KEY `contacts_object_id_idx` (`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contacts`
--

LOCK TABLES `icinga_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_contacts` DISABLE KEYS */;
INSERT INTO `icinga_contacts` VALUES (1,1,1,236,'Icinga 2 Admin','root@localhost','',0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,'2f1e256c5b5d37fd080b7b96e99c17922b8b44011326e702dc5fa1b3e51c1d01');
/*!40000 ALTER TABLE `icinga_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactstatus`
--

DROP TABLE IF EXISTS `icinga_contactstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactstatus` (
  `contactstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `last_host_notification` timestamp NULL DEFAULT NULL,
  `last_service_notification` timestamp NULL DEFAULT NULL,
  `modified_attributes` int(11) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactstatus_id`),
  UNIQUE KEY `contact_object_id` (`contact_object_id`),
  KEY `contactstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactstatus`
--

LOCK TABLES `icinga_contactstatus` WRITE;
/*!40000 ALTER TABLE `icinga_contactstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contactstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariables`
--

DROP TABLE IF EXISTS `icinga_customvariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariables` (
  `customvariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  PRIMARY KEY (`customvariable_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`config_type`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariables_i_id_idx` (`instance_id`),
  KEY `idx_customvariables_object_id` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=latin1 COMMENT='Custom variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariables`
--

LOCK TABLES `icinga_customvariables` WRITE;
/*!40000 ALTER TABLE `icinga_customvariables` DISABLE KEYS */;
INSERT INTO `icinga_customvariables` VALUES (1,1,2,1,0,'arcconf_path','/sbin/arcconf',0),(2,1,3,1,0,'apache_status_address','$check_address$',0),(3,1,3,1,0,'apache_status_ssl','false',0),(4,1,3,1,0,'check_address','Object of type \'Function\'',0),(5,1,3,1,0,'check_ipv4','false',0),(6,1,3,1,0,'check_ipv6','false',0),(7,1,5,1,0,'breeze_critical','20',0),(8,1,5,1,0,'breeze_hostname','$check_address$',0),(9,1,5,1,0,'breeze_warning','50',0),(10,1,5,1,0,'check_address','Object of type \'Function\'',0),(11,1,5,1,0,'check_ipv4','false',0),(12,1,5,1,0,'check_ipv6','false',0),(13,1,6,1,0,'by_ssh_address','$check_address$',0),(14,1,6,1,0,'by_ssh_quiet','false',0),(15,1,6,1,0,'check_address','Object of type \'Function\'',0),(16,1,6,1,0,'check_ipv4','$by_ssh_ipv4$',0),(17,1,6,1,0,'check_ipv6','$by_ssh_ipv6$',0),(18,1,7,1,0,'check_ipv4','$clamd_ipv4$',0),(19,1,7,1,0,'check_ipv6','$clamd_ipv6$',0),(20,1,7,1,0,'clamd_mismatch','warn',0),(21,1,7,1,0,'clamd_refuse','crit',0),(22,1,7,1,0,'clamd_ssl','false',0),(23,1,7,1,0,'clamd_timeout','10',0),(24,1,9,1,0,'cluster_zone','$host.name$',0),(25,1,10,1,0,'check_address','Object of type \'Function\'',0),(26,1,10,1,0,'check_ipv4','false',0),(27,1,10,1,0,'check_ipv6','false',0),(28,1,10,1,0,'db2_health_env_db2_home','/opt/ibm/db2/V10.5',0),(29,1,10,1,0,'db2_health_env_db2_version','10.5',0),(30,1,10,1,0,'db2_health_hostname','$check_address$',0),(31,1,10,1,0,'db2_health_regexp','false',0),(32,1,10,1,0,'db2_health_report','short',0),(33,1,11,1,0,'dhcp_unicast','false',0),(34,1,12,1,0,'check_address','Object of type \'Function\'',0),(35,1,12,1,0,'check_ipv4','$dig_ipv4$',0),(36,1,12,1,0,'check_ipv6','$dig_ipv6$',0),(37,1,12,1,0,'dig_server','$check_address$',0),(38,1,13,1,0,'disk_cfree','10%',0),(39,1,13,1,0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"configfs\",\"devtmpfs\",\"devfs\",\"mtmfs\",\"tracefs\",\"cgroup\",\"fuse.gvfsd-fuse\",\"fuse.gvfs-fuse-daemon\",\"fdescfs\"]',1),(40,1,13,1,0,'disk_megabytes','true',0),(41,1,13,1,0,'disk_wfree','20%',0),(42,1,14,1,0,'disk_win_unit','mb',0),(43,1,15,1,0,'disk_smb_cused','95%',0),(44,1,15,1,0,'disk_smb_wused','85%',0),(45,1,16,1,0,'check_address','Object of type \'Function\'',0),(46,1,16,1,0,'check_ipv4','false',0),(47,1,16,1,0,'check_ipv6','false',0),(48,1,16,1,0,'dns_lookup','$host.name$',0),(49,1,16,1,0,'dns_timeout','10',0),(50,1,17,1,0,'dummy_state','0',0),(51,1,17,1,0,'dummy_text','Check was successful.',0),(52,1,18,1,0,'check_address','Object of type \'Function\'',0),(53,1,18,1,0,'check_ipv4','false',0),(54,1,18,1,0,'check_ipv6','false',0),(55,1,18,1,0,'elasticsearch_host','$check_address$',0),(56,1,18,1,0,'elasticsearch_yellowcritical','false',0),(57,1,19,1,0,'esxi_hardware_host','$address$',0),(58,1,19,1,0,'esxi_hardware_nocurrent','false',0),(59,1,19,1,0,'esxi_hardware_nofan','false',0),(60,1,19,1,0,'esxi_hardware_nolcd','false',0),(61,1,19,1,0,'esxi_hardware_nopower','false',0),(62,1,19,1,0,'esxi_hardware_notemp','false',0),(63,1,19,1,0,'esxi_hardware_novolts','false',0),(64,1,19,1,0,'esxi_hardware_perfdata','false',0),(65,1,19,1,0,'esxi_hardware_port','5989',0),(66,1,21,1,0,'file_age_ignoremissing','false',0),(67,1,23,1,0,'fping_address','$address$',0),(68,1,23,1,0,'fping_cpl','15',0),(69,1,23,1,0,'fping_crta','200',0),(70,1,23,1,0,'fping_interval','500',0),(71,1,23,1,0,'fping_number','5',0),(72,1,23,1,0,'fping_wpl','5',0),(73,1,23,1,0,'fping_wrta','100',0),(74,1,24,1,0,'fping_address','$address6$',0),(75,1,24,1,0,'fping_cpl','15',0),(76,1,24,1,0,'fping_crta','200',0),(77,1,24,1,0,'fping_interval','500',0),(78,1,24,1,0,'fping_number','5',0),(79,1,24,1,0,'fping_wpl','5',0),(80,1,24,1,0,'fping_wrta','100',0),(81,1,25,1,0,'check_address','Object of type \'Function\'',0),(82,1,25,1,0,'check_ipv4','$ftp_ipv4$',0),(83,1,25,1,0,'check_ipv6','$ftp_ipv6$',0),(84,1,25,1,0,'ftp_address','$check_address$',0),(85,1,25,1,0,'ftp_mismatch','warn',0),(86,1,25,1,0,'ftp_refuse','crit',0),(87,1,25,1,0,'ftp_ssl','false',0),(88,1,25,1,0,'ftp_timeout','10',0),(89,1,26,1,0,'check_address','Object of type \'Function\'',0),(90,1,26,1,0,'check_ipv4','false',0),(91,1,26,1,0,'check_ipv6','false',0),(92,1,27,1,0,'glusterfs_disk_critical','95',0),(93,1,27,1,0,'glusterfs_disk_warning','90',0),(94,1,27,1,0,'glusterfs_inode_critical','95',0),(95,1,27,1,0,'glusterfs_inode_warning','90',0),(96,1,28,1,0,'graphite_duration','5',0),(97,1,28,1,0,'graphite_function','average',0),(98,1,28,1,0,'graphite_link_graph','false',0),(99,1,28,1,0,'graphite_message','metric count:',0),(100,1,28,1,0,'graphite_zero_on_error','false',0),(101,1,29,1,0,'check_address','Object of type \'Function\'',0),(102,1,29,1,0,'check_ipv4','false',0),(103,1,29,1,0,'check_ipv6','false',0),(104,1,29,1,0,'ping_address','$check_address$',0),(105,1,29,1,0,'ping_cpl','100',0),(106,1,29,1,0,'ping_crta','5000',0),(107,1,29,1,0,'ping_wpl','80',0),(108,1,29,1,0,'ping_wrta','3000',0),(109,1,30,1,0,'ping_address','$address$',0),(110,1,30,1,0,'ping_cpl','100',0),(111,1,30,1,0,'ping_crta','5000',0),(112,1,30,1,0,'ping_wpl','80',0),(113,1,30,1,0,'ping_wrta','3000',0),(114,1,31,1,0,'ping_address','$address6$',0),(115,1,31,1,0,'ping_cpl','100',0),(116,1,31,1,0,'ping_crta','5000',0),(117,1,31,1,0,'ping_wpl','80',0),(118,1,31,1,0,'ping_wrta','3000',0),(119,1,32,1,0,'check_address','Object of type \'Function\'',0),(120,1,32,1,0,'check_ipv4','false',0),(121,1,32,1,0,'check_ipv6','false',0),(122,1,32,1,0,'hpasm_hostname','$check_address$',0),(123,1,32,1,0,'hpasm_remote','true',0),(124,1,33,1,0,'check_address','Object of type \'Function\'',0),(125,1,33,1,0,'check_ipv4','false',0),(126,1,33,1,0,'check_ipv6','false',0),(127,1,33,1,0,'hpjd_address','$check_address$',0),(128,1,34,1,0,'check_address','Object of type \'Function\'',0),(129,1,34,1,0,'check_ipv4','$http_ipv4$',0),(130,1,34,1,0,'check_ipv6','$http_ipv6$',0),(131,1,34,1,0,'http_address','$check_address$',0),(132,1,34,1,0,'http_invertregex','false',0),(133,1,34,1,0,'http_linespan','false',0),(134,1,34,1,0,'http_link','false',0),(135,1,34,1,0,'http_sni','false',0),(136,1,34,1,0,'http_ssl','false',0),(137,1,34,1,0,'http_verbose','false',0),(138,1,36,1,0,'icingacli_businessprocess_details','false',0),(139,1,37,1,0,'icmp_address','$address$',0),(140,1,37,1,0,'icmp_cpl','15',0),(141,1,37,1,0,'icmp_crta','200',0),(142,1,37,1,0,'icmp_wpl','5',0),(143,1,37,1,0,'icmp_wrta','100',0),(144,1,38,1,0,'check_address','Object of type \'Function\'',0),(145,1,38,1,0,'check_ipv4','false',0),(146,1,38,1,0,'check_ipv6','false',0),(147,1,38,1,0,'iftraffic_address','$check_address$',0),(148,1,38,1,0,'iftraffic_crit','98',0),(149,1,38,1,0,'iftraffic_warn','85',0),(150,1,39,1,0,'check_address','Object of type \'Function\'',0),(151,1,39,1,0,'check_ipv4','false',0),(152,1,39,1,0,'check_ipv6','false',0),(153,1,39,1,0,'iftraffic64_address','$check_address$',0),(154,1,39,1,0,'iftraffic64_crit','98',0),(155,1,39,1,0,'iftraffic64_warn','85',0),(156,1,40,1,0,'check_address','Object of type \'Function\'',0),(157,1,40,1,0,'check_ipv4','$imap_ipv4$',0),(158,1,40,1,0,'check_ipv6','$imap_ipv6$',0),(159,1,40,1,0,'imap_address','$check_address$',0),(160,1,41,1,0,'check_address','Object of type \'Function\'',0),(161,1,41,1,0,'check_ipv4','false',0),(162,1,41,1,0,'check_ipv6','false',0),(163,1,41,1,0,'interfaces_address','$check_address$',0),(164,1,41,1,0,'interfaces_aliases','false',0),(165,1,41,1,0,'interfaces_down_is_ok','false',0),(166,1,41,1,0,'interfaces_match_aliases','false',0),(167,1,42,1,0,'interfacetable_64bits','false',0),(168,1,42,1,0,'interfacetable_aliasmatching','false',0),(169,1,42,1,0,'interfacetable_duplex','false',0),(170,1,42,1,0,'interfacetable_enableperfdata','false',0),(171,1,42,1,0,'interfacetable_hostdisplay','$host.display_name$',0),(172,1,42,1,0,'interfacetable_hostquery','$address$',0),(173,1,42,1,0,'interfacetable_noconfigtable','false',0),(174,1,42,1,0,'interfacetable_nohuman','false',0),(175,1,42,1,0,'interfacetable_noifloadgradient','false',0),(176,1,42,1,0,'interfacetable_noipinfo','false',0),(177,1,42,1,0,'interfacetable_notips','false',0),(178,1,42,1,0,'interfacetable_notype','false',0),(179,1,42,1,0,'interfacetable_outputshort','false',0),(180,1,42,1,0,'interfacetable_perfdataservicedesc','$service.name$',0),(181,1,42,1,0,'interfacetable_pkt','false',0),(182,1,42,1,0,'interfacetable_regex','false',0),(183,1,42,1,0,'interfacetable_snapshot','false',0),(184,1,42,1,0,'interfacetable_snmpv2','false',0),(185,1,42,1,0,'interfacetable_stp','false',0),(186,1,42,1,0,'interfacetable_trafficwithpkt','false',0),(187,1,42,1,0,'interfacetable_unixsnmp','false',0),(188,1,42,1,0,'interfacetable_vlan','false',0),(189,1,43,1,0,'iostat_cread','200',0),(190,1,43,1,0,'iostat_ctps','200',0),(191,1,43,1,0,'iostat_cwrite','200',0),(192,1,43,1,0,'iostat_disk','sda',0),(193,1,43,1,0,'iostat_wread','100',0),(194,1,43,1,0,'iostat_wtps','100',0),(195,1,43,1,0,'iostat_wwrite','100',0),(196,1,44,1,0,'iostats_critical_read','80000',0),(197,1,44,1,0,'iostats_critical_tps','5000',0),(198,1,44,1,0,'iostats_critical_wait','80',0),(199,1,44,1,0,'iostats_critical_write','25000',0),(200,1,44,1,0,'iostats_disk','sda',0),(201,1,44,1,0,'iostats_warning_read','50000',0),(202,1,44,1,0,'iostats_warning_tps','3000',0),(203,1,44,1,0,'iostats_warning_wait','50',0),(204,1,44,1,0,'iostats_warning_write','10000',0),(205,1,45,1,0,'check_address','Object of type \'Function\'',0),(206,1,45,1,0,'check_ipv4','false',0),(207,1,45,1,0,'check_ipv6','false',0),(208,1,45,1,0,'ping_address','$check_address$',0),(209,1,45,1,0,'ping_cpl','100',0),(210,1,45,1,0,'ping_crta','5000',0),(211,1,45,1,0,'ping_packets','1',0),(212,1,45,1,0,'ping_wpl','100',0),(213,1,45,1,0,'ping_wrta','5000',0),(214,1,46,1,0,'check_address','Object of type \'Function\'',0),(215,1,46,1,0,'check_ipv4','false',0),(216,1,46,1,0,'check_ipv6','false',0),(217,1,46,1,0,'ipmi_address','$check_address$',0),(218,1,46,1,0,'ipmi_protocol_lan_version','LAN_2_0',0),(219,1,47,1,0,'jmx4perl_numeric','false',0),(220,1,47,1,0,'jmx4perl_string','false',0),(221,1,47,1,0,'jmx4perl_unknown_is_critical','false',0),(222,1,47,1,0,'jmx4perl_url','http://$address$:8080/jolokia',0),(223,1,48,1,0,'check_address','Object of type \'Function\'',0),(224,1,48,1,0,'check_ipv4','false',0),(225,1,48,1,0,'check_ipv6','false',0),(226,1,48,1,0,'kdc_address','$check_address$',0),(227,1,49,1,0,'check_address','Object of type \'Function\'',0),(228,1,49,1,0,'check_ipv4','false',0),(229,1,49,1,0,'check_ipv6','false',0),(230,1,49,1,0,'ldap_address','$check_address$',0),(231,1,49,1,0,'ldap_timeout','10',0),(232,1,49,1,0,'ldap_v2','true',0),(233,1,49,1,0,'ldap_v3','false',0),(234,1,49,1,0,'ldap_verbose','false',0),(235,1,50,1,0,'load_cload1','10',0),(236,1,50,1,0,'load_cload15','4',0),(237,1,50,1,0,'load_cload5','6',0),(238,1,50,1,0,'load_percpu','false',0),(239,1,50,1,0,'load_wload1','5',0),(240,1,50,1,0,'load_wload15','3',0),(241,1,50,1,0,'load_wload5','4',0),(242,1,52,1,0,'check_address','Object of type \'Function\'',0),(243,1,52,1,0,'check_ipv4','false',0),(244,1,52,1,0,'check_ipv6','false',0),(245,1,52,1,0,'logstash_filedesc_crit','95',0),(246,1,52,1,0,'logstash_filedesc_warn','85',0),(247,1,52,1,0,'logstash_heap_crit','80',0),(248,1,52,1,0,'logstash_heap_warn','70',0),(249,1,52,1,0,'logstash_hostname','$check_address$',0),(250,1,52,1,0,'logstash_port','9600',0),(251,1,53,1,0,'storcli_path','/usr/sbin/storcli',0),(252,1,55,1,0,'mem_cache','false',0),(253,1,55,1,0,'mem_free','false',0),(254,1,55,1,0,'mem_used','false',0),(255,1,56,1,0,'memory_win_unit','mb',0),(256,1,57,1,0,'check_address','Object of type \'Function\'',0),(257,1,57,1,0,'check_ipv4','false',0),(258,1,57,1,0,'check_ipv6','false',0),(259,1,57,1,0,'mongodb_action','connections',0),(260,1,57,1,0,'mongodb_address','$check_address$',0),(261,1,57,1,0,'mongodb_perfdata','true',0),(262,1,58,1,0,'check_address','Object of type \'Function\'',0),(263,1,58,1,0,'check_ipv4','false',0),(264,1,58,1,0,'check_ipv6','false',0),(265,1,58,1,0,'mssql_health_commit','false',0),(266,1,58,1,0,'mssql_health_nooffline','false',0),(267,1,58,1,0,'mssql_health_notemp','false',0),(268,1,58,1,0,'mssql_health_offlineok','false',0),(269,1,58,1,0,'mssql_health_regexp','false',0),(270,1,58,1,0,'mssql_health_report','short',0),(271,1,59,1,0,'check_address','Object of type \'Function\'',0),(272,1,59,1,0,'check_ipv4','false',0),(273,1,59,1,0,'check_ipv6','false',0),(274,1,59,1,0,'mysql_hostname','$check_address$',0),(275,1,60,1,0,'check_address','Object of type \'Function\'',0),(276,1,60,1,0,'check_ipv4','false',0),(277,1,60,1,0,'check_ipv6','false',0),(278,1,60,1,0,'mysql_health_hostname','$check_address$',0),(279,1,61,1,0,'check_address','Object of type \'Function\'',0),(280,1,61,1,0,'check_ipv4','false',0),(281,1,61,1,0,'check_ipv6','false',0),(282,1,61,1,0,'mysql_query_hostname','$check_address$',0),(283,1,62,1,0,'negate_timeout_result','UNKNOWN',0),(284,1,63,1,0,'network_no_isatap','true',0),(285,1,64,1,0,'check_address','Object of type \'Function\'',0),(286,1,64,1,0,'check_ipv4','false',0),(287,1,64,1,0,'check_ipv6','false',0),(288,1,64,1,0,'nginx_status_critical','20000,200,300',0),(289,1,64,1,0,'nginx_status_disable_sslverify','false',0),(290,1,64,1,0,'nginx_status_host_address','$check_address$',0),(291,1,64,1,0,'nginx_status_ssl','false',0),(292,1,64,1,0,'nginx_status_timeout','15',0),(293,1,64,1,0,'nginx_status_warn','10000,100,200',0),(294,1,65,1,0,'check_address','Object of type \'Function\'',0),(295,1,65,1,0,'check_ipv4','$nrpe_ipv4$',0),(296,1,65,1,0,'check_ipv6','$nrpe_ipv6$',0),(297,1,65,1,0,'nrpe_address','$check_address$',0),(298,1,65,1,0,'nrpe_no_ssl','false',0),(299,1,65,1,0,'nrpe_timeout_unknown','false',0),(300,1,65,1,0,'nrpe_version_2','false',0),(301,1,66,1,0,'check_address','Object of type \'Function\'',0),(302,1,66,1,0,'check_ipv4','false',0),(303,1,66,1,0,'check_ipv6','false',0),(304,1,66,1,0,'nscp_address','$check_address$',0),(305,1,66,1,0,'nscp_port','12489',0),(306,1,66,1,0,'nscp_showall','false',0),(307,1,67,1,0,'nscp_boot','true',0),(308,1,67,1,0,'nscp_load_all','false',0),(309,1,67,1,0,'nscp_log_level','critical',0),(310,1,67,1,0,'nscp_modules','[\"CheckSystem\"]',1),(311,1,67,1,0,'nscp_showall','false',0),(312,1,68,1,0,'nscp_boot','true',0),(313,1,68,1,0,'nscp_counter_less','false',0),(314,1,68,1,0,'nscp_counter_op','Object of type \'Function\'',0),(315,1,68,1,0,'nscp_counter_perfsyntax','$nscp_counter_name$',0),(316,1,68,1,0,'nscp_load_all','false',0),(317,1,68,1,0,'nscp_log_level','critical',0),(318,1,68,1,0,'nscp_modules','[\"CheckSystem\"]',1),(319,1,68,1,0,'nscp_query','check_pdh',0),(320,1,68,1,0,'nscp_showall','$nscp_counter_showall$',0),(321,1,69,1,0,'nscp_boot','true',0),(322,1,69,1,0,'nscp_cpu_critical','90',0),(323,1,69,1,0,'nscp_cpu_showall','true',0),(324,1,69,1,0,'nscp_cpu_time','[\"1m\",\"5m\",\"15m\"]',1),(325,1,69,1,0,'nscp_cpu_warning','80',0),(326,1,69,1,0,'nscp_load_all','false',0),(327,1,69,1,0,'nscp_log_level','critical',0),(328,1,69,1,0,'nscp_modules','[\"CheckSystem\"]',1),(329,1,69,1,0,'nscp_query','check_cpu',0),(330,1,69,1,0,'nscp_showall','$nscp_cpu_showall$',0),(331,1,70,1,0,'nscp_boot','true',0),(332,1,70,1,0,'nscp_disk_critical','Object of type \'Function\'',0),(333,1,70,1,0,'nscp_disk_free','false',0),(334,1,70,1,0,'nscp_disk_op','Object of type \'Function\'',0),(335,1,70,1,0,'nscp_disk_showall','true',0),(336,1,70,1,0,'nscp_disk_warning','Object of type \'Function\'',0),(337,1,70,1,0,'nscp_load_all','false',0),(338,1,70,1,0,'nscp_log_level','critical',0),(339,1,70,1,0,'nscp_modules','[\"CheckDisk\"]',1),(340,1,70,1,0,'nscp_query','check_drivesize',0),(341,1,70,1,0,'nscp_showall','$nscp_disk_showall$',0),(342,1,71,1,0,'nscp_boot','true',0),(343,1,71,1,0,'nscp_load_all','false',0),(344,1,71,1,0,'nscp_log_level','critical',0),(345,1,71,1,0,'nscp_memory_committed','false',0),(346,1,71,1,0,'nscp_memory_critical','Object of type \'Function\'',0),(347,1,71,1,0,'nscp_memory_free','true',0),(348,1,71,1,0,'nscp_memory_op','Object of type \'Function\'',0),(349,1,71,1,0,'nscp_memory_physical','true',0),(350,1,71,1,0,'nscp_memory_showall','false',0),(351,1,71,1,0,'nscp_memory_warning','Object of type \'Function\'',0),(352,1,71,1,0,'nscp_modules','[\"CheckSystem\"]',1),(353,1,71,1,0,'nscp_query','check_memory',0),(354,1,71,1,0,'nscp_showall','$nscp_memory_showall$',0),(355,1,72,1,0,'nscp_boot','true',0),(356,1,72,1,0,'nscp_load_all','false',0),(357,1,72,1,0,'nscp_log_level','critical',0),(358,1,72,1,0,'nscp_modules','[\"CheckSystem\"]',1),(359,1,72,1,0,'nscp_query','check_os_version',0),(360,1,72,1,0,'nscp_showall','false',0),(361,1,73,1,0,'nscp_boot','true',0),(362,1,73,1,0,'nscp_load_all','false',0),(363,1,73,1,0,'nscp_log_level','critical',0),(364,1,73,1,0,'nscp_modules','[\"CheckSystem\"]',1),(365,1,73,1,0,'nscp_query','check_pagefile',0),(366,1,73,1,0,'nscp_showall','false',0),(367,1,74,1,0,'nscp_boot','true',0),(368,1,74,1,0,'nscp_load_all','false',0),(369,1,74,1,0,'nscp_log_level','critical',0),(370,1,74,1,0,'nscp_modules','[\"CheckSystem\"]',1),(371,1,74,1,0,'nscp_query','check_process',0),(372,1,74,1,0,'nscp_showall','false',0),(373,1,75,1,0,'nscp_boot','true',0),(374,1,75,1,0,'nscp_load_all','false',0),(375,1,75,1,0,'nscp_log_level','critical',0),(376,1,75,1,0,'nscp_modules','[\"CheckSystem\"]',1),(377,1,75,1,0,'nscp_query','check_service',0),(378,1,75,1,0,'nscp_service_ctype','state',0),(379,1,75,1,0,'nscp_service_otype','state',0),(380,1,75,1,0,'nscp_service_showall','true',0),(381,1,75,1,0,'nscp_service_type','state',0),(382,1,75,1,0,'nscp_service_wtype','state',0),(383,1,75,1,0,'nscp_showall','$nscp_service_showall$',0),(384,1,76,1,0,'nscp_boot','true',0),(385,1,76,1,0,'nscp_load_all','false',0),(386,1,76,1,0,'nscp_log_level','critical',0),(387,1,76,1,0,'nscp_modules','[\"CheckSystem\"]',1),(388,1,76,1,0,'nscp_query','check_uptime',0),(389,1,76,1,0,'nscp_showall','false',0),(390,1,77,1,0,'nscp_boot','true',0),(391,1,77,1,0,'nscp_load_all','false',0),(392,1,77,1,0,'nscp_log_level','critical',0),(393,1,77,1,0,'nscp_modules','[\"CheckHelpers\"]',1),(394,1,77,1,0,'nscp_query','check_version',0),(395,1,77,1,0,'nscp_showall','false',0),(396,1,78,1,0,'check_address','Object of type \'Function\'',0),(397,1,78,1,0,'check_ipv4','false',0),(398,1,78,1,0,'check_ipv6','false',0),(399,1,78,1,0,'nscp_api_host','$check_address$',0),(400,1,79,1,0,'check_address','Object of type \'Function\'',0),(401,1,79,1,0,'check_ipv4','$ntp_ipv4$',0),(402,1,79,1,0,'check_ipv6','$ntp_ipv6$',0),(403,1,79,1,0,'ntp_address','$check_address$',0),(404,1,80,1,0,'check_address','Object of type \'Function\'',0),(405,1,80,1,0,'check_ipv4','$ntp_ipv4$',0),(406,1,80,1,0,'check_ipv6','$ntp_ipv6$',0),(407,1,80,1,0,'ntp_address','$check_address$',0),(408,1,81,1,0,'check_address','Object of type \'Function\'',0),(409,1,81,1,0,'check_ipv4','false',0),(410,1,81,1,0,'check_ipv6','false',0),(411,1,81,1,0,'nwc_health_hostname','$check_address$',0),(412,1,81,1,0,'nwc_health_mode','hardware-health',0),(413,1,82,1,0,'check_address','Object of type \'Function\'',0),(414,1,82,1,0,'check_ipv4','false',0),(415,1,82,1,0,'check_ipv6','false',0),(416,1,82,1,0,'oracle_health_commit','false',0),(417,1,82,1,0,'oracle_health_ident','false',0),(418,1,82,1,0,'oracle_health_noperfdata','false',0),(419,1,82,1,0,'oracle_health_regexp','false',0),(420,1,82,1,0,'oracle_health_report','long',0),(421,1,82,1,0,'oracle_home','/usr/lib/oracle/11.2/client64/lib',0),(422,1,82,1,0,'oracle_tns_admin','/etc/icinga2/plugin-configs',0),(423,1,83,1,0,'dummy_state','3',0),(424,1,83,1,0,'dummy_text','No Passive Check Result Received.',0),(425,1,84,1,0,'perfmon_win_type','double',0),(426,1,84,1,0,'performance_win_wait','1000',0),(427,1,85,1,0,'check_address','Object of type \'Function\'',0),(428,1,85,1,0,'check_ipv4','false',0),(429,1,85,1,0,'check_ipv6','false',0),(430,1,85,1,0,'pgsql_hostname','$check_address$',0),(431,1,86,1,0,'check_address','Object of type \'Function\'',0),(432,1,86,1,0,'check_ipv4','false',0),(433,1,86,1,0,'check_ipv6','false',0),(434,1,86,1,0,'ping_address','$check_address$',0),(435,1,86,1,0,'ping_cpl','15',0),(436,1,86,1,0,'ping_crta','200',0),(437,1,86,1,0,'ping_wpl','5',0),(438,1,86,1,0,'ping_wrta','100',0),(439,1,87,1,0,'check_address','Object of type \'Function\'',0),(440,1,87,1,0,'check_ipv4','false',0),(441,1,87,1,0,'check_ipv6','false',0),(442,1,87,1,0,'ping_win_address','$check_address$',0),(443,1,87,1,0,'ping_win_packets','5',0),(444,1,87,1,0,'ping_win_timeout','1000',0),(445,1,88,1,0,'ping_address','$address$',0),(446,1,88,1,0,'ping_cpl','15',0),(447,1,88,1,0,'ping_crta','200',0),(448,1,88,1,0,'ping_wpl','5',0),(449,1,88,1,0,'ping_wrta','100',0),(450,1,89,1,0,'ping_win_address','$address$',0),(451,1,89,1,0,'ping_win_packets','5',0),(452,1,89,1,0,'ping_win_timeout','1000',0),(453,1,90,1,0,'ping_address','$address6$',0),(454,1,90,1,0,'ping_cpl','15',0),(455,1,90,1,0,'ping_crta','200',0),(456,1,90,1,0,'ping_wpl','5',0),(457,1,90,1,0,'ping_wrta','100',0),(458,1,91,1,0,'ping_win_address','$address6$',0),(459,1,91,1,0,'ping_win_packets','5',0),(460,1,91,1,0,'ping_win_timeout','1000',0),(461,1,92,1,0,'check_address','Object of type \'Function\'',0),(462,1,92,1,0,'check_ipv4','$pop_ipv4$',0),(463,1,92,1,0,'check_ipv6','$pop_ipv6$',0),(464,1,92,1,0,'pop_address','$check_address$',0),(465,1,93,1,0,'check_address','Object of type \'Function\'',0),(466,1,93,1,0,'check_ipv4','false',0),(467,1,93,1,0,'check_ipv6','false',0),(468,1,93,1,0,'postgres_host','$check_address$',0),(469,1,93,1,0,'postgres_production','false',0),(470,1,93,1,0,'postgres_standby','false',0),(471,1,93,1,0,'postgres_unixsocket','false',0),(472,1,94,1,0,'procs_critical','400',0),(473,1,94,1,0,'procs_nokthreads','false',0),(474,1,94,1,0,'procs_traditional','false',0),(475,1,94,1,0,'procs_warning','250',0),(476,1,96,1,0,'check_address','Object of type \'Function\'',0),(477,1,96,1,0,'check_ipv4','false',0),(478,1,96,1,0,'check_ipv6','false',0),(479,1,96,1,0,'radius_address','$check_address$',0),(480,1,98,1,0,'check_address','Object of type \'Function\'',0),(481,1,98,1,0,'check_ipv4','false',0),(482,1,98,1,0,'check_ipv6','false',0),(483,1,98,1,0,'rbl_critical','1',0),(484,1,98,1,0,'rbl_hostname','$check_address$',0),(485,1,98,1,0,'rbl_timeout','15',0),(486,1,98,1,0,'rbl_warning','1',0),(487,1,99,1,0,'check_address','Object of type \'Function\'',0),(488,1,99,1,0,'check_ipv4','false',0),(489,1,99,1,0,'check_ipv6','false',0),(490,1,99,1,0,'redis_hostname','$check_address$',0),(491,1,99,1,0,'redis_perfparse','false',0),(492,1,99,1,0,'redis_prev_perfdata','false',0),(493,1,102,1,0,'check_address','Object of type \'Function\'',0),(494,1,102,1,0,'check_ipv4','$simap_ipv4$',0),(495,1,102,1,0,'check_ipv6','$simap_ipv6$',0),(496,1,102,1,0,'simap_address','$check_address$',0),(497,1,104,1,0,'smart_attributes_config_path','/etc/icinga2/plugins-config/check_smartdb.json',0),(498,1,105,1,0,'check_address','Object of type \'Function\'',0),(499,1,105,1,0,'check_ipv4','$smtp_ipv4$',0),(500,1,105,1,0,'check_ipv6','$smtp_ipv6$',0),(501,1,105,1,0,'smtp_address','$check_address$',0),(502,1,106,1,0,'snmp_address','Object of type \'Function\'',0),(503,1,106,1,0,'snmp_community','public',0),(504,1,106,1,0,'snmp_invert_search','false',0),(505,1,106,1,0,'snmp_timeout','10',0),(506,1,107,1,0,'check_address','Object of type \'Function\'',0),(507,1,107,1,0,'check_ipv4','false',0),(508,1,107,1,0,'check_ipv6','false',0),(509,1,107,1,0,'snmp_address','$check_address$',0),(510,1,107,1,0,'snmp_authprotocol','md5,des',0),(511,1,107,1,0,'snmp_community','public',0),(512,1,107,1,0,'snmp_env_type','cisco',0),(513,1,107,1,0,'snmp_login','snmpuser',0),(514,1,107,1,0,'snmp_nocrypt','true',0),(515,1,107,1,0,'snmp_perf','true',0),(516,1,107,1,0,'snmp_timeout','5',0),(517,1,107,1,0,'snmp_v2','false',0),(518,1,107,1,0,'snmp_v3','false',0),(519,1,107,1,0,'snmp_v3_use_authprotocol','false',0),(520,1,107,1,0,'snmp_v3_use_privpass','false',0),(521,1,108,1,0,'check_address','Object of type \'Function\'',0),(522,1,108,1,0,'check_ipv4','false',0),(523,1,108,1,0,'check_ipv6','false',0),(524,1,108,1,0,'snmp_address','$check_address$',0),(525,1,108,1,0,'snmp_authprotocol','md5,des',0),(526,1,108,1,0,'snmp_community','public',0),(527,1,108,1,0,'snmp_crit','0,600',0),(528,1,108,1,0,'snmp_interface','eth0',0),(529,1,108,1,0,'snmp_interface_64bit','false',0),(530,1,108,1,0,'snmp_interface_bits_bytes','true',0),(531,1,108,1,0,'snmp_interface_delta','300',0),(532,1,108,1,0,'snmp_interface_errors','true',0),(533,1,108,1,0,'snmp_interface_ifalias','false',0),(534,1,108,1,0,'snmp_interface_ifname','false',0),(535,1,108,1,0,'snmp_interface_kbits','true',0),(536,1,108,1,0,'snmp_interface_megabytes','true',0),(537,1,108,1,0,'snmp_interface_noregexp','false',0),(538,1,108,1,0,'snmp_interface_percent','false',0),(539,1,108,1,0,'snmp_interface_perf','true',0),(540,1,108,1,0,'snmp_interface_warncrit_percent','false',0),(541,1,108,1,0,'snmp_login','snmpuser',0),(542,1,108,1,0,'snmp_nocrypt','true',0),(543,1,108,1,0,'snmp_perf','true',0),(544,1,108,1,0,'snmp_timeout','5',0),(545,1,108,1,0,'snmp_v2','false',0),(546,1,108,1,0,'snmp_v3','false',0),(547,1,108,1,0,'snmp_v3_use_authprotocol','false',0),(548,1,108,1,0,'snmp_v3_use_privpass','false',0),(549,1,108,1,0,'snmp_warn','300,400',0),(550,1,109,1,0,'check_address','Object of type \'Function\'',0),(551,1,109,1,0,'check_ipv4','false',0),(552,1,109,1,0,'check_ipv6','false',0),(553,1,109,1,0,'snmp_address','$check_address$',0),(554,1,109,1,0,'snmp_authprotocol','md5,des',0),(555,1,109,1,0,'snmp_community','public',0),(556,1,109,1,0,'snmp_crit','95',0),(557,1,109,1,0,'snmp_load_type','stand',0),(558,1,109,1,0,'snmp_login','snmpuser',0),(559,1,109,1,0,'snmp_nocrypt','true',0),(560,1,109,1,0,'snmp_perf','true',0),(561,1,109,1,0,'snmp_timeout','5',0),(562,1,109,1,0,'snmp_v2','false',0),(563,1,109,1,0,'snmp_v3','false',0),(564,1,109,1,0,'snmp_v3_use_authprotocol','false',0),(565,1,109,1,0,'snmp_v3_use_privpass','false',0),(566,1,109,1,0,'snmp_warn','85',0),(567,1,110,1,0,'check_address','Object of type \'Function\'',0),(568,1,110,1,0,'check_ipv4','false',0),(569,1,110,1,0,'check_ipv6','false',0),(570,1,110,1,0,'snmp_address','$check_address$',0),(571,1,110,1,0,'snmp_authprotocol','md5,des',0),(572,1,110,1,0,'snmp_community','public',0),(573,1,110,1,0,'snmp_crit','98,80',0),(574,1,110,1,0,'snmp_is_cisco','false',0),(575,1,110,1,0,'snmp_login','snmpuser',0),(576,1,110,1,0,'snmp_nocrypt','true',0),(577,1,110,1,0,'snmp_perf','true',0),(578,1,110,1,0,'snmp_timeout','5',0),(579,1,110,1,0,'snmp_v2','false',0),(580,1,110,1,0,'snmp_v3','false',0),(581,1,110,1,0,'snmp_v3_use_authprotocol','false',0),(582,1,110,1,0,'snmp_v3_use_privpass','false',0),(583,1,110,1,0,'snmp_warn','94,50',0),(584,1,111,1,0,'check_address','Object of type \'Function\'',0),(585,1,111,1,0,'check_ipv4','false',0),(586,1,111,1,0,'check_ipv6','false',0),(587,1,111,1,0,'snmp_address','$check_address$',0),(588,1,111,1,0,'snmp_authprotocol','md5,des',0),(589,1,111,1,0,'snmp_community','public',0),(590,1,111,1,0,'snmp_crit','0',0),(591,1,111,1,0,'snmp_login','snmpuser',0),(592,1,111,1,0,'snmp_nocrypt','true',0),(593,1,111,1,0,'snmp_perf','true',0),(594,1,111,1,0,'snmp_process_cpu_threshold','0,0',0),(595,1,111,1,0,'snmp_process_cpu_usage','false',0),(596,1,111,1,0,'snmp_process_mem_threshold','0,0',0),(597,1,111,1,0,'snmp_process_mem_usage','false',0),(598,1,111,1,0,'snmp_process_name','.*',0),(599,1,111,1,0,'snmp_process_use_params','false',0),(600,1,111,1,0,'snmp_timeout','5',0),(601,1,111,1,0,'snmp_v2','false',0),(602,1,111,1,0,'snmp_v3','false',0),(603,1,111,1,0,'snmp_v3_use_authprotocol','false',0),(604,1,111,1,0,'snmp_v3_use_privpass','false',0),(605,1,111,1,0,'snmp_warn','0',0),(606,1,112,1,0,'check_address','Object of type \'Function\'',0),(607,1,112,1,0,'check_ipv4','false',0),(608,1,112,1,0,'check_ipv6','false',0),(609,1,112,1,0,'snmp_address','$check_address$',0),(610,1,112,1,0,'snmp_authprotocol','md5,des',0),(611,1,112,1,0,'snmp_community','public',0),(612,1,112,1,0,'snmp_login','snmpuser',0),(613,1,112,1,0,'snmp_nocrypt','true',0),(614,1,112,1,0,'snmp_service_name','.*',0),(615,1,112,1,0,'snmp_timeout','5',0),(616,1,112,1,0,'snmp_v2','false',0),(617,1,112,1,0,'snmp_v3','false',0),(618,1,112,1,0,'snmp_v3_use_authprotocol','false',0),(619,1,112,1,0,'snmp_v3_use_privpass','false',0),(620,1,113,1,0,'check_address','Object of type \'Function\'',0),(621,1,113,1,0,'check_ipv4','false',0),(622,1,113,1,0,'check_ipv6','false',0),(623,1,113,1,0,'snmp_address','$check_address$',0),(624,1,113,1,0,'snmp_authprotocol','md5,des',0),(625,1,113,1,0,'snmp_community','public',0),(626,1,113,1,0,'snmp_crit','90',0),(627,1,113,1,0,'snmp_login','snmpuser',0),(628,1,113,1,0,'snmp_nocrypt','true',0),(629,1,113,1,0,'snmp_perf','true',0),(630,1,113,1,0,'snmp_storage_name','^/$$',0),(631,1,113,1,0,'snmp_timeout','5',0),(632,1,113,1,0,'snmp_v2','false',0),(633,1,113,1,0,'snmp_v3','false',0),(634,1,113,1,0,'snmp_v3_use_authprotocol','false',0),(635,1,113,1,0,'snmp_v3_use_privpass','false',0),(636,1,113,1,0,'snmp_warn','80',0),(637,1,114,1,0,'snmp_address','Object of type \'Function\'',0),(638,1,114,1,0,'snmp_community','public',0),(639,1,114,1,0,'snmp_invert_search','false',0),(640,1,114,1,0,'snmp_oid','1.3.6.1.2.1.1.3.0',0),(641,1,114,1,0,'snmp_timeout','10',0),(642,1,115,1,0,'check_address','Object of type \'Function\'',0),(643,1,115,1,0,'check_ipv4','false',0),(644,1,115,1,0,'check_ipv6','false',0),(645,1,115,1,0,'snmpv3_address','$check_address$',0),(646,1,115,1,0,'snmpv3_auth_alg','SHA',0),(647,1,115,1,0,'snmpv3_priv_alg','AES',0),(648,1,115,1,0,'snmpv3_seclevel','authPriv',0),(649,1,115,1,0,'snmpv3_timeout','10',0),(650,1,116,1,0,'check_address','Object of type \'Function\'',0),(651,1,116,1,0,'check_ipv4','$spop_ipv4$',0),(652,1,116,1,0,'check_ipv6','$spop_ipv6$',0),(653,1,116,1,0,'spop_address','$check_address$',0),(654,1,117,1,0,'check_address','Object of type \'Function\'',0),(655,1,117,1,0,'check_ipv4','false',0),(656,1,117,1,0,'check_ipv6','false',0),(657,1,117,1,0,'squid_client','/usr/bin/squidclient',0),(658,1,117,1,0,'squid_hostname','$check_address$',0),(659,1,118,1,0,'check_address','Object of type \'Function\'',0),(660,1,118,1,0,'check_ipv4','$ssh_ipv4$',0),(661,1,118,1,0,'check_ipv6','$ssh_ipv6$',0),(662,1,118,1,0,'ssh_address','$check_address$',0),(663,1,119,1,0,'check_address','Object of type \'Function\'',0),(664,1,119,1,0,'check_ipv4','false',0),(665,1,119,1,0,'check_ipv6','false',0),(666,1,119,1,0,'ssl_address','$check_address$',0),(667,1,119,1,0,'ssl_cert_valid_days_critical','false',0),(668,1,119,1,0,'ssl_cert_valid_days_warn','false',0),(669,1,119,1,0,'ssl_port','443',0),(670,1,120,1,0,'check_address','Object of type \'Function\'',0),(671,1,120,1,0,'check_ipv4','false',0),(672,1,120,1,0,'check_ipv6','false',0),(673,1,120,1,0,'ssl_cert_address','$check_address$',0),(674,1,120,1,0,'ssl_cert_port','443',0),(675,1,121,1,0,'check_address','Object of type \'Function\'',0),(676,1,121,1,0,'check_ipv4','$ssmtp_ipv4$',0),(677,1,121,1,0,'check_ipv6','$ssmtp_ipv6$',0),(678,1,121,1,0,'ssmtp_address','$check_address$',0),(679,1,122,1,0,'swap_allswaps','false',0),(680,1,122,1,0,'swap_cfree','25',0),(681,1,122,1,0,'swap_integer','false',0),(682,1,122,1,0,'swap_wfree','50',0),(683,1,123,1,0,'swap_win_unit','mb',0),(684,1,124,1,0,'check_address','Object of type \'Function\'',0),(685,1,124,1,0,'check_ipv4','$tcp_ipv4$',0),(686,1,124,1,0,'check_ipv6','$tcp_ipv6$',0),(687,1,124,1,0,'tcp_address','$check_address$',0),(688,1,124,1,0,'tcp_all','false',0),(689,1,124,1,0,'tcp_mismatch','warn',0),(690,1,124,1,0,'tcp_refuse','crit',0),(691,1,124,1,0,'tcp_timeout','10',0),(692,1,125,1,0,'check_address','Object of type \'Function\'',0),(693,1,125,1,0,'check_ipv4','$udp_ipv4$',0),(694,1,125,1,0,'check_ipv6','$udp_ipv6$',0),(695,1,125,1,0,'udp_address','$check_address$',0),(696,1,127,1,0,'check_address','Object of type \'Function\'',0),(697,1,127,1,0,'check_ipv4','false',0),(698,1,127,1,0,'check_ipv6','false',0),(699,1,127,1,0,'ups_address','$check_address$',0),(700,1,127,1,0,'ups_name','ups',0),(701,1,128,1,0,'uptime_win_unit','s',0),(702,1,129,1,0,'users_cgreater','50',0),(703,1,129,1,0,'users_wgreater','20',0),(704,1,131,1,0,'vmware_auth_nosession','false',0),(705,1,131,1,0,'vmware_ignorewarning','false',0),(706,1,131,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(707,1,131,1,0,'vmware_sslport','443',0),(708,1,131,1,0,'vmware_timeout','90',0),(709,1,132,1,0,'vmware_auth_nosession','false',0),(710,1,132,1,0,'vmware_ignorewarning','false',0),(711,1,132,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(712,1,132,1,0,'vmware_sslport','443',0),(713,1,132,1,0,'vmware_timeout','90',0),(714,1,133,1,0,'vmware_auth_nosession','false',0),(715,1,133,1,0,'vmware_ignorewarning','false',0),(716,1,133,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(717,1,133,1,0,'vmware_sslport','443',0),(718,1,133,1,0,'vmware_timeout','90',0),(719,1,134,1,0,'vmware_auth_nosession','false',0),(720,1,134,1,0,'vmware_ignorewarning','false',0),(721,1,134,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(722,1,134,1,0,'vmware_sslport','443',0),(723,1,134,1,0,'vmware_timeout','90',0),(724,1,135,1,0,'vmware_auth_nosession','false',0),(725,1,135,1,0,'vmware_ignorewarning','false',0),(726,1,135,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(727,1,135,1,0,'vmware_sslport','443',0),(728,1,135,1,0,'vmware_timeout','90',0),(729,1,136,1,0,'vmware_auth_nosession','false',0),(730,1,136,1,0,'vmware_ignorewarning','false',0),(731,1,136,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(732,1,136,1,0,'vmware_sslport','443',0),(733,1,136,1,0,'vmware_timeout','90',0),(734,1,137,1,0,'vmware_auth_nosession','false',0),(735,1,137,1,0,'vmware_ignorewarning','false',0),(736,1,137,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(737,1,137,1,0,'vmware_sslport','443',0),(738,1,137,1,0,'vmware_timeout','90',0),(739,1,138,1,0,'vmware_alertonly','false',0),(740,1,138,1,0,'vmware_auth_nosession','false',0),(741,1,138,1,0,'vmware_crit','90%',0),(742,1,138,1,0,'vmware_ignorewarning','false',0),(743,1,138,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(744,1,138,1,0,'vmware_sslport','443',0),(745,1,138,1,0,'vmware_timeout','90',0),(746,1,138,1,0,'vmware_usedspace','true',0),(747,1,138,1,0,'vmware_warn','80%',0),(748,1,139,1,0,'vmware_auth_nosession','false',0),(749,1,139,1,0,'vmware_host','$address$',0),(750,1,139,1,0,'vmware_ignorewarning','false',0),(751,1,139,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(752,1,139,1,0,'vmware_sslport','443',0),(753,1,139,1,0,'vmware_timeout','90',0),(754,1,140,1,0,'vmware_auth_nosession','false',0),(755,1,140,1,0,'vmware_crit','90%',0),(756,1,140,1,0,'vmware_host','$address$',0),(757,1,140,1,0,'vmware_ignorewarning','false',0),(758,1,140,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(759,1,140,1,0,'vmware_sslport','443',0),(760,1,140,1,0,'vmware_timeout','90',0),(761,1,140,1,0,'vmware_warn','80%',0),(762,1,141,1,0,'vmware_auth_nosession','false',0),(763,1,141,1,0,'vmware_host','$address$',0),(764,1,141,1,0,'vmware_ignorewarning','false',0),(765,1,141,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(766,1,141,1,0,'vmware_sslport','443',0),(767,1,141,1,0,'vmware_timeout','90',0),(768,1,142,1,0,'vmware_auth_nosession','false',0),(769,1,142,1,0,'vmware_crit','90%',0),(770,1,142,1,0,'vmware_host','$address$',0),(771,1,142,1,0,'vmware_ignorewarning','false',0),(772,1,142,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(773,1,142,1,0,'vmware_sslport','443',0),(774,1,142,1,0,'vmware_timeout','90',0),(775,1,142,1,0,'vmware_warn','80%',0),(776,1,143,1,0,'vmware_auth_nosession','false',0),(777,1,143,1,0,'vmware_host','$address$',0),(778,1,143,1,0,'vmware_ignorewarning','false',0),(779,1,143,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(780,1,143,1,0,'vmware_sslport','443',0),(781,1,143,1,0,'vmware_timeout','90',0),(782,1,144,1,0,'vmware_auth_nosession','false',0),(783,1,144,1,0,'vmware_host','$address$',0),(784,1,144,1,0,'vmware_ignorewarning','false',0),(785,1,144,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(786,1,144,1,0,'vmware_sslport','443',0),(787,1,144,1,0,'vmware_timeout','90',0),(788,1,145,1,0,'vmware_auth_nosession','false',0),(789,1,145,1,0,'vmware_host','$address$',0),(790,1,145,1,0,'vmware_ignorewarning','false',0),(791,1,145,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(792,1,145,1,0,'vmware_sslport','443',0),(793,1,145,1,0,'vmware_timeout','90',0),(794,1,146,1,0,'vmware_auth_nosession','false',0),(795,1,146,1,0,'vmware_host','$address$',0),(796,1,146,1,0,'vmware_ignorewarning','false',0),(797,1,146,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(798,1,146,1,0,'vmware_sslport','443',0),(799,1,146,1,0,'vmware_timeout','90',0),(800,1,147,1,0,'vmware_auth_nosession','false',0),(801,1,147,1,0,'vmware_host','$address$',0),(802,1,147,1,0,'vmware_ignorewarning','false',0),(803,1,147,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(804,1,147,1,0,'vmware_sslport','443',0),(805,1,147,1,0,'vmware_timeout','90',0),(806,1,148,1,0,'vmware_auth_nosession','false',0),(807,1,148,1,0,'vmware_host','$address$',0),(808,1,148,1,0,'vmware_ignorewarning','false',0),(809,1,148,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(810,1,148,1,0,'vmware_sslport','443',0),(811,1,148,1,0,'vmware_timeout','90',0),(812,1,149,1,0,'vmware_auth_nosession','false',0),(813,1,149,1,0,'vmware_host','$address$',0),(814,1,149,1,0,'vmware_ignorewarning','false',0),(815,1,149,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(816,1,149,1,0,'vmware_sslport','443',0),(817,1,149,1,0,'vmware_timeout','90',0),(818,1,150,1,0,'vmware_auth_nosession','false',0),(819,1,150,1,0,'vmware_host','$address$',0),(820,1,150,1,0,'vmware_ignorewarning','false',0),(821,1,150,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(822,1,150,1,0,'vmware_sslport','443',0),(823,1,150,1,0,'vmware_timeout','90',0),(824,1,151,1,0,'vmware_auth_nosession','false',0),(825,1,151,1,0,'vmware_host','$address$',0),(826,1,151,1,0,'vmware_ignorewarning','false',0),(827,1,151,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(828,1,151,1,0,'vmware_sslport','443',0),(829,1,151,1,0,'vmware_timeout','90',0),(830,1,152,1,0,'vmware_auth_nosession','false',0),(831,1,152,1,0,'vmware_host','$address$',0),(832,1,152,1,0,'vmware_ignorewarning','false',0),(833,1,152,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(834,1,152,1,0,'vmware_sslport','443',0),(835,1,152,1,0,'vmware_timeout','90',0),(836,1,153,1,0,'vmware_auth_nosession','false',0),(837,1,153,1,0,'vmware_host','$address$',0),(838,1,153,1,0,'vmware_ignorewarning','false',0),(839,1,153,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(840,1,153,1,0,'vmware_sslport','443',0),(841,1,153,1,0,'vmware_timeout','90',0),(842,1,154,1,0,'vmware_auth_nosession','false',0),(843,1,154,1,0,'vmware_host','$address$',0),(844,1,154,1,0,'vmware_ignorewarning','false',0),(845,1,154,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(846,1,154,1,0,'vmware_sslport','443',0),(847,1,154,1,0,'vmware_timeout','90',0),(848,1,155,1,0,'vmware_auth_nosession','false',0),(849,1,155,1,0,'vmware_host','$address$',0),(850,1,155,1,0,'vmware_ignorewarning','false',0),(851,1,155,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(852,1,155,1,0,'vmware_sslport','443',0),(853,1,155,1,0,'vmware_timeout','90',0),(854,1,156,1,0,'vmware_auth_nosession','false',0),(855,1,156,1,0,'vmware_host','$address$',0),(856,1,156,1,0,'vmware_ignorewarning','false',0),(857,1,156,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(858,1,156,1,0,'vmware_sslport','443',0),(859,1,156,1,0,'vmware_timeout','90',0),(860,1,157,1,0,'vmware_auth_nosession','false',0),(861,1,157,1,0,'vmware_host','$address$',0),(862,1,157,1,0,'vmware_ignorewarning','false',0),(863,1,157,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(864,1,157,1,0,'vmware_sslport','443',0),(865,1,157,1,0,'vmware_timeout','90',0),(866,1,158,1,0,'vmware_auth_nosession','false',0),(867,1,158,1,0,'vmware_host','$address$',0),(868,1,158,1,0,'vmware_ignorewarning','false',0),(869,1,158,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(870,1,158,1,0,'vmware_sslport','443',0),(871,1,158,1,0,'vmware_timeout','90',0),(872,1,159,1,0,'vmware_auth_nosession','false',0),(873,1,159,1,0,'vmware_host','$address$',0),(874,1,159,1,0,'vmware_ignorewarning','false',0),(875,1,159,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(876,1,159,1,0,'vmware_sslport','443',0),(877,1,159,1,0,'vmware_timeout','90',0),(878,1,160,1,0,'vmware_auth_nosession','false',0),(879,1,160,1,0,'vmware_host','$address$',0),(880,1,160,1,0,'vmware_ignorewarning','false',0),(881,1,160,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(882,1,160,1,0,'vmware_sslport','443',0),(883,1,160,1,0,'vmware_timeout','90',0),(884,1,161,1,0,'vmware_auth_nosession','false',0),(885,1,161,1,0,'vmware_host','$address$',0),(886,1,161,1,0,'vmware_ignorewarning','false',0),(887,1,161,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(888,1,161,1,0,'vmware_sslport','443',0),(889,1,161,1,0,'vmware_timeout','90',0),(890,1,162,1,0,'vmware_auth_nosession','false',0),(891,1,162,1,0,'vmware_crit','90%',0),(892,1,162,1,0,'vmware_host','$address$',0),(893,1,162,1,0,'vmware_ignorewarning','false',0),(894,1,162,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(895,1,162,1,0,'vmware_sslport','443',0),(896,1,162,1,0,'vmware_timeout','90',0),(897,1,162,1,0,'vmware_warn','80%',0),(898,1,163,1,0,'vmware_auth_nosession','false',0),(899,1,163,1,0,'vmware_host','$address$',0),(900,1,163,1,0,'vmware_ignorewarning','false',0),(901,1,163,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(902,1,163,1,0,'vmware_sslport','443',0),(903,1,163,1,0,'vmware_timeout','90',0),(904,1,164,1,0,'vmware_auth_nosession','false',0),(905,1,164,1,0,'vmware_host','$address$',0),(906,1,164,1,0,'vmware_ignorewarning','false',0),(907,1,164,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(908,1,164,1,0,'vmware_sslport','443',0),(909,1,164,1,0,'vmware_timeout','90',0),(910,1,165,1,0,'vmware_auth_nosession','false',0),(911,1,165,1,0,'vmware_host','$address$',0),(912,1,165,1,0,'vmware_ignorewarning','false',0),(913,1,165,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(914,1,165,1,0,'vmware_sslport','443',0),(915,1,165,1,0,'vmware_timeout','90',0),(916,1,166,1,0,'vmware_auth_nosession','false',0),(917,1,166,1,0,'vmware_host','$address$',0),(918,1,166,1,0,'vmware_ignorewarning','false',0),(919,1,166,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(920,1,166,1,0,'vmware_sslport','443',0),(921,1,166,1,0,'vmware_timeout','90',0),(922,1,167,1,0,'vmware_auth_nosession','false',0),(923,1,167,1,0,'vmware_host','$address$',0),(924,1,167,1,0,'vmware_ignorewarning','false',0),(925,1,167,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(926,1,167,1,0,'vmware_sslport','443',0),(927,1,167,1,0,'vmware_timeout','90',0),(928,1,168,1,0,'vmware_auth_nosession','false',0),(929,1,168,1,0,'vmware_host','$address$',0),(930,1,168,1,0,'vmware_ignorewarning','false',0),(931,1,168,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(932,1,168,1,0,'vmware_sslport','443',0),(933,1,168,1,0,'vmware_timeout','90',0),(934,1,169,1,0,'vmware_auth_nosession','false',0),(935,1,169,1,0,'vmware_host','$address$',0),(936,1,169,1,0,'vmware_ignorewarning','false',0),(937,1,169,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(938,1,169,1,0,'vmware_sslport','443',0),(939,1,169,1,0,'vmware_timeout','90',0),(940,1,170,1,0,'vmware_auth_nosession','false',0),(941,1,170,1,0,'vmware_host','$address$',0),(942,1,170,1,0,'vmware_ignorewarning','false',0),(943,1,170,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(944,1,170,1,0,'vmware_sslport','443',0),(945,1,170,1,0,'vmware_timeout','90',0),(946,1,171,1,0,'vmware_auth_nosession','false',0),(947,1,171,1,0,'vmware_host','$address$',0),(948,1,171,1,0,'vmware_ignorewarning','false',0),(949,1,171,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(950,1,171,1,0,'vmware_sslport','443',0),(951,1,171,1,0,'vmware_timeout','90',0),(952,1,172,1,0,'vmware_auth_nosession','false',0),(953,1,172,1,0,'vmware_host','$address$',0),(954,1,172,1,0,'vmware_ignorewarning','false',0),(955,1,172,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(956,1,172,1,0,'vmware_sslport','443',0),(957,1,172,1,0,'vmware_timeout','90',0),(958,1,173,1,0,'vmware_auth_nosession','false',0),(959,1,173,1,0,'vmware_host','$address$',0),(960,1,173,1,0,'vmware_ignorewarning','false',0),(961,1,173,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(962,1,173,1,0,'vmware_sslport','443',0),(963,1,173,1,0,'vmware_timeout','90',0),(964,1,174,1,0,'vmware_auth_nosession','false',0),(965,1,174,1,0,'vmware_host','$address$',0),(966,1,174,1,0,'vmware_ignorewarning','false',0),(967,1,174,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(968,1,174,1,0,'vmware_sslport','443',0),(969,1,174,1,0,'vmware_timeout','90',0),(970,1,175,1,0,'vmware_auth_nosession','false',0),(971,1,175,1,0,'vmware_host','$address$',0),(972,1,175,1,0,'vmware_ignorewarning','false',0),(973,1,175,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(974,1,175,1,0,'vmware_sslport','443',0),(975,1,175,1,0,'vmware_timeout','90',0),(976,1,176,1,0,'vmware_auth_nosession','false',0),(977,1,176,1,0,'vmware_host','$address$',0),(978,1,176,1,0,'vmware_ignorewarning','false',0),(979,1,176,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(980,1,176,1,0,'vmware_sslport','443',0),(981,1,176,1,0,'vmware_timeout','90',0),(982,1,177,1,0,'vmware_auth_nosession','false',0),(983,1,177,1,0,'vmware_host','$address$',0),(984,1,177,1,0,'vmware_ignorewarning','false',0),(985,1,177,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(986,1,177,1,0,'vmware_sslport','443',0),(987,1,177,1,0,'vmware_timeout','90',0),(988,1,178,1,0,'vmware_auth_nosession','false',0),(989,1,178,1,0,'vmware_host','$address$',0),(990,1,178,1,0,'vmware_ignorewarning','false',0),(991,1,178,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(992,1,178,1,0,'vmware_sslport','443',0),(993,1,178,1,0,'vmware_timeout','90',0),(994,1,179,1,0,'vmware_auth_nosession','false',0),(995,1,179,1,0,'vmware_host','$address$',0),(996,1,179,1,0,'vmware_ignorewarning','false',0),(997,1,179,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(998,1,179,1,0,'vmware_sslport','443',0),(999,1,179,1,0,'vmware_timeout','90',0),(1000,1,180,1,0,'vmware_auth_nosession','false',0),(1001,1,180,1,0,'vmware_host','$address$',0),(1002,1,180,1,0,'vmware_ignorewarning','false',0),(1003,1,180,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1004,1,180,1,0,'vmware_sslport','443',0),(1005,1,180,1,0,'vmware_timeout','90',0),(1006,1,181,1,0,'vmware_auth_nosession','false',0),(1007,1,181,1,0,'vmware_host','$address$',0),(1008,1,181,1,0,'vmware_ignorewarning','false',0),(1009,1,181,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1010,1,181,1,0,'vmware_sslport','443',0),(1011,1,181,1,0,'vmware_timeout','90',0),(1012,1,182,1,0,'vmware_auth_nosession','false',0),(1013,1,182,1,0,'vmware_host','$address$',0),(1014,1,182,1,0,'vmware_ignorewarning','false',0),(1015,1,182,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1016,1,182,1,0,'vmware_sslport','443',0),(1017,1,182,1,0,'vmware_timeout','90',0),(1018,1,183,1,0,'vmware_auth_nosession','false',0),(1019,1,183,1,0,'vmware_host','$address$',0),(1020,1,183,1,0,'vmware_ignorewarning','false',0),(1021,1,183,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1022,1,183,1,0,'vmware_sslport','443',0),(1023,1,183,1,0,'vmware_timeout','90',0),(1024,1,184,1,0,'vmware_alertonly','false',0),(1025,1,184,1,0,'vmware_auth_nosession','false',0),(1026,1,184,1,0,'vmware_crit','90%',0),(1027,1,184,1,0,'vmware_host','$address$',0),(1028,1,184,1,0,'vmware_ignorewarning','false',0),(1029,1,184,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1030,1,184,1,0,'vmware_sslport','443',0),(1031,1,184,1,0,'vmware_timeout','90',0),(1032,1,184,1,0,'vmware_usedspace','true',0),(1033,1,184,1,0,'vmware_warn','80%',0),(1034,1,185,1,0,'vmware_auth_nosession','false',0),(1035,1,185,1,0,'vmware_host','$address$',0),(1036,1,185,1,0,'vmware_ignorewarning','false',0),(1037,1,185,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1038,1,185,1,0,'vmware_sslport','443',0),(1039,1,185,1,0,'vmware_timeout','90',0),(1040,1,186,1,0,'vmware_auth_nosession','false',0),(1041,1,186,1,0,'vmware_host','$address$',0),(1042,1,186,1,0,'vmware_ignorewarning','false',0),(1043,1,186,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1044,1,186,1,0,'vmware_sslport','443',0),(1045,1,186,1,0,'vmware_timeout','90',0),(1046,1,187,1,0,'vmware_auth_nosession','false',0),(1047,1,187,1,0,'vmware_crit','90%',0),(1048,1,187,1,0,'vmware_host','$address$',0),(1049,1,187,1,0,'vmware_ignorewarning','false',0),(1050,1,187,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1051,1,187,1,0,'vmware_sslport','443',0),(1052,1,187,1,0,'vmware_timeout','90',0),(1053,1,187,1,0,'vmware_warn','80%',0),(1054,1,188,1,0,'vmware_auth_nosession','false',0),(1055,1,188,1,0,'vmware_host','$address$',0),(1056,1,188,1,0,'vmware_ignorewarning','false',0),(1057,1,188,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1058,1,188,1,0,'vmware_sslport','443',0),(1059,1,188,1,0,'vmware_timeout','90',0),(1060,1,189,1,0,'vmware_auth_nosession','false',0),(1061,1,189,1,0,'vmware_host','$address$',0),(1062,1,189,1,0,'vmware_ignorewarning','false',0),(1063,1,189,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1064,1,189,1,0,'vmware_sslport','443',0),(1065,1,189,1,0,'vmware_timeout','90',0),(1066,1,190,1,0,'vmware_auth_nosession','false',0),(1067,1,190,1,0,'vmware_host','$address$',0),(1068,1,190,1,0,'vmware_ignorewarning','false',0),(1069,1,190,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1070,1,190,1,0,'vmware_sslport','443',0),(1071,1,190,1,0,'vmware_timeout','90',0),(1072,1,191,1,0,'vmware_auth_nosession','false',0),(1073,1,191,1,0,'vmware_host','$address$',0),(1074,1,191,1,0,'vmware_ignorewarning','false',0),(1075,1,191,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1076,1,191,1,0,'vmware_sslport','443',0),(1077,1,191,1,0,'vmware_timeout','90',0),(1078,1,192,1,0,'vmware_auth_nosession','false',0),(1079,1,192,1,0,'vmware_host','$address$',0),(1080,1,192,1,0,'vmware_ignorewarning','false',0),(1081,1,192,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1082,1,192,1,0,'vmware_sslport','443',0),(1083,1,192,1,0,'vmware_timeout','90',0),(1084,1,193,1,0,'vmware_auth_nosession','false',0),(1085,1,193,1,0,'vmware_host','$address$',0),(1086,1,193,1,0,'vmware_ignorewarning','false',0),(1087,1,193,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1088,1,193,1,0,'vmware_sslport','443',0),(1089,1,193,1,0,'vmware_timeout','90',0),(1090,1,194,1,0,'vmware_auth_nosession','false',0),(1091,1,194,1,0,'vmware_host','$address$',0),(1092,1,194,1,0,'vmware_ignorewarning','false',0),(1093,1,194,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1094,1,194,1,0,'vmware_sslport','443',0),(1095,1,194,1,0,'vmware_timeout','90',0),(1096,1,195,1,0,'vmware_auth_nosession','false',0),(1097,1,195,1,0,'vmware_host','$address$',0),(1098,1,195,1,0,'vmware_ignorewarning','false',0),(1099,1,195,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1100,1,195,1,0,'vmware_sslport','443',0),(1101,1,195,1,0,'vmware_timeout','90',0),(1102,1,196,1,0,'vmware_auth_nosession','false',0),(1103,1,196,1,0,'vmware_crit','90%',0),(1104,1,196,1,0,'vmware_host','$address$',0),(1105,1,196,1,0,'vmware_ignorewarning','false',0),(1106,1,196,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1107,1,196,1,0,'vmware_sslport','443',0),(1108,1,196,1,0,'vmware_timeout','90',0),(1109,1,196,1,0,'vmware_warn','80%',0),(1110,1,197,1,0,'vmware_auth_nosession','false',0),(1111,1,197,1,0,'vmware_host','$address$',0),(1112,1,197,1,0,'vmware_ignorewarning','false',0),(1113,1,197,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1114,1,197,1,0,'vmware_sslport','443',0),(1115,1,197,1,0,'vmware_timeout','90',0),(1116,1,198,1,0,'vmware_auth_nosession','false',0),(1117,1,198,1,0,'vmware_host','$address$',0),(1118,1,198,1,0,'vmware_ignorewarning','false',0),(1119,1,198,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1120,1,198,1,0,'vmware_sslport','443',0),(1121,1,198,1,0,'vmware_timeout','90',0),(1122,1,199,1,0,'vmware_auth_nosession','false',0),(1123,1,199,1,0,'vmware_host','$address$',0),(1124,1,199,1,0,'vmware_ignorewarning','false',0),(1125,1,199,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1126,1,199,1,0,'vmware_sslport','443',0),(1127,1,199,1,0,'vmware_timeout','90',0),(1128,1,200,1,0,'vmware_auth_nosession','false',0),(1129,1,200,1,0,'vmware_host','$address$',0),(1130,1,200,1,0,'vmware_ignorewarning','false',0),(1131,1,200,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1132,1,200,1,0,'vmware_sslport','443',0),(1133,1,200,1,0,'vmware_timeout','90',0),(1134,1,201,1,0,'vmware_auth_nosession','false',0),(1135,1,201,1,0,'vmware_host','$address$',0),(1136,1,201,1,0,'vmware_ignorewarning','false',0),(1137,1,201,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1138,1,201,1,0,'vmware_sslport','443',0),(1139,1,201,1,0,'vmware_timeout','90',0),(1140,1,202,1,0,'vmware_auth_nosession','false',0),(1141,1,202,1,0,'vmware_host','$address$',0),(1142,1,202,1,0,'vmware_ignorewarning','false',0),(1143,1,202,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1144,1,202,1,0,'vmware_sslport','443',0),(1145,1,202,1,0,'vmware_timeout','90',0),(1146,1,203,1,0,'vmware_auth_nosession','false',0),(1147,1,203,1,0,'vmware_host','$address$',0),(1148,1,203,1,0,'vmware_ignorewarning','false',0),(1149,1,203,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1150,1,203,1,0,'vmware_sslport','443',0),(1151,1,203,1,0,'vmware_timeout','90',0),(1152,1,204,1,0,'vmware_auth_nosession','false',0),(1153,1,204,1,0,'vmware_host','$address$',0),(1154,1,204,1,0,'vmware_ignorewarning','false',0),(1155,1,204,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1156,1,204,1,0,'vmware_sslport','443',0),(1157,1,204,1,0,'vmware_timeout','90',0),(1158,1,205,1,0,'vmware_auth_nosession','false',0),(1159,1,205,1,0,'vmware_host','$address$',0),(1160,1,205,1,0,'vmware_ignorewarning','false',0),(1161,1,205,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1162,1,205,1,0,'vmware_sslport','443',0),(1163,1,205,1,0,'vmware_timeout','90',0),(1164,1,206,1,0,'vmware_auth_nosession','false',0),(1165,1,206,1,0,'vmware_host','$address$',0),(1166,1,206,1,0,'vmware_ignorewarning','false',0),(1167,1,206,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1168,1,206,1,0,'vmware_sslport','443',0),(1169,1,206,1,0,'vmware_timeout','90',0),(1170,1,207,1,0,'vmware_auth_nosession','false',0),(1171,1,207,1,0,'vmware_host','$address$',0),(1172,1,207,1,0,'vmware_ignorewarning','false',0),(1173,1,207,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1174,1,207,1,0,'vmware_sslport','443',0),(1175,1,207,1,0,'vmware_timeout','90',0),(1176,1,208,1,0,'vmware_auth_nosession','false',0),(1177,1,208,1,0,'vmware_host','$address$',0),(1178,1,208,1,0,'vmware_ignorewarning','false',0),(1179,1,208,1,0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0),(1180,1,208,1,0,'vmware_sslport','443',0),(1181,1,208,1,0,'vmware_timeout','90',0),(1182,1,210,1,0,'yum_all_updates','false',0),(1183,1,210,1,0,'yum_cache_only','false',0),(1184,1,210,1,0,'yum_no_warn_on_lock','false',0),(1185,1,210,1,0,'yum_no_warn_on_updates','false',0),(1186,1,210,1,0,'yum_warn_on_any_update','false',0),(1187,1,213,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1),(1188,1,213,1,0,'http_vhosts','{\"http\":{\"http_uri\":\"/\"}}',1),(1189,1,213,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1),(1190,1,213,1,0,'os','Linux',0),(1191,1,216,1,0,'notification_address','$address$',0),(1192,1,216,1,0,'notification_address6','$address6$',0),(1193,1,216,1,0,'notification_author','$notification.author$',0),(1194,1,216,1,0,'notification_comment','$notification.comment$',0),(1195,1,216,1,0,'notification_date','$icinga.long_date_time$',0),(1196,1,216,1,0,'notification_hostdisplayname','$host.display_name$',0),(1197,1,216,1,0,'notification_hostname','$host.name$',0),(1198,1,216,1,0,'notification_hostoutput','$host.output$',0),(1199,1,216,1,0,'notification_hoststate','$host.state$',0),(1200,1,216,1,0,'notification_type','$notification.type$',0),(1201,1,216,1,0,'notification_useremail','$user.email$',0),(1202,1,217,1,0,'notification_address','$address$',0),(1203,1,217,1,0,'notification_address6','$address6$',0),(1204,1,217,1,0,'notification_author','$notification.author$',0),(1205,1,217,1,0,'notification_comment','$notification.comment$',0),(1206,1,217,1,0,'notification_date','$icinga.long_date_time$',0),(1207,1,217,1,0,'notification_hostdisplayname','$host.display_name$',0),(1208,1,217,1,0,'notification_hostname','$host.name$',0),(1209,1,217,1,0,'notification_servicedisplayname','$service.display_name$',0),(1210,1,217,1,0,'notification_servicename','$service.name$',0),(1211,1,217,1,0,'notification_serviceoutput','$service.output$',0),(1212,1,217,1,0,'notification_servicestate','$service.state$',0),(1213,1,217,1,0,'notification_type','$notification.type$',0),(1214,1,217,1,0,'notification_useremail','$user.email$',0),(1215,1,222,1,0,'http_uri','/',0),(1216,1,224,1,0,'disk_partitions','/',0),(1217,1,226,1,0,'backup_downtime','02:00-03:00',0);
/*!40000 ALTER TABLE `icinga_customvariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariablestatus`
--

DROP TABLE IF EXISTS `icinga_customvariablestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariablestatus` (
  `customvariablestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customvariablestatus_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariablestatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=latin1 COMMENT='Custom variable status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariablestatus`
--

LOCK TABLES `icinga_customvariablestatus` WRITE;
/*!40000 ALTER TABLE `icinga_customvariablestatus` DISABLE KEYS */;
INSERT INTO `icinga_customvariablestatus` VALUES (1,1,2,'2018-04-23 13:54:20',0,'arcconf_path','/sbin/arcconf',0,NULL),(2,1,3,'2018-04-23 13:54:20',0,'apache_status_address','$check_address$',0,NULL),(3,1,3,'2018-04-23 13:54:20',0,'apache_status_ssl','false',0,NULL),(4,1,3,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(5,1,3,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(6,1,3,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(7,1,5,'2018-04-23 13:54:20',0,'breeze_critical','20',0,NULL),(8,1,5,'2018-04-23 13:54:20',0,'breeze_hostname','$check_address$',0,NULL),(9,1,5,'2018-04-23 13:54:20',0,'breeze_warning','50',0,NULL),(10,1,5,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(11,1,5,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(12,1,5,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(13,1,6,'2018-04-23 13:54:20',0,'by_ssh_address','$check_address$',0,NULL),(14,1,6,'2018-04-23 13:54:20',0,'by_ssh_quiet','false',0,NULL),(15,1,6,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(16,1,6,'2018-04-23 13:54:20',0,'check_ipv4','$by_ssh_ipv4$',0,NULL),(17,1,6,'2018-04-23 13:54:20',0,'check_ipv6','$by_ssh_ipv6$',0,NULL),(18,1,7,'2018-04-23 13:54:20',0,'check_ipv4','$clamd_ipv4$',0,NULL),(19,1,7,'2018-04-23 13:54:20',0,'check_ipv6','$clamd_ipv6$',0,NULL),(20,1,7,'2018-04-23 13:54:20',0,'clamd_mismatch','warn',0,NULL),(21,1,7,'2018-04-23 13:54:20',0,'clamd_refuse','crit',0,NULL),(22,1,7,'2018-04-23 13:54:20',0,'clamd_ssl','false',0,NULL),(23,1,7,'2018-04-23 13:54:20',0,'clamd_timeout','10',0,NULL),(24,1,9,'2018-04-23 13:54:20',0,'cluster_zone','$host.name$',0,NULL),(25,1,10,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(26,1,10,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(27,1,10,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(28,1,10,'2018-04-23 13:54:20',0,'db2_health_env_db2_home','/opt/ibm/db2/V10.5',0,NULL),(29,1,10,'2018-04-23 13:54:20',0,'db2_health_env_db2_version','10.5',0,NULL),(30,1,10,'2018-04-23 13:54:20',0,'db2_health_hostname','$check_address$',0,NULL),(31,1,10,'2018-04-23 13:54:20',0,'db2_health_regexp','false',0,NULL),(32,1,10,'2018-04-23 13:54:20',0,'db2_health_report','short',0,NULL),(33,1,11,'2018-04-23 13:54:20',0,'dhcp_unicast','false',0,NULL),(34,1,12,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(35,1,12,'2018-04-23 13:54:20',0,'check_ipv4','$dig_ipv4$',0,NULL),(36,1,12,'2018-04-23 13:54:20',0,'check_ipv6','$dig_ipv6$',0,NULL),(37,1,12,'2018-04-23 13:54:20',0,'dig_server','$check_address$',0,NULL),(38,1,13,'2018-04-23 13:54:20',0,'disk_cfree','10%',0,NULL),(39,1,13,'2018-04-23 13:54:20',0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"configfs\",\"devtmpfs\",\"devfs\",\"mtmfs\",\"tracefs\",\"cgroup\",\"fuse.gvfsd-fuse\",\"fuse.gvfs-fuse-daemon\",\"fdescfs\"]',1,NULL),(40,1,13,'2018-04-23 13:54:20',0,'disk_megabytes','true',0,NULL),(41,1,13,'2018-04-23 13:54:20',0,'disk_wfree','20%',0,NULL),(42,1,14,'2018-04-23 13:54:20',0,'disk_win_unit','mb',0,NULL),(43,1,15,'2018-04-23 13:54:20',0,'disk_smb_cused','95%',0,NULL),(44,1,15,'2018-04-23 13:54:20',0,'disk_smb_wused','85%',0,NULL),(45,1,16,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(46,1,16,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(47,1,16,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(48,1,16,'2018-04-23 13:54:20',0,'dns_lookup','$host.name$',0,NULL),(49,1,16,'2018-04-23 13:54:20',0,'dns_timeout','10',0,NULL),(50,1,17,'2018-04-23 13:54:20',0,'dummy_state','0',0,NULL),(51,1,17,'2018-04-23 13:54:20',0,'dummy_text','Check was successful.',0,NULL),(52,1,18,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(53,1,18,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(54,1,18,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(55,1,18,'2018-04-23 13:54:20',0,'elasticsearch_host','$check_address$',0,NULL),(56,1,18,'2018-04-23 13:54:20',0,'elasticsearch_yellowcritical','false',0,NULL),(57,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_host','$address$',0,NULL),(58,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_nocurrent','false',0,NULL),(59,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_nofan','false',0,NULL),(60,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_nolcd','false',0,NULL),(61,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_nopower','false',0,NULL),(62,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_notemp','false',0,NULL),(63,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_novolts','false',0,NULL),(64,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_perfdata','false',0,NULL),(65,1,19,'2018-04-23 13:54:20',0,'esxi_hardware_port','5989',0,NULL),(66,1,21,'2018-04-23 13:54:20',0,'file_age_ignoremissing','false',0,NULL),(67,1,23,'2018-04-23 13:54:20',0,'fping_address','$address$',0,NULL),(68,1,23,'2018-04-23 13:54:20',0,'fping_cpl','15',0,NULL),(69,1,23,'2018-04-23 13:54:20',0,'fping_crta','200',0,NULL),(70,1,23,'2018-04-23 13:54:20',0,'fping_interval','500',0,NULL),(71,1,23,'2018-04-23 13:54:20',0,'fping_number','5',0,NULL),(72,1,23,'2018-04-23 13:54:20',0,'fping_wpl','5',0,NULL),(73,1,23,'2018-04-23 13:54:20',0,'fping_wrta','100',0,NULL),(74,1,24,'2018-04-23 13:54:20',0,'fping_address','$address6$',0,NULL),(75,1,24,'2018-04-23 13:54:20',0,'fping_cpl','15',0,NULL),(76,1,24,'2018-04-23 13:54:20',0,'fping_crta','200',0,NULL),(77,1,24,'2018-04-23 13:54:20',0,'fping_interval','500',0,NULL),(78,1,24,'2018-04-23 13:54:20',0,'fping_number','5',0,NULL),(79,1,24,'2018-04-23 13:54:20',0,'fping_wpl','5',0,NULL),(80,1,24,'2018-04-23 13:54:20',0,'fping_wrta','100',0,NULL),(81,1,25,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(82,1,25,'2018-04-23 13:54:20',0,'check_ipv4','$ftp_ipv4$',0,NULL),(83,1,25,'2018-04-23 13:54:20',0,'check_ipv6','$ftp_ipv6$',0,NULL),(84,1,25,'2018-04-23 13:54:20',0,'ftp_address','$check_address$',0,NULL),(85,1,25,'2018-04-23 13:54:20',0,'ftp_mismatch','warn',0,NULL),(86,1,25,'2018-04-23 13:54:20',0,'ftp_refuse','crit',0,NULL),(87,1,25,'2018-04-23 13:54:20',0,'ftp_ssl','false',0,NULL),(88,1,25,'2018-04-23 13:54:20',0,'ftp_timeout','10',0,NULL),(89,1,26,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(90,1,26,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(91,1,26,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(92,1,27,'2018-04-23 13:54:20',0,'glusterfs_disk_critical','95',0,NULL),(93,1,27,'2018-04-23 13:54:20',0,'glusterfs_disk_warning','90',0,NULL),(94,1,27,'2018-04-23 13:54:20',0,'glusterfs_inode_critical','95',0,NULL),(95,1,27,'2018-04-23 13:54:20',0,'glusterfs_inode_warning','90',0,NULL),(96,1,28,'2018-04-23 13:54:20',0,'graphite_duration','5',0,NULL),(97,1,28,'2018-04-23 13:54:20',0,'graphite_function','average',0,NULL),(98,1,28,'2018-04-23 13:54:20',0,'graphite_link_graph','false',0,NULL),(99,1,28,'2018-04-23 13:54:20',0,'graphite_message','metric count:',0,NULL),(100,1,28,'2018-04-23 13:54:20',0,'graphite_zero_on_error','false',0,NULL),(101,1,29,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(102,1,29,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(103,1,29,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(104,1,29,'2018-04-23 13:54:20',0,'ping_address','$check_address$',0,NULL),(105,1,29,'2018-04-23 13:54:20',0,'ping_cpl','100',0,NULL),(106,1,29,'2018-04-23 13:54:20',0,'ping_crta','5000',0,NULL),(107,1,29,'2018-04-23 13:54:20',0,'ping_wpl','80',0,NULL),(108,1,29,'2018-04-23 13:54:20',0,'ping_wrta','3000',0,NULL),(109,1,30,'2018-04-23 13:54:20',0,'ping_address','$address$',0,NULL),(110,1,30,'2018-04-23 13:54:20',0,'ping_cpl','100',0,NULL),(111,1,30,'2018-04-23 13:54:20',0,'ping_crta','5000',0,NULL),(112,1,30,'2018-04-23 13:54:20',0,'ping_wpl','80',0,NULL),(113,1,30,'2018-04-23 13:54:20',0,'ping_wrta','3000',0,NULL),(114,1,31,'2018-04-23 13:54:20',0,'ping_address','$address6$',0,NULL),(115,1,31,'2018-04-23 13:54:20',0,'ping_cpl','100',0,NULL),(116,1,31,'2018-04-23 13:54:20',0,'ping_crta','5000',0,NULL),(117,1,31,'2018-04-23 13:54:20',0,'ping_wpl','80',0,NULL),(118,1,31,'2018-04-23 13:54:20',0,'ping_wrta','3000',0,NULL),(119,1,32,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(120,1,32,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(121,1,32,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(122,1,32,'2018-04-23 13:54:20',0,'hpasm_hostname','$check_address$',0,NULL),(123,1,32,'2018-04-23 13:54:20',0,'hpasm_remote','true',0,NULL),(124,1,33,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(125,1,33,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(126,1,33,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(127,1,33,'2018-04-23 13:54:20',0,'hpjd_address','$check_address$',0,NULL),(128,1,34,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(129,1,34,'2018-04-23 13:54:20',0,'check_ipv4','$http_ipv4$',0,NULL),(130,1,34,'2018-04-23 13:54:20',0,'check_ipv6','$http_ipv6$',0,NULL),(131,1,34,'2018-04-23 13:54:20',0,'http_address','$check_address$',0,NULL),(132,1,34,'2018-04-23 13:54:20',0,'http_invertregex','false',0,NULL),(133,1,34,'2018-04-23 13:54:20',0,'http_linespan','false',0,NULL),(134,1,34,'2018-04-23 13:54:20',0,'http_link','false',0,NULL),(135,1,34,'2018-04-23 13:54:20',0,'http_sni','false',0,NULL),(136,1,34,'2018-04-23 13:54:20',0,'http_ssl','false',0,NULL),(137,1,34,'2018-04-23 13:54:20',0,'http_verbose','false',0,NULL),(138,1,36,'2018-04-23 13:54:20',0,'icingacli_businessprocess_details','false',0,NULL),(139,1,37,'2018-04-23 13:54:20',0,'icmp_address','$address$',0,NULL),(140,1,37,'2018-04-23 13:54:20',0,'icmp_cpl','15',0,NULL),(141,1,37,'2018-04-23 13:54:20',0,'icmp_crta','200',0,NULL),(142,1,37,'2018-04-23 13:54:20',0,'icmp_wpl','5',0,NULL),(143,1,37,'2018-04-23 13:54:20',0,'icmp_wrta','100',0,NULL),(144,1,38,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(145,1,38,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(146,1,38,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(147,1,38,'2018-04-23 13:54:20',0,'iftraffic_address','$check_address$',0,NULL),(148,1,38,'2018-04-23 13:54:20',0,'iftraffic_crit','98',0,NULL),(149,1,38,'2018-04-23 13:54:20',0,'iftraffic_warn','85',0,NULL),(150,1,39,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(151,1,39,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(152,1,39,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(153,1,39,'2018-04-23 13:54:20',0,'iftraffic64_address','$check_address$',0,NULL),(154,1,39,'2018-04-23 13:54:20',0,'iftraffic64_crit','98',0,NULL),(155,1,39,'2018-04-23 13:54:20',0,'iftraffic64_warn','85',0,NULL),(156,1,40,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(157,1,40,'2018-04-23 13:54:20',0,'check_ipv4','$imap_ipv4$',0,NULL),(158,1,40,'2018-04-23 13:54:20',0,'check_ipv6','$imap_ipv6$',0,NULL),(159,1,40,'2018-04-23 13:54:20',0,'imap_address','$check_address$',0,NULL),(160,1,41,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(161,1,41,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(162,1,41,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(163,1,41,'2018-04-23 13:54:20',0,'interfaces_address','$check_address$',0,NULL),(164,1,41,'2018-04-23 13:54:20',0,'interfaces_aliases','false',0,NULL),(165,1,41,'2018-04-23 13:54:20',0,'interfaces_down_is_ok','false',0,NULL),(166,1,41,'2018-04-23 13:54:20',0,'interfaces_match_aliases','false',0,NULL),(167,1,42,'2018-04-23 13:54:20',0,'interfacetable_64bits','false',0,NULL),(168,1,42,'2018-04-23 13:54:20',0,'interfacetable_aliasmatching','false',0,NULL),(169,1,42,'2018-04-23 13:54:20',0,'interfacetable_duplex','false',0,NULL),(170,1,42,'2018-04-23 13:54:20',0,'interfacetable_enableperfdata','false',0,NULL),(171,1,42,'2018-04-23 13:54:20',0,'interfacetable_hostdisplay','$host.display_name$',0,NULL),(172,1,42,'2018-04-23 13:54:20',0,'interfacetable_hostquery','$address$',0,NULL),(173,1,42,'2018-04-23 13:54:20',0,'interfacetable_noconfigtable','false',0,NULL),(174,1,42,'2018-04-23 13:54:20',0,'interfacetable_nohuman','false',0,NULL),(175,1,42,'2018-04-23 13:54:20',0,'interfacetable_noifloadgradient','false',0,NULL),(176,1,42,'2018-04-23 13:54:20',0,'interfacetable_noipinfo','false',0,NULL),(177,1,42,'2018-04-23 13:54:20',0,'interfacetable_notips','false',0,NULL),(178,1,42,'2018-04-23 13:54:20',0,'interfacetable_notype','false',0,NULL),(179,1,42,'2018-04-23 13:54:20',0,'interfacetable_outputshort','false',0,NULL),(180,1,42,'2018-04-23 13:54:20',0,'interfacetable_perfdataservicedesc','$service.name$',0,NULL),(181,1,42,'2018-04-23 13:54:20',0,'interfacetable_pkt','false',0,NULL),(182,1,42,'2018-04-23 13:54:20',0,'interfacetable_regex','false',0,NULL),(183,1,42,'2018-04-23 13:54:20',0,'interfacetable_snapshot','false',0,NULL),(184,1,42,'2018-04-23 13:54:20',0,'interfacetable_snmpv2','false',0,NULL),(185,1,42,'2018-04-23 13:54:20',0,'interfacetable_stp','false',0,NULL),(186,1,42,'2018-04-23 13:54:20',0,'interfacetable_trafficwithpkt','false',0,NULL),(187,1,42,'2018-04-23 13:54:20',0,'interfacetable_unixsnmp','false',0,NULL),(188,1,42,'2018-04-23 13:54:20',0,'interfacetable_vlan','false',0,NULL),(189,1,43,'2018-04-23 13:54:20',0,'iostat_cread','200',0,NULL),(190,1,43,'2018-04-23 13:54:20',0,'iostat_ctps','200',0,NULL),(191,1,43,'2018-04-23 13:54:20',0,'iostat_cwrite','200',0,NULL),(192,1,43,'2018-04-23 13:54:20',0,'iostat_disk','sda',0,NULL),(193,1,43,'2018-04-23 13:54:20',0,'iostat_wread','100',0,NULL),(194,1,43,'2018-04-23 13:54:20',0,'iostat_wtps','100',0,NULL),(195,1,43,'2018-04-23 13:54:20',0,'iostat_wwrite','100',0,NULL),(196,1,44,'2018-04-23 13:54:20',0,'iostats_critical_read','80000',0,NULL),(197,1,44,'2018-04-23 13:54:20',0,'iostats_critical_tps','5000',0,NULL),(198,1,44,'2018-04-23 13:54:20',0,'iostats_critical_wait','80',0,NULL),(199,1,44,'2018-04-23 13:54:20',0,'iostats_critical_write','25000',0,NULL),(200,1,44,'2018-04-23 13:54:20',0,'iostats_disk','sda',0,NULL),(201,1,44,'2018-04-23 13:54:20',0,'iostats_warning_read','50000',0,NULL),(202,1,44,'2018-04-23 13:54:20',0,'iostats_warning_tps','3000',0,NULL),(203,1,44,'2018-04-23 13:54:20',0,'iostats_warning_wait','50',0,NULL),(204,1,44,'2018-04-23 13:54:20',0,'iostats_warning_write','10000',0,NULL),(205,1,45,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(206,1,45,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(207,1,45,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(208,1,45,'2018-04-23 13:54:20',0,'ping_address','$check_address$',0,NULL),(209,1,45,'2018-04-23 13:54:20',0,'ping_cpl','100',0,NULL),(210,1,45,'2018-04-23 13:54:20',0,'ping_crta','5000',0,NULL),(211,1,45,'2018-04-23 13:54:20',0,'ping_packets','1',0,NULL),(212,1,45,'2018-04-23 13:54:20',0,'ping_wpl','100',0,NULL),(213,1,45,'2018-04-23 13:54:20',0,'ping_wrta','5000',0,NULL),(214,1,46,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(215,1,46,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(216,1,46,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(217,1,46,'2018-04-23 13:54:20',0,'ipmi_address','$check_address$',0,NULL),(218,1,46,'2018-04-23 13:54:20',0,'ipmi_protocol_lan_version','LAN_2_0',0,NULL),(219,1,47,'2018-04-23 13:54:20',0,'jmx4perl_numeric','false',0,NULL),(220,1,47,'2018-04-23 13:54:20',0,'jmx4perl_string','false',0,NULL),(221,1,47,'2018-04-23 13:54:20',0,'jmx4perl_unknown_is_critical','false',0,NULL),(222,1,47,'2018-04-23 13:54:20',0,'jmx4perl_url','http://$address$:8080/jolokia',0,NULL),(223,1,48,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(224,1,48,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(225,1,48,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(226,1,48,'2018-04-23 13:54:20',0,'kdc_address','$check_address$',0,NULL),(227,1,49,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(228,1,49,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(229,1,49,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(230,1,49,'2018-04-23 13:54:20',0,'ldap_address','$check_address$',0,NULL),(231,1,49,'2018-04-23 13:54:20',0,'ldap_timeout','10',0,NULL),(232,1,49,'2018-04-23 13:54:20',0,'ldap_v2','true',0,NULL),(233,1,49,'2018-04-23 13:54:20',0,'ldap_v3','false',0,NULL),(234,1,49,'2018-04-23 13:54:20',0,'ldap_verbose','false',0,NULL),(235,1,50,'2018-04-23 13:54:20',0,'load_cload1','10',0,NULL),(236,1,50,'2018-04-23 13:54:20',0,'load_cload15','4',0,NULL),(237,1,50,'2018-04-23 13:54:20',0,'load_cload5','6',0,NULL),(238,1,50,'2018-04-23 13:54:20',0,'load_percpu','false',0,NULL),(239,1,50,'2018-04-23 13:54:20',0,'load_wload1','5',0,NULL),(240,1,50,'2018-04-23 13:54:20',0,'load_wload15','3',0,NULL),(241,1,50,'2018-04-23 13:54:20',0,'load_wload5','4',0,NULL),(242,1,52,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(243,1,52,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(244,1,52,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(245,1,52,'2018-04-23 13:54:20',0,'logstash_filedesc_crit','95',0,NULL),(246,1,52,'2018-04-23 13:54:20',0,'logstash_filedesc_warn','85',0,NULL),(247,1,52,'2018-04-23 13:54:20',0,'logstash_heap_crit','80',0,NULL),(248,1,52,'2018-04-23 13:54:20',0,'logstash_heap_warn','70',0,NULL),(249,1,52,'2018-04-23 13:54:20',0,'logstash_hostname','$check_address$',0,NULL),(250,1,52,'2018-04-23 13:54:20',0,'logstash_port','9600',0,NULL),(251,1,53,'2018-04-23 13:54:20',0,'storcli_path','/usr/sbin/storcli',0,NULL),(252,1,55,'2018-04-23 13:54:20',0,'mem_cache','false',0,NULL),(253,1,55,'2018-04-23 13:54:20',0,'mem_free','false',0,NULL),(254,1,55,'2018-04-23 13:54:20',0,'mem_used','false',0,NULL),(255,1,56,'2018-04-23 13:54:20',0,'memory_win_unit','mb',0,NULL),(256,1,57,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(257,1,57,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(258,1,57,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(259,1,57,'2018-04-23 13:54:20',0,'mongodb_action','connections',0,NULL),(260,1,57,'2018-04-23 13:54:20',0,'mongodb_address','$check_address$',0,NULL),(261,1,57,'2018-04-23 13:54:20',0,'mongodb_perfdata','true',0,NULL),(262,1,58,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(263,1,58,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(264,1,58,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(265,1,58,'2018-04-23 13:54:20',0,'mssql_health_commit','false',0,NULL),(266,1,58,'2018-04-23 13:54:20',0,'mssql_health_nooffline','false',0,NULL),(267,1,58,'2018-04-23 13:54:20',0,'mssql_health_notemp','false',0,NULL),(268,1,58,'2018-04-23 13:54:20',0,'mssql_health_offlineok','false',0,NULL),(269,1,58,'2018-04-23 13:54:20',0,'mssql_health_regexp','false',0,NULL),(270,1,58,'2018-04-23 13:54:20',0,'mssql_health_report','short',0,NULL),(271,1,59,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(272,1,59,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(273,1,59,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(274,1,59,'2018-04-23 13:54:20',0,'mysql_hostname','$check_address$',0,NULL),(275,1,60,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(276,1,60,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(277,1,60,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(278,1,60,'2018-04-23 13:54:20',0,'mysql_health_hostname','$check_address$',0,NULL),(279,1,61,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(280,1,61,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(281,1,61,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(282,1,61,'2018-04-23 13:54:20',0,'mysql_query_hostname','$check_address$',0,NULL),(283,1,62,'2018-04-23 13:54:20',0,'negate_timeout_result','UNKNOWN',0,NULL),(284,1,63,'2018-04-23 13:54:20',0,'network_no_isatap','true',0,NULL),(285,1,64,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(286,1,64,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(287,1,64,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(288,1,64,'2018-04-23 13:54:20',0,'nginx_status_critical','20000,200,300',0,NULL),(289,1,64,'2018-04-23 13:54:20',0,'nginx_status_disable_sslverify','false',0,NULL),(290,1,64,'2018-04-23 13:54:20',0,'nginx_status_host_address','$check_address$',0,NULL),(291,1,64,'2018-04-23 13:54:20',0,'nginx_status_ssl','false',0,NULL),(292,1,64,'2018-04-23 13:54:20',0,'nginx_status_timeout','15',0,NULL),(293,1,64,'2018-04-23 13:54:20',0,'nginx_status_warn','10000,100,200',0,NULL),(294,1,65,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(295,1,65,'2018-04-23 13:54:20',0,'check_ipv4','$nrpe_ipv4$',0,NULL),(296,1,65,'2018-04-23 13:54:20',0,'check_ipv6','$nrpe_ipv6$',0,NULL),(297,1,65,'2018-04-23 13:54:20',0,'nrpe_address','$check_address$',0,NULL),(298,1,65,'2018-04-23 13:54:20',0,'nrpe_no_ssl','false',0,NULL),(299,1,65,'2018-04-23 13:54:20',0,'nrpe_timeout_unknown','false',0,NULL),(300,1,65,'2018-04-23 13:54:20',0,'nrpe_version_2','false',0,NULL),(301,1,66,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(302,1,66,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(303,1,66,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(304,1,66,'2018-04-23 13:54:20',0,'nscp_address','$check_address$',0,NULL),(305,1,66,'2018-04-23 13:54:20',0,'nscp_port','12489',0,NULL),(306,1,66,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(307,1,67,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(308,1,67,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(309,1,67,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(310,1,67,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(311,1,67,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(312,1,68,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(313,1,68,'2018-04-23 13:54:20',0,'nscp_counter_less','false',0,NULL),(314,1,68,'2018-04-23 13:54:20',0,'nscp_counter_op','Object of type \'Function\'',0,NULL),(315,1,68,'2018-04-23 13:54:20',0,'nscp_counter_perfsyntax','$nscp_counter_name$',0,NULL),(316,1,68,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(317,1,68,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(318,1,68,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(319,1,68,'2018-04-23 13:54:20',0,'nscp_query','check_pdh',0,NULL),(320,1,68,'2018-04-23 13:54:20',0,'nscp_showall','$nscp_counter_showall$',0,NULL),(321,1,69,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(322,1,69,'2018-04-23 13:54:20',0,'nscp_cpu_critical','90',0,NULL),(323,1,69,'2018-04-23 13:54:20',0,'nscp_cpu_showall','true',0,NULL),(324,1,69,'2018-04-23 13:54:20',0,'nscp_cpu_time','[\"1m\",\"5m\",\"15m\"]',1,NULL),(325,1,69,'2018-04-23 13:54:20',0,'nscp_cpu_warning','80',0,NULL),(326,1,69,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(327,1,69,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(328,1,69,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(329,1,69,'2018-04-23 13:54:20',0,'nscp_query','check_cpu',0,NULL),(330,1,69,'2018-04-23 13:54:20',0,'nscp_showall','$nscp_cpu_showall$',0,NULL),(331,1,70,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(332,1,70,'2018-04-23 13:54:20',0,'nscp_disk_critical','Object of type \'Function\'',0,NULL),(333,1,70,'2018-04-23 13:54:20',0,'nscp_disk_free','false',0,NULL),(334,1,70,'2018-04-23 13:54:20',0,'nscp_disk_op','Object of type \'Function\'',0,NULL),(335,1,70,'2018-04-23 13:54:20',0,'nscp_disk_showall','true',0,NULL),(336,1,70,'2018-04-23 13:54:20',0,'nscp_disk_warning','Object of type \'Function\'',0,NULL),(337,1,70,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(338,1,70,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(339,1,70,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckDisk\"]',1,NULL),(340,1,70,'2018-04-23 13:54:20',0,'nscp_query','check_drivesize',0,NULL),(341,1,70,'2018-04-23 13:54:20',0,'nscp_showall','$nscp_disk_showall$',0,NULL),(342,1,71,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(343,1,71,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(344,1,71,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(345,1,71,'2018-04-23 13:54:20',0,'nscp_memory_committed','false',0,NULL),(346,1,71,'2018-04-23 13:54:20',0,'nscp_memory_critical','Object of type \'Function\'',0,NULL),(347,1,71,'2018-04-23 13:54:20',0,'nscp_memory_free','true',0,NULL),(348,1,71,'2018-04-23 13:54:20',0,'nscp_memory_op','Object of type \'Function\'',0,NULL),(349,1,71,'2018-04-23 13:54:20',0,'nscp_memory_physical','true',0,NULL),(350,1,71,'2018-04-23 13:54:20',0,'nscp_memory_showall','false',0,NULL),(351,1,71,'2018-04-23 13:54:20',0,'nscp_memory_warning','Object of type \'Function\'',0,NULL),(352,1,71,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(353,1,71,'2018-04-23 13:54:20',0,'nscp_query','check_memory',0,NULL),(354,1,71,'2018-04-23 13:54:20',0,'nscp_showall','$nscp_memory_showall$',0,NULL),(355,1,72,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(356,1,72,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(357,1,72,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(358,1,72,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(359,1,72,'2018-04-23 13:54:20',0,'nscp_query','check_os_version',0,NULL),(360,1,72,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(361,1,73,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(362,1,73,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(363,1,73,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(364,1,73,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(365,1,73,'2018-04-23 13:54:20',0,'nscp_query','check_pagefile',0,NULL),(366,1,73,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(367,1,74,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(368,1,74,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(369,1,74,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(370,1,74,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(371,1,74,'2018-04-23 13:54:20',0,'nscp_query','check_process',0,NULL),(372,1,74,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(373,1,75,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(374,1,75,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(375,1,75,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(376,1,75,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(377,1,75,'2018-04-23 13:54:20',0,'nscp_query','check_service',0,NULL),(378,1,75,'2018-04-23 13:54:20',0,'nscp_service_ctype','state',0,NULL),(379,1,75,'2018-04-23 13:54:20',0,'nscp_service_otype','state',0,NULL),(380,1,75,'2018-04-23 13:54:20',0,'nscp_service_showall','true',0,NULL),(381,1,75,'2018-04-23 13:54:20',0,'nscp_service_type','state',0,NULL),(382,1,75,'2018-04-23 13:54:20',0,'nscp_service_wtype','state',0,NULL),(383,1,75,'2018-04-23 13:54:20',0,'nscp_showall','$nscp_service_showall$',0,NULL),(384,1,76,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(385,1,76,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(386,1,76,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(387,1,76,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckSystem\"]',1,NULL),(388,1,76,'2018-04-23 13:54:20',0,'nscp_query','check_uptime',0,NULL),(389,1,76,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(390,1,77,'2018-04-23 13:54:20',0,'nscp_boot','true',0,NULL),(391,1,77,'2018-04-23 13:54:20',0,'nscp_load_all','false',0,NULL),(392,1,77,'2018-04-23 13:54:20',0,'nscp_log_level','critical',0,NULL),(393,1,77,'2018-04-23 13:54:20',0,'nscp_modules','[\"CheckHelpers\"]',1,NULL),(394,1,77,'2018-04-23 13:54:20',0,'nscp_query','check_version',0,NULL),(395,1,77,'2018-04-23 13:54:20',0,'nscp_showall','false',0,NULL),(396,1,78,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(397,1,78,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(398,1,78,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(399,1,78,'2018-04-23 13:54:20',0,'nscp_api_host','$check_address$',0,NULL),(400,1,79,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(401,1,79,'2018-04-23 13:54:20',0,'check_ipv4','$ntp_ipv4$',0,NULL),(402,1,79,'2018-04-23 13:54:20',0,'check_ipv6','$ntp_ipv6$',0,NULL),(403,1,79,'2018-04-23 13:54:20',0,'ntp_address','$check_address$',0,NULL),(404,1,80,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(405,1,80,'2018-04-23 13:54:20',0,'check_ipv4','$ntp_ipv4$',0,NULL),(406,1,80,'2018-04-23 13:54:20',0,'check_ipv6','$ntp_ipv6$',0,NULL),(407,1,80,'2018-04-23 13:54:20',0,'ntp_address','$check_address$',0,NULL),(408,1,81,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(409,1,81,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(410,1,81,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(411,1,81,'2018-04-23 13:54:20',0,'nwc_health_hostname','$check_address$',0,NULL),(412,1,81,'2018-04-23 13:54:20',0,'nwc_health_mode','hardware-health',0,NULL),(413,1,82,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(414,1,82,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(415,1,82,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(416,1,82,'2018-04-23 13:54:20',0,'oracle_health_commit','false',0,NULL),(417,1,82,'2018-04-23 13:54:20',0,'oracle_health_ident','false',0,NULL),(418,1,82,'2018-04-23 13:54:20',0,'oracle_health_noperfdata','false',0,NULL),(419,1,82,'2018-04-23 13:54:20',0,'oracle_health_regexp','false',0,NULL),(420,1,82,'2018-04-23 13:54:20',0,'oracle_health_report','long',0,NULL),(421,1,82,'2018-04-23 13:54:20',0,'oracle_home','/usr/lib/oracle/11.2/client64/lib',0,NULL),(422,1,82,'2018-04-23 13:54:20',0,'oracle_tns_admin','/etc/icinga2/plugin-configs',0,NULL),(423,1,83,'2018-04-23 13:54:20',0,'dummy_state','3',0,NULL),(424,1,83,'2018-04-23 13:54:20',0,'dummy_text','No Passive Check Result Received.',0,NULL),(425,1,84,'2018-04-23 13:54:20',0,'perfmon_win_type','double',0,NULL),(426,1,84,'2018-04-23 13:54:20',0,'performance_win_wait','1000',0,NULL),(427,1,85,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(428,1,85,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(429,1,85,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(430,1,85,'2018-04-23 13:54:20',0,'pgsql_hostname','$check_address$',0,NULL),(431,1,86,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(432,1,86,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(433,1,86,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(434,1,86,'2018-04-23 13:54:20',0,'ping_address','$check_address$',0,NULL),(435,1,86,'2018-04-23 13:54:20',0,'ping_cpl','15',0,NULL),(436,1,86,'2018-04-23 13:54:20',0,'ping_crta','200',0,NULL),(437,1,86,'2018-04-23 13:54:20',0,'ping_wpl','5',0,NULL),(438,1,86,'2018-04-23 13:54:20',0,'ping_wrta','100',0,NULL),(439,1,87,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(440,1,87,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(441,1,87,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(442,1,87,'2018-04-23 13:54:20',0,'ping_win_address','$check_address$',0,NULL),(443,1,87,'2018-04-23 13:54:20',0,'ping_win_packets','5',0,NULL),(444,1,87,'2018-04-23 13:54:20',0,'ping_win_timeout','1000',0,NULL),(445,1,88,'2018-04-23 13:54:20',0,'ping_address','$address$',0,NULL),(446,1,88,'2018-04-23 13:54:20',0,'ping_cpl','15',0,NULL),(447,1,88,'2018-04-23 13:54:20',0,'ping_crta','200',0,NULL),(448,1,88,'2018-04-23 13:54:20',0,'ping_wpl','5',0,NULL),(449,1,88,'2018-04-23 13:54:20',0,'ping_wrta','100',0,NULL),(450,1,89,'2018-04-23 13:54:20',0,'ping_win_address','$address$',0,NULL),(451,1,89,'2018-04-23 13:54:20',0,'ping_win_packets','5',0,NULL),(452,1,89,'2018-04-23 13:54:20',0,'ping_win_timeout','1000',0,NULL),(453,1,90,'2018-04-23 13:54:20',0,'ping_address','$address6$',0,NULL),(454,1,90,'2018-04-23 13:54:20',0,'ping_cpl','15',0,NULL),(455,1,90,'2018-04-23 13:54:20',0,'ping_crta','200',0,NULL),(456,1,90,'2018-04-23 13:54:20',0,'ping_wpl','5',0,NULL),(457,1,90,'2018-04-23 13:54:20',0,'ping_wrta','100',0,NULL),(458,1,91,'2018-04-23 13:54:20',0,'ping_win_address','$address6$',0,NULL),(459,1,91,'2018-04-23 13:54:20',0,'ping_win_packets','5',0,NULL),(460,1,91,'2018-04-23 13:54:20',0,'ping_win_timeout','1000',0,NULL),(461,1,92,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(462,1,92,'2018-04-23 13:54:20',0,'check_ipv4','$pop_ipv4$',0,NULL),(463,1,92,'2018-04-23 13:54:20',0,'check_ipv6','$pop_ipv6$',0,NULL),(464,1,92,'2018-04-23 13:54:20',0,'pop_address','$check_address$',0,NULL),(465,1,93,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(466,1,93,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(467,1,93,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(468,1,93,'2018-04-23 13:54:20',0,'postgres_host','$check_address$',0,NULL),(469,1,93,'2018-04-23 13:54:20',0,'postgres_production','false',0,NULL),(470,1,93,'2018-04-23 13:54:20',0,'postgres_standby','false',0,NULL),(471,1,93,'2018-04-23 13:54:20',0,'postgres_unixsocket','false',0,NULL),(472,1,94,'2018-04-23 13:54:20',0,'procs_critical','400',0,NULL),(473,1,94,'2018-04-23 13:54:20',0,'procs_nokthreads','false',0,NULL),(474,1,94,'2018-04-23 13:54:20',0,'procs_traditional','false',0,NULL),(475,1,94,'2018-04-23 13:54:20',0,'procs_warning','250',0,NULL),(476,1,96,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(477,1,96,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(478,1,96,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(479,1,96,'2018-04-23 13:54:20',0,'radius_address','$check_address$',0,NULL),(480,1,98,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(481,1,98,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(482,1,98,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(483,1,98,'2018-04-23 13:54:20',0,'rbl_critical','1',0,NULL),(484,1,98,'2018-04-23 13:54:20',0,'rbl_hostname','$check_address$',0,NULL),(485,1,98,'2018-04-23 13:54:20',0,'rbl_timeout','15',0,NULL),(486,1,98,'2018-04-23 13:54:20',0,'rbl_warning','1',0,NULL),(487,1,99,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(488,1,99,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(489,1,99,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(490,1,99,'2018-04-23 13:54:20',0,'redis_hostname','$check_address$',0,NULL),(491,1,99,'2018-04-23 13:54:20',0,'redis_perfparse','false',0,NULL),(492,1,99,'2018-04-23 13:54:20',0,'redis_prev_perfdata','false',0,NULL),(493,1,102,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(494,1,102,'2018-04-23 13:54:20',0,'check_ipv4','$simap_ipv4$',0,NULL),(495,1,102,'2018-04-23 13:54:20',0,'check_ipv6','$simap_ipv6$',0,NULL),(496,1,102,'2018-04-23 13:54:20',0,'simap_address','$check_address$',0,NULL),(497,1,104,'2018-04-23 13:54:20',0,'smart_attributes_config_path','/etc/icinga2/plugins-config/check_smartdb.json',0,NULL),(498,1,105,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(499,1,105,'2018-04-23 13:54:20',0,'check_ipv4','$smtp_ipv4$',0,NULL),(500,1,105,'2018-04-23 13:54:20',0,'check_ipv6','$smtp_ipv6$',0,NULL),(501,1,105,'2018-04-23 13:54:20',0,'smtp_address','$check_address$',0,NULL),(502,1,106,'2018-04-23 13:54:20',0,'snmp_address','Object of type \'Function\'',0,NULL),(503,1,106,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(504,1,106,'2018-04-23 13:54:20',0,'snmp_invert_search','false',0,NULL),(505,1,106,'2018-04-23 13:54:20',0,'snmp_timeout','10',0,NULL),(506,1,107,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(507,1,107,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(508,1,107,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(509,1,107,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(510,1,107,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(511,1,107,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(512,1,107,'2018-04-23 13:54:20',0,'snmp_env_type','cisco',0,NULL),(513,1,107,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(514,1,107,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(515,1,107,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(516,1,107,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(517,1,107,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(518,1,107,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(519,1,107,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(520,1,107,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(521,1,108,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(522,1,108,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(523,1,108,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(524,1,108,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(525,1,108,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(526,1,108,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(527,1,108,'2018-04-23 13:54:20',0,'snmp_crit','0,600',0,NULL),(528,1,108,'2018-04-23 13:54:20',0,'snmp_interface','eth0',0,NULL),(529,1,108,'2018-04-23 13:54:20',0,'snmp_interface_64bit','false',0,NULL),(530,1,108,'2018-04-23 13:54:20',0,'snmp_interface_bits_bytes','true',0,NULL),(531,1,108,'2018-04-23 13:54:20',0,'snmp_interface_delta','300',0,NULL),(532,1,108,'2018-04-23 13:54:20',0,'snmp_interface_errors','true',0,NULL),(533,1,108,'2018-04-23 13:54:20',0,'snmp_interface_ifalias','false',0,NULL),(534,1,108,'2018-04-23 13:54:20',0,'snmp_interface_ifname','false',0,NULL),(535,1,108,'2018-04-23 13:54:20',0,'snmp_interface_kbits','true',0,NULL),(536,1,108,'2018-04-23 13:54:20',0,'snmp_interface_megabytes','true',0,NULL),(537,1,108,'2018-04-23 13:54:20',0,'snmp_interface_noregexp','false',0,NULL),(538,1,108,'2018-04-23 13:54:20',0,'snmp_interface_percent','false',0,NULL),(539,1,108,'2018-04-23 13:54:20',0,'snmp_interface_perf','true',0,NULL),(540,1,108,'2018-04-23 13:54:20',0,'snmp_interface_warncrit_percent','false',0,NULL),(541,1,108,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(542,1,108,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(543,1,108,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(544,1,108,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(545,1,108,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(546,1,108,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(547,1,108,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(548,1,108,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(549,1,108,'2018-04-23 13:54:20',0,'snmp_warn','300,400',0,NULL),(550,1,109,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(551,1,109,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(552,1,109,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(553,1,109,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(554,1,109,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(555,1,109,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(556,1,109,'2018-04-23 13:54:20',0,'snmp_crit','95',0,NULL),(557,1,109,'2018-04-23 13:54:20',0,'snmp_load_type','stand',0,NULL),(558,1,109,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(559,1,109,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(560,1,109,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(561,1,109,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(562,1,109,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(563,1,109,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(564,1,109,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(565,1,109,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(566,1,109,'2018-04-23 13:54:20',0,'snmp_warn','85',0,NULL),(567,1,110,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(568,1,110,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(569,1,110,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(570,1,110,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(571,1,110,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(572,1,110,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(573,1,110,'2018-04-23 13:54:20',0,'snmp_crit','98,80',0,NULL),(574,1,110,'2018-04-23 13:54:20',0,'snmp_is_cisco','false',0,NULL),(575,1,110,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(576,1,110,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(577,1,110,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(578,1,110,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(579,1,110,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(580,1,110,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(581,1,110,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(582,1,110,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(583,1,110,'2018-04-23 13:54:20',0,'snmp_warn','94,50',0,NULL),(584,1,111,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(585,1,111,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(586,1,111,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(587,1,111,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(588,1,111,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(589,1,111,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(590,1,111,'2018-04-23 13:54:20',0,'snmp_crit','0',0,NULL),(591,1,111,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(592,1,111,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(593,1,111,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(594,1,111,'2018-04-23 13:54:20',0,'snmp_process_cpu_threshold','0,0',0,NULL),(595,1,111,'2018-04-23 13:54:20',0,'snmp_process_cpu_usage','false',0,NULL),(596,1,111,'2018-04-23 13:54:20',0,'snmp_process_mem_threshold','0,0',0,NULL),(597,1,111,'2018-04-23 13:54:20',0,'snmp_process_mem_usage','false',0,NULL),(598,1,111,'2018-04-23 13:54:20',0,'snmp_process_name','.*',0,NULL),(599,1,111,'2018-04-23 13:54:20',0,'snmp_process_use_params','false',0,NULL),(600,1,111,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(601,1,111,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(602,1,111,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(603,1,111,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(604,1,111,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(605,1,111,'2018-04-23 13:54:20',0,'snmp_warn','0',0,NULL),(606,1,112,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(607,1,112,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(608,1,112,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(609,1,112,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(610,1,112,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(611,1,112,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(612,1,112,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(613,1,112,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(614,1,112,'2018-04-23 13:54:20',0,'snmp_service_name','.*',0,NULL),(615,1,112,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(616,1,112,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(617,1,112,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(618,1,112,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(619,1,112,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(620,1,113,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(621,1,113,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(622,1,113,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(623,1,113,'2018-04-23 13:54:20',0,'snmp_address','$check_address$',0,NULL),(624,1,113,'2018-04-23 13:54:20',0,'snmp_authprotocol','md5,des',0,NULL),(625,1,113,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(626,1,113,'2018-04-23 13:54:20',0,'snmp_crit','90',0,NULL),(627,1,113,'2018-04-23 13:54:20',0,'snmp_login','snmpuser',0,NULL),(628,1,113,'2018-04-23 13:54:20',0,'snmp_nocrypt','true',0,NULL),(629,1,113,'2018-04-23 13:54:20',0,'snmp_perf','true',0,NULL),(630,1,113,'2018-04-23 13:54:20',0,'snmp_storage_name','^/$$',0,NULL),(631,1,113,'2018-04-23 13:54:20',0,'snmp_timeout','5',0,NULL),(632,1,113,'2018-04-23 13:54:20',0,'snmp_v2','false',0,NULL),(633,1,113,'2018-04-23 13:54:20',0,'snmp_v3','false',0,NULL),(634,1,113,'2018-04-23 13:54:20',0,'snmp_v3_use_authprotocol','false',0,NULL),(635,1,113,'2018-04-23 13:54:20',0,'snmp_v3_use_privpass','false',0,NULL),(636,1,113,'2018-04-23 13:54:20',0,'snmp_warn','80',0,NULL),(637,1,114,'2018-04-23 13:54:20',0,'snmp_address','Object of type \'Function\'',0,NULL),(638,1,114,'2018-04-23 13:54:20',0,'snmp_community','public',0,NULL),(639,1,114,'2018-04-23 13:54:20',0,'snmp_invert_search','false',0,NULL),(640,1,114,'2018-04-23 13:54:20',0,'snmp_oid','1.3.6.1.2.1.1.3.0',0,NULL),(641,1,114,'2018-04-23 13:54:20',0,'snmp_timeout','10',0,NULL),(642,1,115,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(643,1,115,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(644,1,115,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(645,1,115,'2018-04-23 13:54:20',0,'snmpv3_address','$check_address$',0,NULL),(646,1,115,'2018-04-23 13:54:20',0,'snmpv3_auth_alg','SHA',0,NULL),(647,1,115,'2018-04-23 13:54:20',0,'snmpv3_priv_alg','AES',0,NULL),(648,1,115,'2018-04-23 13:54:20',0,'snmpv3_seclevel','authPriv',0,NULL),(649,1,115,'2018-04-23 13:54:20',0,'snmpv3_timeout','10',0,NULL),(650,1,116,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(651,1,116,'2018-04-23 13:54:20',0,'check_ipv4','$spop_ipv4$',0,NULL),(652,1,116,'2018-04-23 13:54:20',0,'check_ipv6','$spop_ipv6$',0,NULL),(653,1,116,'2018-04-23 13:54:20',0,'spop_address','$check_address$',0,NULL),(654,1,117,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(655,1,117,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(656,1,117,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(657,1,117,'2018-04-23 13:54:20',0,'squid_client','/usr/bin/squidclient',0,NULL),(658,1,117,'2018-04-23 13:54:20',0,'squid_hostname','$check_address$',0,NULL),(659,1,118,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(660,1,118,'2018-04-23 13:54:20',0,'check_ipv4','$ssh_ipv4$',0,NULL),(661,1,118,'2018-04-23 13:54:20',0,'check_ipv6','$ssh_ipv6$',0,NULL),(662,1,118,'2018-04-23 13:54:20',0,'ssh_address','$check_address$',0,NULL),(663,1,119,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(664,1,119,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(665,1,119,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(666,1,119,'2018-04-23 13:54:20',0,'ssl_address','$check_address$',0,NULL),(667,1,119,'2018-04-23 13:54:20',0,'ssl_cert_valid_days_critical','false',0,NULL),(668,1,119,'2018-04-23 13:54:20',0,'ssl_cert_valid_days_warn','false',0,NULL),(669,1,119,'2018-04-23 13:54:20',0,'ssl_port','443',0,NULL),(670,1,120,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(671,1,120,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(672,1,120,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(673,1,120,'2018-04-23 13:54:20',0,'ssl_cert_address','$check_address$',0,NULL),(674,1,120,'2018-04-23 13:54:20',0,'ssl_cert_port','443',0,NULL),(675,1,121,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(676,1,121,'2018-04-23 13:54:20',0,'check_ipv4','$ssmtp_ipv4$',0,NULL),(677,1,121,'2018-04-23 13:54:20',0,'check_ipv6','$ssmtp_ipv6$',0,NULL),(678,1,121,'2018-04-23 13:54:20',0,'ssmtp_address','$check_address$',0,NULL),(679,1,122,'2018-04-23 13:54:20',0,'swap_allswaps','false',0,NULL),(680,1,122,'2018-04-23 13:54:20',0,'swap_cfree','25',0,NULL),(681,1,122,'2018-04-23 13:54:20',0,'swap_integer','false',0,NULL),(682,1,122,'2018-04-23 13:54:20',0,'swap_wfree','50',0,NULL),(683,1,123,'2018-04-23 13:54:20',0,'swap_win_unit','mb',0,NULL),(684,1,124,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(685,1,124,'2018-04-23 13:54:20',0,'check_ipv4','$tcp_ipv4$',0,NULL),(686,1,124,'2018-04-23 13:54:20',0,'check_ipv6','$tcp_ipv6$',0,NULL),(687,1,124,'2018-04-23 13:54:20',0,'tcp_address','$check_address$',0,NULL),(688,1,124,'2018-04-23 13:54:20',0,'tcp_all','false',0,NULL),(689,1,124,'2018-04-23 13:54:20',0,'tcp_mismatch','warn',0,NULL),(690,1,124,'2018-04-23 13:54:20',0,'tcp_refuse','crit',0,NULL),(691,1,124,'2018-04-23 13:54:20',0,'tcp_timeout','10',0,NULL),(692,1,125,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(693,1,125,'2018-04-23 13:54:20',0,'check_ipv4','$udp_ipv4$',0,NULL),(694,1,125,'2018-04-23 13:54:20',0,'check_ipv6','$udp_ipv6$',0,NULL),(695,1,125,'2018-04-23 13:54:20',0,'udp_address','$check_address$',0,NULL),(696,1,127,'2018-04-23 13:54:20',0,'check_address','Object of type \'Function\'',0,NULL),(697,1,127,'2018-04-23 13:54:20',0,'check_ipv4','false',0,NULL),(698,1,127,'2018-04-23 13:54:20',0,'check_ipv6','false',0,NULL),(699,1,127,'2018-04-23 13:54:20',0,'ups_address','$check_address$',0,NULL),(700,1,127,'2018-04-23 13:54:20',0,'ups_name','ups',0,NULL),(701,1,128,'2018-04-23 13:54:20',0,'uptime_win_unit','s',0,NULL),(702,1,129,'2018-04-23 13:54:20',0,'users_cgreater','50',0,NULL),(703,1,129,'2018-04-23 13:54:20',0,'users_wgreater','20',0,NULL),(704,1,131,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(705,1,131,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(706,1,131,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(707,1,131,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(708,1,131,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(709,1,132,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(710,1,132,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(711,1,132,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(712,1,132,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(713,1,132,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(714,1,133,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(715,1,133,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(716,1,133,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(717,1,133,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(718,1,133,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(719,1,134,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(720,1,134,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(721,1,134,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(722,1,134,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(723,1,134,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(724,1,135,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(725,1,135,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(726,1,135,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(727,1,135,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(728,1,135,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(729,1,136,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(730,1,136,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(731,1,136,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(732,1,136,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(733,1,136,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(734,1,137,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(735,1,137,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(736,1,137,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(737,1,137,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(738,1,137,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(739,1,138,'2018-04-23 13:54:20',0,'vmware_alertonly','false',0,NULL),(740,1,138,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(741,1,138,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(742,1,138,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(743,1,138,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(744,1,138,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(745,1,138,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(746,1,138,'2018-04-23 13:54:20',0,'vmware_usedspace','true',0,NULL),(747,1,138,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(748,1,139,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(749,1,139,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(750,1,139,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(751,1,139,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(752,1,139,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(753,1,139,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(754,1,140,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(755,1,140,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(756,1,140,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(757,1,140,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(758,1,140,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(759,1,140,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(760,1,140,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(761,1,140,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(762,1,141,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(763,1,141,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(764,1,141,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(765,1,141,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(766,1,141,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(767,1,141,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(768,1,142,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(769,1,142,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(770,1,142,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(771,1,142,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(772,1,142,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(773,1,142,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(774,1,142,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(775,1,142,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(776,1,143,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(777,1,143,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(778,1,143,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(779,1,143,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(780,1,143,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(781,1,143,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(782,1,144,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(783,1,144,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(784,1,144,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(785,1,144,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(786,1,144,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(787,1,144,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(788,1,145,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(789,1,145,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(790,1,145,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(791,1,145,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(792,1,145,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(793,1,145,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(794,1,146,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(795,1,146,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(796,1,146,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(797,1,146,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(798,1,146,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(799,1,146,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(800,1,147,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(801,1,147,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(802,1,147,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(803,1,147,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(804,1,147,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(805,1,147,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(806,1,148,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(807,1,148,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(808,1,148,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(809,1,148,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(810,1,148,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(811,1,148,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(812,1,149,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(813,1,149,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(814,1,149,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(815,1,149,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(816,1,149,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(817,1,149,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(818,1,150,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(819,1,150,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(820,1,150,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(821,1,150,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(822,1,150,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(823,1,150,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(824,1,151,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(825,1,151,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(826,1,151,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(827,1,151,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(828,1,151,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(829,1,151,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(830,1,152,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(831,1,152,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(832,1,152,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(833,1,152,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(834,1,152,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(835,1,152,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(836,1,153,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(837,1,153,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(838,1,153,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(839,1,153,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(840,1,153,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(841,1,153,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(842,1,154,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(843,1,154,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(844,1,154,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(845,1,154,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(846,1,154,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(847,1,154,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(848,1,155,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(849,1,155,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(850,1,155,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(851,1,155,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(852,1,155,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(853,1,155,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(854,1,156,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(855,1,156,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(856,1,156,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(857,1,156,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(858,1,156,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(859,1,156,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(860,1,157,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(861,1,157,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(862,1,157,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(863,1,157,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(864,1,157,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(865,1,157,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(866,1,158,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(867,1,158,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(868,1,158,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(869,1,158,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(870,1,158,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(871,1,158,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(872,1,159,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(873,1,159,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(874,1,159,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(875,1,159,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(876,1,159,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(877,1,159,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(878,1,160,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(879,1,160,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(880,1,160,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(881,1,160,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(882,1,160,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(883,1,160,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(884,1,161,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(885,1,161,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(886,1,161,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(887,1,161,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(888,1,161,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(889,1,161,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(890,1,162,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(891,1,162,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(892,1,162,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(893,1,162,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(894,1,162,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(895,1,162,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(896,1,162,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(897,1,162,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(898,1,163,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(899,1,163,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(900,1,163,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(901,1,163,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(902,1,163,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(903,1,163,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(904,1,164,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(905,1,164,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(906,1,164,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(907,1,164,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(908,1,164,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(909,1,164,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(910,1,165,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(911,1,165,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(912,1,165,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(913,1,165,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(914,1,165,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(915,1,165,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(916,1,166,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(917,1,166,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(918,1,166,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(919,1,166,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(920,1,166,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(921,1,166,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(922,1,167,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(923,1,167,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(924,1,167,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(925,1,167,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(926,1,167,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(927,1,167,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(928,1,168,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(929,1,168,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(930,1,168,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(931,1,168,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(932,1,168,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(933,1,168,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(934,1,169,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(935,1,169,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(936,1,169,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(937,1,169,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(938,1,169,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(939,1,169,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(940,1,170,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(941,1,170,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(942,1,170,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(943,1,170,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(944,1,170,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(945,1,170,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(946,1,171,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(947,1,171,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(948,1,171,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(949,1,171,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(950,1,171,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(951,1,171,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(952,1,172,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(953,1,172,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(954,1,172,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(955,1,172,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(956,1,172,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(957,1,172,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(958,1,173,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(959,1,173,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(960,1,173,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(961,1,173,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(962,1,173,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(963,1,173,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(964,1,174,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(965,1,174,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(966,1,174,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(967,1,174,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(968,1,174,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(969,1,174,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(970,1,175,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(971,1,175,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(972,1,175,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(973,1,175,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(974,1,175,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(975,1,175,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(976,1,176,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(977,1,176,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(978,1,176,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(979,1,176,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(980,1,176,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(981,1,176,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(982,1,177,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(983,1,177,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(984,1,177,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(985,1,177,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(986,1,177,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(987,1,177,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(988,1,178,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(989,1,178,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(990,1,178,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(991,1,178,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(992,1,178,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(993,1,178,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(994,1,179,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(995,1,179,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(996,1,179,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(997,1,179,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(998,1,179,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(999,1,179,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1000,1,180,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1001,1,180,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1002,1,180,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1003,1,180,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1004,1,180,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1005,1,180,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1006,1,181,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1007,1,181,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1008,1,181,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1009,1,181,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1010,1,181,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1011,1,181,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1012,1,182,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1013,1,182,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1014,1,182,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1015,1,182,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1016,1,182,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1017,1,182,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1018,1,183,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1019,1,183,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1020,1,183,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1021,1,183,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1022,1,183,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1023,1,183,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1024,1,184,'2018-04-23 13:54:20',0,'vmware_alertonly','false',0,NULL),(1025,1,184,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1026,1,184,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(1027,1,184,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1028,1,184,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1029,1,184,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1030,1,184,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1031,1,184,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1032,1,184,'2018-04-23 13:54:20',0,'vmware_usedspace','true',0,NULL),(1033,1,184,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(1034,1,185,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1035,1,185,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1036,1,185,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1037,1,185,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1038,1,185,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1039,1,185,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1040,1,186,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1041,1,186,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1042,1,186,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1043,1,186,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1044,1,186,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1045,1,186,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1046,1,187,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1047,1,187,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(1048,1,187,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1049,1,187,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1050,1,187,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1051,1,187,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1052,1,187,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1053,1,187,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(1054,1,188,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1055,1,188,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1056,1,188,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1057,1,188,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1058,1,188,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1059,1,188,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1060,1,189,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1061,1,189,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1062,1,189,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1063,1,189,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1064,1,189,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1065,1,189,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1066,1,190,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1067,1,190,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1068,1,190,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1069,1,190,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1070,1,190,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1071,1,190,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1072,1,191,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1073,1,191,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1074,1,191,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1075,1,191,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1076,1,191,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1077,1,191,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1078,1,192,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1079,1,192,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1080,1,192,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1081,1,192,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1082,1,192,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1083,1,192,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1084,1,193,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1085,1,193,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1086,1,193,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1087,1,193,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1088,1,193,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1089,1,193,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1090,1,194,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1091,1,194,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1092,1,194,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1093,1,194,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1094,1,194,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1095,1,194,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1096,1,195,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1097,1,195,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1098,1,195,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1099,1,195,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1100,1,195,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1101,1,195,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1102,1,196,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1103,1,196,'2018-04-23 13:54:20',0,'vmware_crit','90%',0,NULL),(1104,1,196,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1105,1,196,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1106,1,196,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1107,1,196,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1108,1,196,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1109,1,196,'2018-04-23 13:54:20',0,'vmware_warn','80%',0,NULL),(1110,1,197,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1111,1,197,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1112,1,197,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1113,1,197,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1114,1,197,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1115,1,197,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1116,1,198,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1117,1,198,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1118,1,198,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1119,1,198,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1120,1,198,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1121,1,198,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1122,1,199,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1123,1,199,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1124,1,199,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1125,1,199,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1126,1,199,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1127,1,199,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1128,1,200,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1129,1,200,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1130,1,200,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1131,1,200,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1132,1,200,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1133,1,200,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1134,1,201,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1135,1,201,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1136,1,201,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1137,1,201,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1138,1,201,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1139,1,201,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1140,1,202,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1141,1,202,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1142,1,202,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1143,1,202,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1144,1,202,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1145,1,202,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1146,1,203,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1147,1,203,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1148,1,203,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1149,1,203,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1150,1,203,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1151,1,203,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1152,1,204,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1153,1,204,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1154,1,204,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1155,1,204,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1156,1,204,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1157,1,204,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1158,1,205,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1159,1,205,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1160,1,205,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1161,1,205,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1162,1,205,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1163,1,205,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1164,1,206,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1165,1,206,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1166,1,206,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1167,1,206,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1168,1,206,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1169,1,206,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1170,1,207,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1171,1,207,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1172,1,207,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1173,1,207,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1174,1,207,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1175,1,207,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1176,1,208,'2018-04-23 13:54:20',0,'vmware_auth_nosession','false',0,NULL),(1177,1,208,'2018-04-23 13:54:20',0,'vmware_host','$address$',0,NULL),(1178,1,208,'2018-04-23 13:54:20',0,'vmware_ignorewarning','false',0,NULL),(1179,1,208,'2018-04-23 13:54:20',0,'vmware_sessionfiledir','/var/spool/icinga2/tmp',0,NULL),(1180,1,208,'2018-04-23 13:54:20',0,'vmware_sslport','443',0,NULL),(1181,1,208,'2018-04-23 13:54:20',0,'vmware_timeout','90',0,NULL),(1182,1,210,'2018-04-23 13:54:20',0,'yum_all_updates','false',0,NULL),(1183,1,210,'2018-04-23 13:54:20',0,'yum_cache_only','false',0,NULL),(1184,1,210,'2018-04-23 13:54:20',0,'yum_no_warn_on_lock','false',0,NULL),(1185,1,210,'2018-04-23 13:54:20',0,'yum_no_warn_on_updates','false',0,NULL),(1186,1,210,'2018-04-23 13:54:20',0,'yum_warn_on_any_update','false',0,NULL),(1187,1,213,'2018-04-23 13:54:20',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,NULL),(1188,1,213,'2018-04-23 13:54:20',0,'http_vhosts','{\"http\":{\"http_uri\":\"/\"}}',1,NULL),(1189,1,213,'2018-04-23 13:54:20',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,NULL),(1190,1,213,'2018-04-23 13:54:20',0,'os','Linux',0,NULL),(1191,1,216,'2018-04-23 13:54:20',0,'notification_address','$address$',0,NULL),(1192,1,216,'2018-04-23 13:54:20',0,'notification_address6','$address6$',0,NULL),(1193,1,216,'2018-04-23 13:54:20',0,'notification_author','$notification.author$',0,NULL),(1194,1,216,'2018-04-23 13:54:20',0,'notification_comment','$notification.comment$',0,NULL),(1195,1,216,'2018-04-23 13:54:20',0,'notification_date','$icinga.long_date_time$',0,NULL),(1196,1,216,'2018-04-23 13:54:20',0,'notification_hostdisplayname','$host.display_name$',0,NULL),(1197,1,216,'2018-04-23 13:54:20',0,'notification_hostname','$host.name$',0,NULL),(1198,1,216,'2018-04-23 13:54:20',0,'notification_hostoutput','$host.output$',0,NULL),(1199,1,216,'2018-04-23 13:54:20',0,'notification_hoststate','$host.state$',0,NULL),(1200,1,216,'2018-04-23 13:54:20',0,'notification_type','$notification.type$',0,NULL),(1201,1,216,'2018-04-23 13:54:20',0,'notification_useremail','$user.email$',0,NULL),(1202,1,217,'2018-04-23 13:54:20',0,'notification_address','$address$',0,NULL),(1203,1,217,'2018-04-23 13:54:20',0,'notification_address6','$address6$',0,NULL),(1204,1,217,'2018-04-23 13:54:20',0,'notification_author','$notification.author$',0,NULL),(1205,1,217,'2018-04-23 13:54:20',0,'notification_comment','$notification.comment$',0,NULL),(1206,1,217,'2018-04-23 13:54:20',0,'notification_date','$icinga.long_date_time$',0,NULL),(1207,1,217,'2018-04-23 13:54:20',0,'notification_hostdisplayname','$host.display_name$',0,NULL),(1208,1,217,'2018-04-23 13:54:20',0,'notification_hostname','$host.name$',0,NULL),(1209,1,217,'2018-04-23 13:54:20',0,'notification_servicedisplayname','$service.display_name$',0,NULL),(1210,1,217,'2018-04-23 13:54:20',0,'notification_servicename','$service.name$',0,NULL),(1211,1,217,'2018-04-23 13:54:20',0,'notification_serviceoutput','$service.output$',0,NULL),(1212,1,217,'2018-04-23 13:54:20',0,'notification_servicestate','$service.state$',0,NULL),(1213,1,217,'2018-04-23 13:54:20',0,'notification_type','$notification.type$',0,NULL),(1214,1,217,'2018-04-23 13:54:20',0,'notification_useremail','$user.email$',0,NULL),(1215,1,222,'2018-04-23 13:54:20',0,'http_uri','/',0,NULL),(1216,1,224,'2018-04-23 13:54:20',0,'disk_partitions','/',0,NULL),(1217,1,226,'2018-04-23 13:54:20',0,'backup_downtime','02:00-03:00',0,NULL);
/*!40000 ALTER TABLE `icinga_customvariablestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_dbversion`
--

DROP TABLE IF EXISTS `icinga_dbversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_dbversion` (
  `dbversion_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `version` varchar(10) DEFAULT '',
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dbversion_id`),
  UNIQUE KEY `dbversion` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_dbversion`
--

LOCK TABLES `icinga_dbversion` WRITE;
/*!40000 ALTER TABLE `icinga_dbversion` DISABLE KEYS */;
INSERT INTO `icinga_dbversion` VALUES (1,'idoutils','1.14.3','2018-04-23 13:39:52','2018-04-23 13:39:52');
/*!40000 ALTER TABLE `icinga_dbversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_downtimehistory`
--

DROP TABLE IF EXISTS `icinga_downtimehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_downtimehistory` (
  `downtimehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NULL DEFAULT NULL,
  `scheduled_end_time` timestamp NULL DEFAULT NULL,
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NULL DEFAULT NULL,
  `actual_start_time_usec` int(11) DEFAULT '0',
  `actual_end_time` timestamp NULL DEFAULT NULL,
  `actual_end_time_usec` int(11) DEFAULT '0',
  `was_cancelled` smallint(6) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NULL DEFAULT NULL,
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`downtimehistory_id`),
  KEY `sla_idx_dohist` (`object_id`,`actual_start_time`,`actual_end_time`),
  KEY `idx_downtimehistory_remove` (`object_id`,`entry_time`,`scheduled_start_time`,`scheduled_end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Historical scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_downtimehistory`
--

LOCK TABLES `icinga_downtimehistory` WRITE;
/*!40000 ALTER TABLE `icinga_downtimehistory` DISABLE KEYS */;
INSERT INTO `icinga_downtimehistory` VALUES (1,1,1,226,'2018-04-24 06:46:03','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2018-04-25 00:00:00','2018-04-25 01:00:00',0,'2018-04-25 00:00:00',0,NULL,0,0,0,NULL,'ub16.04-template!load!ub16-1524552363-0',211);
/*!40000 ALTER TABLE `icinga_downtimehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpoints`
--

DROP TABLE IF EXISTS `icinga_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpoints` (
  `endpoint_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`endpoint_id`),
  KEY `idx_endpoints_object_id` (`endpoint_object_id`),
  KEY `idx_endpoints_zone_object_id` (`zone_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Endpoint configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpoints`
--

LOCK TABLES `icinga_endpoints` WRITE;
/*!40000 ALTER TABLE `icinga_endpoints` DISABLE KEYS */;
INSERT INTO `icinga_endpoints` VALUES (1,1,211,212,1,'ub16.04-template','ub16.04-template','5b0ed6946182000ec0bc697746a61019da00fb7f3f5818d27c1c5f6f746edaa7');
/*!40000 ALTER TABLE `icinga_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpointstatus`
--

DROP TABLE IF EXISTS `icinga_endpointstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpointstatus` (
  `endpointstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `is_connected` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`endpointstatus_id`),
  KEY `idx_endpointstatus_object_id` (`endpoint_object_id`),
  KEY `idx_endpointstatus_zone_object_id` (`zone_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Endpoint status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpointstatus`
--

LOCK TABLES `icinga_endpointstatus` WRITE;
/*!40000 ALTER TABLE `icinga_endpointstatus` DISABLE KEYS */;
INSERT INTO `icinga_endpointstatus` VALUES (1,1,211,212,'2018-04-23 13:54:20','ub16.04-template','ub16.04-template',1);
/*!40000 ALTER TABLE `icinga_endpointstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_eventhandlers`
--

DROP TABLE IF EXISTS `icinga_eventhandlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_eventhandlers` (
  `eventhandler_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `eventhandlers_i_id_idx` (`instance_id`),
  KEY `eventhandlers_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service event handlers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_eventhandlers`
--

LOCK TABLES `icinga_eventhandlers` WRITE;
/*!40000 ALTER TABLE `icinga_eventhandlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_eventhandlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_externalcommands`
--

DROP TABLE IF EXISTS `icinga_externalcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_externalcommands` (
  `externalcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `command_type` smallint(6) DEFAULT '0',
  `command_name` varchar(128) DEFAULT '',
  `command_args` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`externalcommand_id`),
  KEY `externalcommands_i_id_idx` (`instance_id`),
  KEY `externalcommands_time_id_idx` (`entry_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of processed external commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_externalcommands`
--

LOCK TABLES `icinga_externalcommands` WRITE;
/*!40000 ALTER TABLE `icinga_externalcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_externalcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_flappinghistory`
--

DROP TABLE IF EXISTS `icinga_flappinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_flappinghistory` (
  `flappinghistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_time` timestamp NULL DEFAULT NULL,
  `event_time_usec` int(11) DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `reason_type` smallint(6) DEFAULT '0',
  `flapping_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `low_threshold` double DEFAULT '0',
  `high_threshold` double DEFAULT '0',
  `comment_time` timestamp NULL DEFAULT NULL,
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flappinghistory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical record of host and service flapping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_flappinghistory`
--

LOCK TABLES `icinga_flappinghistory` WRITE;
/*!40000 ALTER TABLE `icinga_flappinghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_flappinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contactgroups`
--

DROP TABLE IF EXISTS `icinga_host_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contactgroups` (
  `host_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contactgroup_id`),
  KEY `host_contactgroups_i_id_idx` (`instance_id`),
  KEY `hstcntgrps_hid_cgoid` (`host_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Host contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contactgroups`
--

LOCK TABLES `icinga_host_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_host_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_host_contactgroups` VALUES (1,1,1,237);
/*!40000 ALTER TABLE `icinga_host_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contacts`
--

DROP TABLE IF EXISTS `icinga_host_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contacts` (
  `host_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contact_id`),
  KEY `host_contacts_i_id_idx` (`instance_id`),
  KEY `idx_host_contacts_host_id` (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Host contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contacts`
--

LOCK TABLES `icinga_host_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_host_contacts` DISABLE KEYS */;
INSERT INTO `icinga_host_contacts` VALUES (1,1,1,236);
/*!40000 ALTER TABLE `icinga_host_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_parenthosts`
--

DROP TABLE IF EXISTS `icinga_host_parenthosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_parenthosts` (
  `host_parenthost_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `parent_host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_parenthost_id`),
  KEY `host_parenthosts_i_id_idx` (`instance_id`),
  KEY `hstprnthsts_hid_phoid` (`host_id`,`parent_host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Parent hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_parenthosts`
--

LOCK TABLES `icinga_host_parenthosts` WRITE;
/*!40000 ALTER TABLE `icinga_host_parenthosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_parenthosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostchecks`
--

DROP TABLE IF EXISTS `icinga_hostchecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostchecks` (
  `hostcheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `is_raw_check` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hostcheck_id`),
  KEY `hostchecks_i_id_idx` (`instance_id`),
  KEY `hostchecks_time_id_idx` (`start_time`),
  KEY `hostchks_h_obj_id_idx` (`host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostchecks`
--

LOCK TABLES `icinga_hostchecks` WRITE;
/*!40000 ALTER TABLE `icinga_hostchecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostchecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostdependencies`
--

DROP TABLE IF EXISTS `icinga_hostdependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostdependencies` (
  `hostdependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_up` smallint(6) DEFAULT '0',
  `fail_on_down` smallint(6) DEFAULT '0',
  `fail_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostdependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`dependent_host_object_id`,`dependency_type`,`inherits_parent`,`fail_on_up`,`fail_on_down`,`fail_on_unreachable`),
  KEY `hostdependencies_i_id_idx` (`instance_id`),
  KEY `idx_hostdependencies_dependent_host_object_id` (`dependent_host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostdependencies`
--

LOCK TABLES `icinga_hostdependencies` WRITE;
/*!40000 ALTER TABLE `icinga_hostdependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostdependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contactgroups` (
  `hostescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`hostescalation_id`,`contactgroup_object_id`),
  KEY `hostesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contactgroups`
--

LOCK TABLES `icinga_hostescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contacts` (
  `hostescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostescalation_id`,`contact_object_id`),
  KEY `hostesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contacts`
--

LOCK TABLES `icinga_hostescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalations`
--

DROP TABLE IF EXISTS `icinga_hostescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalations` (
  `hostescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_down` smallint(6) DEFAULT '0',
  `escalate_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `hostesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalations`
--

LOCK TABLES `icinga_hostescalations` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_members`
--

DROP TABLE IF EXISTS `icinga_hostgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_members` (
  `hostgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostgroup_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostgroup_member_id`),
  KEY `hostgroup_members_i_id_idx` (`instance_id`),
  KEY `hstgrpmbrs_hgid_hoid` (`hostgroup_id`,`host_object_id`),
  KEY `idx_hostgroup_members_object_id` (`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Hostgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_members`
--

LOCK TABLES `icinga_hostgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_hostgroup_members` VALUES (1,1,1,213);
/*!40000 ALTER TABLE `icinga_hostgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroups`
--

DROP TABLE IF EXISTS `icinga_hostgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroups` (
  `hostgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `hostgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`hostgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostgroup_object_id`),
  KEY `hostgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Hostgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroups`
--

LOCK TABLES `icinga_hostgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroups` DISABLE KEYS */;
INSERT INTO `icinga_hostgroups` VALUES (1,1,1,214,'Linux Servers','','','','02e0d2a422d6a2cfb95eb6b4b5dfe19a67577161ac2c115a88ab894b5ebde094'),(2,1,1,215,'Windows Servers','','','','73e141c2706ddff0b19db38a7b385cc7f5af23fb10741709a4196640a29ccdcb');
/*!40000 ALTER TABLE `icinga_hostgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hosts`
--

DROP TABLE IF EXISTS `icinga_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hosts` (
  `host_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `address` varchar(128) DEFAULT '',
  `address6` varchar(128) DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(128) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_down` smallint(6) DEFAULT '0',
  `notify_on_unreachable` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_up` smallint(6) DEFAULT '0',
  `stalk_on_down` smallint(6) DEFAULT '0',
  `stalk_on_unreachable` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_up` smallint(6) DEFAULT '0',
  `flap_detection_on_down` smallint(6) DEFAULT '0',
  `flap_detection_on_unreachable` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  `vrml_image` text,
  `statusmap_image` text,
  `have_2d_coords` smallint(6) DEFAULT '0',
  `x_2d` smallint(6) DEFAULT '0',
  `y_2d` smallint(6) DEFAULT '0',
  `have_3d_coords` smallint(6) DEFAULT '0',
  `x_3d` double DEFAULT '0',
  `y_3d` double DEFAULT '0',
  `z_3d` double DEFAULT '0',
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`host_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`),
  KEY `host_object_id` (`host_object_id`),
  KEY `hosts_i_id_idx` (`instance_id`),
  KEY `hosts_host_object_id_idx` (`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Host definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hosts`
--

LOCK TABLES `icinga_hosts` WRITE;
/*!40000 ALTER TABLE `icinga_hosts` DISABLE KEYS */;
INSERT INTO `icinga_hosts` VALUES (1,1,1,213,'localhost','localhost','127.0.0.1','::1',29,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0,'c3b9324faf449a4bc8fdf1cc385883409d313c467beb8e4620a7a69fd2c8175a');
/*!40000 ALTER TABLE `icinga_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hoststatus`
--

DROP TABLE IF EXISTS `icinga_hoststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hoststatus` (
  `hoststatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` varchar(255) DEFAULT '',
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NULL DEFAULT NULL,
  `next_check` timestamp NULL DEFAULT NULL,
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NULL DEFAULT NULL,
  `last_hard_state_change` timestamp NULL DEFAULT NULL,
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_up` timestamp NULL DEFAULT NULL,
  `last_time_down` timestamp NULL DEFAULT NULL,
  `last_time_unreachable` timestamp NULL DEFAULT NULL,
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NULL DEFAULT NULL,
  `next_notification` timestamp NULL DEFAULT NULL,
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` int(10) unsigned DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hoststatus_id`),
  UNIQUE KEY `object_id` (`host_object_id`),
  KEY `hoststatus_i_id_idx` (`instance_id`),
  KEY `hoststatus_stat_upd_time_idx` (`status_update_time`),
  KEY `hoststatus_current_state_idx` (`current_state`),
  KEY `hoststatus_check_type_idx` (`check_type`),
  KEY `hoststatus_state_type_idx` (`state_type`),
  KEY `hoststatus_last_state_chg_idx` (`last_state_change`),
  KEY `hoststatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `hoststatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `hoststatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `hoststatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `hoststatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `hoststatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `hoststatus_is_flapping_idx` (`is_flapping`),
  KEY `hoststatus_p_state_chg_idx` (`percent_state_change`),
  KEY `hoststatus_latency_idx` (`latency`),
  KEY `hoststatus_ex_time_idx` (`execution_time`),
  KEY `hoststatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Current host status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hoststatus`
--

LOCK TABLES `icinga_hoststatus` WRITE;
/*!40000 ALTER TABLE `icinga_hoststatus` DISABLE KEYS */;
INSERT INTO `icinga_hoststatus` VALUES (1,1,213,'2018-04-24 07:16:43','PING OK - Packet loss = 0%, RTA = 0.06 ms','','rta=0.057000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','ub16.04-template',0,1,1,1,3,'2018-04-24 07:16:43','2018-04-24 07:17:40',0,'2018-04-23 13:41:10','2018-04-23 13:41:10',0,'2018-04-24 07:16:43',NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000691,4.003685,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,211);
/*!40000 ALTER TABLE `icinga_hoststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_instances`
--

DROP TABLE IF EXISTS `icinga_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_instances` (
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(64) DEFAULT '',
  `instance_description` varchar(128) DEFAULT '',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Location names of various Icinga installations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_instances`
--

LOCK TABLES `icinga_instances` WRITE;
/*!40000 ALTER TABLE `icinga_instances` DISABLE KEYS */;
INSERT INTO `icinga_instances` VALUES (1,'default','');
/*!40000 ALTER TABLE `icinga_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_logentries`
--

DROP TABLE IF EXISTS `icinga_logentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_logentries` (
  `logentry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `logentry_time` timestamp NULL DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_time_usec` int(11) DEFAULT '0',
  `logentry_type` int(11) DEFAULT '0',
  `logentry_data` text,
  `realtime_data` smallint(6) DEFAULT '0',
  `inferred_data_extracted` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`logentry_id`),
  KEY `loge_time_idx` (`logentry_time`),
  KEY `loge_inst_id_time_idx` (`instance_id`,`logentry_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of log entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_logentries`
--

LOCK TABLES `icinga_logentries` WRITE;
/*!40000 ALTER TABLE `icinga_logentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_logentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notifications`
--

DROP TABLE IF EXISTS `icinga_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notifications` (
  `notification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `notification_reason` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `escalated` smallint(6) DEFAULT '0',
  `contacts_notified` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `notification_idx` (`notification_type`,`object_id`,`start_time`),
  KEY `notification_object_id_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Historical record of host and service notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notifications`
--

LOCK TABLES `icinga_notifications` WRITE;
/*!40000 ALTER TABLE `icinga_notifications` DISABLE KEYS */;
INSERT INTO `icinga_notifications` VALUES (1,1,1,0,218,'2018-04-23 14:12:45',537365,'2018-04-23 14:12:45',537365,2,'APT CRITICAL: 68 packages available for upgrade (13 critical updates). ','',0,1,211),(2,1,1,6,226,'2018-04-24 06:47:02',982265,'2018-04-24 06:47:02',982265,0,'OK - load average: 0.27, 0.07, 0.02','',0,1,211),(3,1,1,0,218,'2018-04-24 06:47:08',483330,'2018-04-24 06:47:08',483330,2,'APT CRITICAL: 75 packages available for upgrade (20 critical updates). ','',0,1,211),(4,1,1,0,218,'2018-04-24 07:17:13',477196,'2018-04-24 07:17:13',477196,2,'APT CRITICAL: 75 packages available for upgrade (20 critical updates). ','',0,1,211);
/*!40000 ALTER TABLE `icinga_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_objects`
--

DROP TABLE IF EXISTS `icinga_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_objects` (
  `object_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `objecttype_id` bigint(20) unsigned DEFAULT '0',
  `name1` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `name2` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `objecttype_id` (`objecttype_id`,`name1`,`name2`),
  KEY `objects_objtype_id_idx` (`objecttype_id`),
  KEY `objects_name1_idx` (`name1`),
  KEY `objects_name2_idx` (`name2`),
  KEY `objects_inst_id_idx` (`instance_id`),
  KEY `sla_idx_obj` (`objecttype_id`,`is_active`,`name1`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1 COMMENT='Current and historical objects of all kinds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_objects`
--

LOCK TABLES `icinga_objects` WRITE;
/*!40000 ALTER TABLE `icinga_objects` DISABLE KEYS */;
INSERT INTO `icinga_objects` VALUES (1,1,12,'check_ido',NULL,1),(2,1,12,'check_adaptec-raid',NULL,1),(3,1,12,'check_apache-status',NULL,1),(4,1,12,'check_apt',NULL,1),(5,1,12,'check_breeze',NULL,1),(6,1,12,'check_by_ssh',NULL,1),(7,1,12,'check_clamd',NULL,1),(8,1,12,'check_cluster',NULL,1),(9,1,12,'check_cluster-zone',NULL,1),(10,1,12,'check_db2_health',NULL,1),(11,1,12,'check_dhcp',NULL,1),(12,1,12,'check_dig',NULL,1),(13,1,12,'check_disk',NULL,1),(14,1,12,'check_disk-windows',NULL,1),(15,1,12,'check_disk_smb',NULL,1),(16,1,12,'check_dns',NULL,1),(17,1,12,'check_dummy',NULL,1),(18,1,12,'check_elasticsearch',NULL,1),(19,1,12,'check_esxi_hardware',NULL,1),(20,1,12,'check_exception',NULL,1),(21,1,12,'check_file_age',NULL,1),(22,1,12,'check_flexlm',NULL,1),(23,1,12,'check_fping4',NULL,1),(24,1,12,'check_fping6',NULL,1),(25,1,12,'check_ftp',NULL,1),(26,1,12,'check_game',NULL,1),(27,1,12,'check_glusterfs',NULL,1),(28,1,12,'check_graphite',NULL,1),(29,1,12,'check_hostalive',NULL,1),(30,1,12,'check_hostalive4',NULL,1),(31,1,12,'check_hostalive6',NULL,1),(32,1,12,'check_hpasm',NULL,1),(33,1,12,'check_hpjd',NULL,1),(34,1,12,'check_http',NULL,1),(35,1,12,'check_icinga',NULL,1),(36,1,12,'check_icingacli-businessprocess',NULL,1),(37,1,12,'check_icmp',NULL,1),(38,1,12,'check_iftraffic',NULL,1),(39,1,12,'check_iftraffic64',NULL,1),(40,1,12,'check_imap',NULL,1),(41,1,12,'check_interfaces',NULL,1),(42,1,12,'check_interfacetable',NULL,1),(43,1,12,'check_iostat',NULL,1),(44,1,12,'check_iostats',NULL,1),(45,1,12,'check_ipmi-alive',NULL,1),(46,1,12,'check_ipmi-sensor',NULL,1),(47,1,12,'check_jmx4perl',NULL,1),(48,1,12,'check_kdc',NULL,1),(49,1,12,'check_ldap',NULL,1),(50,1,12,'check_load',NULL,1),(51,1,12,'check_load-windows',NULL,1),(52,1,12,'check_logstash',NULL,1),(53,1,12,'check_lsi-raid',NULL,1),(54,1,12,'check_mailq',NULL,1),(55,1,12,'check_mem',NULL,1),(56,1,12,'check_memory-windows',NULL,1),(57,1,12,'check_mongodb',NULL,1),(58,1,12,'check_mssql_health',NULL,1),(59,1,12,'check_mysql',NULL,1),(60,1,12,'check_mysql_health',NULL,1),(61,1,12,'check_mysql_query',NULL,1),(62,1,12,'check_negate',NULL,1),(63,1,12,'check_network-windows',NULL,1),(64,1,12,'check_nginx_status',NULL,1),(65,1,12,'check_nrpe',NULL,1),(66,1,12,'check_nscp',NULL,1),(67,1,12,'check_nscp-local',NULL,1),(68,1,12,'check_nscp-local-counter',NULL,1),(69,1,12,'check_nscp-local-cpu',NULL,1),(70,1,12,'check_nscp-local-disk',NULL,1),(71,1,12,'check_nscp-local-memory',NULL,1),(72,1,12,'check_nscp-local-os-version',NULL,1),(73,1,12,'check_nscp-local-pagefile',NULL,1),(74,1,12,'check_nscp-local-process',NULL,1),(75,1,12,'check_nscp-local-service',NULL,1),(76,1,12,'check_nscp-local-uptime',NULL,1),(77,1,12,'check_nscp-local-version',NULL,1),(78,1,12,'check_nscp_api',NULL,1),(79,1,12,'check_ntp_peer',NULL,1),(80,1,12,'check_ntp_time',NULL,1),(81,1,12,'check_nwc_health',NULL,1),(82,1,12,'check_oracle_health',NULL,1),(83,1,12,'check_passive',NULL,1),(84,1,12,'check_perfmon-windows',NULL,1),(85,1,12,'check_pgsql',NULL,1),(86,1,12,'check_ping',NULL,1),(87,1,12,'check_ping-windows',NULL,1),(88,1,12,'check_ping4',NULL,1),(89,1,12,'check_ping4-windows',NULL,1),(90,1,12,'check_ping6',NULL,1),(91,1,12,'check_ping6-windows',NULL,1),(92,1,12,'check_pop',NULL,1),(93,1,12,'check_postgres',NULL,1),(94,1,12,'check_procs',NULL,1),(95,1,12,'check_procs-windows',NULL,1),(96,1,12,'check_radius',NULL,1),(97,1,12,'check_random',NULL,1),(98,1,12,'check_rbl',NULL,1),(99,1,12,'check_redis',NULL,1),(100,1,12,'check_running_kernel',NULL,1),(101,1,12,'check_service-windows',NULL,1),(102,1,12,'check_simap',NULL,1),(103,1,12,'check_smart',NULL,1),(104,1,12,'check_smart-attributes',NULL,1),(105,1,12,'check_smtp',NULL,1),(106,1,12,'check_snmp',NULL,1),(107,1,12,'check_snmp-env',NULL,1),(108,1,12,'check_snmp-interface',NULL,1),(109,1,12,'check_snmp-load',NULL,1),(110,1,12,'check_snmp-memory',NULL,1),(111,1,12,'check_snmp-process',NULL,1),(112,1,12,'check_snmp-service',NULL,1),(113,1,12,'check_snmp-storage',NULL,1),(114,1,12,'check_snmp-uptime',NULL,1),(115,1,12,'check_snmpv3',NULL,1),(116,1,12,'check_spop',NULL,1),(117,1,12,'check_squid',NULL,1),(118,1,12,'check_ssh',NULL,1),(119,1,12,'check_ssl',NULL,1),(120,1,12,'check_ssl_cert',NULL,1),(121,1,12,'check_ssmtp',NULL,1),(122,1,12,'check_swap',NULL,1),(123,1,12,'check_swap-windows',NULL,1),(124,1,12,'check_tcp',NULL,1),(125,1,12,'check_udp',NULL,1),(126,1,12,'check_update-windows',NULL,1),(127,1,12,'check_ups',NULL,1),(128,1,12,'check_uptime-windows',NULL,1),(129,1,12,'check_users',NULL,1),(130,1,12,'check_users-windows',NULL,1),(131,1,12,'check_vmware-esx-dc-runtime-info',NULL,1),(132,1,12,'check_vmware-esx-dc-runtime-issues',NULL,1),(133,1,12,'check_vmware-esx-dc-runtime-listcluster',NULL,1),(134,1,12,'check_vmware-esx-dc-runtime-listhost',NULL,1),(135,1,12,'check_vmware-esx-dc-runtime-listvms',NULL,1),(136,1,12,'check_vmware-esx-dc-runtime-status',NULL,1),(137,1,12,'check_vmware-esx-dc-runtime-tools',NULL,1),(138,1,12,'check_vmware-esx-dc-volumes',NULL,1),(139,1,12,'check_vmware-esx-soap-host-check',NULL,1),(140,1,12,'check_vmware-esx-soap-host-cpu',NULL,1),(141,1,12,'check_vmware-esx-soap-host-cpu-ready',NULL,1),(142,1,12,'check_vmware-esx-soap-host-cpu-usage',NULL,1),(143,1,12,'check_vmware-esx-soap-host-cpu-wait',NULL,1),(144,1,12,'check_vmware-esx-soap-host-io',NULL,1),(145,1,12,'check_vmware-esx-soap-host-io-aborted',NULL,1),(146,1,12,'check_vmware-esx-soap-host-io-device-latency',NULL,1),(147,1,12,'check_vmware-esx-soap-host-io-kernel-latency',NULL,1),(148,1,12,'check_vmware-esx-soap-host-io-queue-latency',NULL,1),(149,1,12,'check_vmware-esx-soap-host-io-read',NULL,1),(150,1,12,'check_vmware-esx-soap-host-io-read-latency',NULL,1),(151,1,12,'check_vmware-esx-soap-host-io-resets',NULL,1),(152,1,12,'check_vmware-esx-soap-host-io-total-latency',NULL,1),(153,1,12,'check_vmware-esx-soap-host-io-usage',NULL,1),(154,1,12,'check_vmware-esx-soap-host-io-write',NULL,1),(155,1,12,'check_vmware-esx-soap-host-io-write-latency',NULL,1),(156,1,12,'check_vmware-esx-soap-host-media',NULL,1),(157,1,12,'check_vmware-esx-soap-host-mem',NULL,1),(158,1,12,'check_vmware-esx-soap-host-mem-consumed',NULL,1),(159,1,12,'check_vmware-esx-soap-host-mem-memctl',NULL,1),(160,1,12,'check_vmware-esx-soap-host-mem-overhead',NULL,1),(161,1,12,'check_vmware-esx-soap-host-mem-swapused',NULL,1),(162,1,12,'check_vmware-esx-soap-host-mem-usage',NULL,1),(163,1,12,'check_vmware-esx-soap-host-net',NULL,1),(164,1,12,'check_vmware-esx-soap-host-net-nic',NULL,1),(165,1,12,'check_vmware-esx-soap-host-net-receive',NULL,1),(166,1,12,'check_vmware-esx-soap-host-net-send',NULL,1),(167,1,12,'check_vmware-esx-soap-host-net-usage',NULL,1),(168,1,12,'check_vmware-esx-soap-host-runtime',NULL,1),(169,1,12,'check_vmware-esx-soap-host-runtime-con',NULL,1),(170,1,12,'check_vmware-esx-soap-host-runtime-health',NULL,1),(171,1,12,'check_vmware-esx-soap-host-runtime-health-listsensors',NULL,1),(172,1,12,'check_vmware-esx-soap-host-runtime-health-nostoragestatus',NULL,1),(173,1,12,'check_vmware-esx-soap-host-runtime-issues',NULL,1),(174,1,12,'check_vmware-esx-soap-host-runtime-listvms',NULL,1),(175,1,12,'check_vmware-esx-soap-host-runtime-status',NULL,1),(176,1,12,'check_vmware-esx-soap-host-runtime-storagehealth',NULL,1),(177,1,12,'check_vmware-esx-soap-host-runtime-temp',NULL,1),(178,1,12,'check_vmware-esx-soap-host-service',NULL,1),(179,1,12,'check_vmware-esx-soap-host-storage',NULL,1),(180,1,12,'check_vmware-esx-soap-host-storage-adapter',NULL,1),(181,1,12,'check_vmware-esx-soap-host-storage-lun',NULL,1),(182,1,12,'check_vmware-esx-soap-host-storage-path',NULL,1),(183,1,12,'check_vmware-esx-soap-host-uptime',NULL,1),(184,1,12,'check_vmware-esx-soap-host-volumes',NULL,1),(185,1,12,'check_vmware-esx-soap-vm-cpu',NULL,1),(186,1,12,'check_vmware-esx-soap-vm-cpu-ready',NULL,1),(187,1,12,'check_vmware-esx-soap-vm-cpu-usage',NULL,1),(188,1,12,'check_vmware-esx-soap-vm-cpu-wait',NULL,1),(189,1,12,'check_vmware-esx-soap-vm-io',NULL,1),(190,1,12,'check_vmware-esx-soap-vm-io-read',NULL,1),(191,1,12,'check_vmware-esx-soap-vm-io-usage',NULL,1),(192,1,12,'check_vmware-esx-soap-vm-io-write',NULL,1),(193,1,12,'check_vmware-esx-soap-vm-mem',NULL,1),(194,1,12,'check_vmware-esx-soap-vm-mem-consumed',NULL,1),(195,1,12,'check_vmware-esx-soap-vm-mem-memctl',NULL,1),(196,1,12,'check_vmware-esx-soap-vm-mem-usage',NULL,1),(197,1,12,'check_vmware-esx-soap-vm-net',NULL,1),(198,1,12,'check_vmware-esx-soap-vm-net-receive',NULL,1),(199,1,12,'check_vmware-esx-soap-vm-net-send',NULL,1),(200,1,12,'check_vmware-esx-soap-vm-net-usage',NULL,1),(201,1,12,'check_vmware-esx-soap-vm-runtime',NULL,1),(202,1,12,'check_vmware-esx-soap-vm-runtime-con',NULL,1),(203,1,12,'check_vmware-esx-soap-vm-runtime-consoleconnections',NULL,1),(204,1,12,'check_vmware-esx-soap-vm-runtime-gueststate',NULL,1),(205,1,12,'check_vmware-esx-soap-vm-runtime-issues',NULL,1),(206,1,12,'check_vmware-esx-soap-vm-runtime-powerstate',NULL,1),(207,1,12,'check_vmware-esx-soap-vm-runtime-status',NULL,1),(208,1,12,'check_vmware-esx-soap-vm-runtime-tools',NULL,1),(209,1,12,'check_webinject',NULL,1),(210,1,12,'check_yum',NULL,1),(211,1,13,'ub16.04-template',NULL,1),(212,1,14,'ub16.04-template',NULL,1),(213,1,1,'ub16.04-template',NULL,1),(214,1,3,'linux-servers',NULL,1),(215,1,3,'windows-servers',NULL,1),(216,1,12,'notification_mail-host-notification',NULL,1),(217,1,12,'notification_mail-service-notification',NULL,1),(218,1,2,'ub16.04-template','apt',1),(219,1,2,'ub16.04-template','ping4',1),(220,1,2,'ub16.04-template','ping6',1),(221,1,2,'ub16.04-template','ssh',1),(222,1,2,'ub16.04-template','http',1),(223,1,2,'ub16.04-template','disk',1),(224,1,2,'ub16.04-template','disk /',1),(225,1,2,'ub16.04-template','icinga',1),(226,1,2,'ub16.04-template','load',1),(227,1,2,'ub16.04-template','procs',1),(228,1,2,'ub16.04-template','swap',1),(229,1,2,'ub16.04-template','users',1),(230,1,4,'disk',NULL,1),(231,1,4,'http',NULL,1),(232,1,4,'ping',NULL,1),(233,1,9,'24x7',NULL,1),(234,1,9,'9to5',NULL,1),(235,1,9,'never',NULL,1),(236,1,10,'icingaadmin',NULL,1),(237,1,11,'icingaadmins',NULL,1),(238,1,14,'director-global',NULL,1),(239,1,14,'global-templates',NULL,1);
/*!40000 ALTER TABLE `icinga_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_processevents`
--

DROP TABLE IF EXISTS `icinga_processevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_processevents` (
  `processevent_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `event_time` timestamp NULL DEFAULT NULL,
  `event_time_usec` int(11) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `program_name` varchar(16) DEFAULT '',
  `program_version` varchar(20) DEFAULT '',
  `program_date` varchar(10) DEFAULT '',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`processevent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical Icinga process events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_processevents`
--

LOCK TABLES `icinga_processevents` WRITE;
/*!40000 ALTER TABLE `icinga_processevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_processevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_programstatus`
--

DROP TABLE IF EXISTS `icinga_programstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_programstatus` (
  `programstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `program_version` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `status_update_time` timestamp NULL DEFAULT NULL,
  `program_start_time` timestamp NULL DEFAULT NULL,
  `program_end_time` timestamp NULL DEFAULT NULL,
  `endpoint_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_currently_running` smallint(6) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `daemon_mode` smallint(6) DEFAULT '0',
  `last_command_check` timestamp NULL DEFAULT NULL,
  `last_log_rotation` timestamp NULL DEFAULT NULL,
  `notifications_enabled` smallint(6) DEFAULT '0',
  `disable_notif_expire_time` timestamp NULL DEFAULT NULL,
  `active_service_checks_enabled` smallint(6) DEFAULT '0',
  `passive_service_checks_enabled` smallint(6) DEFAULT '0',
  `active_host_checks_enabled` smallint(6) DEFAULT '0',
  `passive_host_checks_enabled` smallint(6) DEFAULT '0',
  `event_handlers_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_hosts` smallint(6) DEFAULT '0',
  `obsess_over_services` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `global_host_event_handler` text,
  `global_service_event_handler` text,
  `config_dump_in_progress` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`programstatus_id`),
  UNIQUE KEY `instance_id` (`instance_id`),
  KEY `programstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Current program status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_programstatus`
--

LOCK TABLES `icinga_programstatus` WRITE;
/*!40000 ALTER TABLE `icinga_programstatus` DISABLE KEYS */;
INSERT INTO `icinga_programstatus` VALUES (1,1,'r2.8.2-1','2018-04-24 07:17:23','2018-04-24 06:46:02','2018-04-23 14:25:54','ub16.04-template',1,1326,1,'2018-04-24 07:17:23',NULL,1,NULL,1,1,1,1,1,1,0,1,0,0,0,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `icinga_programstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_runtimevariables`
--

DROP TABLE IF EXISTS `icinga_runtimevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_runtimevariables` (
  `runtimevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`runtimevariable_id`),
  KEY `runtimevariables_i_id_idx` (`instance_id`),
  KEY `runtimevars_iid_varn` (`instance_id`,`varname`)
) ENGINE=InnoDB AUTO_INCREMENT=1517 DEFAULT CHARSET=latin1 COMMENT='Runtime variables from the Icinga daemon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_runtimevariables`
--

LOCK TABLES `icinga_runtimevariables` WRITE;
/*!40000 ALTER TABLE `icinga_runtimevariables` DISABLE KEYS */;
INSERT INTO `icinga_runtimevariables` VALUES (1513,1,'total_services','12',NULL),(1514,1,'total_scheduled_services','12',NULL),(1515,1,'total_hosts','1',NULL),(1516,1,'total_scheduled_hosts','1',NULL);
/*!40000 ALTER TABLE `icinga_runtimevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_scheduleddowntime`
--

DROP TABLE IF EXISTS `icinga_scheduleddowntime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_scheduleddowntime` (
  `scheduleddowntime_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT NULL,
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NULL DEFAULT NULL,
  `scheduled_end_time` timestamp NULL DEFAULT NULL,
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NULL DEFAULT NULL,
  `actual_start_time_usec` int(11) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NULL DEFAULT NULL,
  `name` text,
  `session_token` int(11) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`scheduleddowntime_id`),
  KEY `scheduleddowntime_i_id_idx` (`instance_id`),
  KEY `idx_scheduleddowntime_object_id` (`object_id`),
  KEY `idx_downtimes_session_del` (`instance_id`,`session_token`),
  KEY `idx_scheduleddowntime_remove` (`object_id`,`entry_time`,`scheduled_start_time`,`scheduled_end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Current scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_scheduleddowntime`
--

LOCK TABLES `icinga_scheduleddowntime` WRITE;
/*!40000 ALTER TABLE `icinga_scheduleddowntime` DISABLE KEYS */;
INSERT INTO `icinga_scheduleddowntime` VALUES (3,1,1,226,'2018-04-24 06:46:03','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2018-04-25 00:00:00','2018-04-25 01:00:00',0,'2018-04-25 00:00:00',0,0,NULL,'ub16.04-template!load!ub16-1524552363-0',1524552362,211);
/*!40000 ALTER TABLE `icinga_scheduleddowntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contactgroups`
--

DROP TABLE IF EXISTS `icinga_service_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contactgroups` (
  `service_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contactgroup_id`),
  KEY `service_contactgroups_i_id_idx` (`instance_id`),
  KEY `scgrps_sid_cgoid` (`service_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Service contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contactgroups`
--

LOCK TABLES `icinga_service_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_service_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_service_contactgroups` VALUES (1,1,1,237),(2,1,2,237),(3,1,3,237),(4,1,4,237),(5,1,5,237),(6,1,6,237),(7,1,7,237),(8,1,8,237),(9,1,9,237),(10,1,10,237),(11,1,11,237),(12,1,12,237);
/*!40000 ALTER TABLE `icinga_service_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contacts`
--

DROP TABLE IF EXISTS `icinga_service_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contacts` (
  `service_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contact_id`),
  KEY `service_contacts_i_id_idx` (`instance_id`),
  KEY `idx_service_contacts_service_id` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Service contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contacts`
--

LOCK TABLES `icinga_service_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_service_contacts` DISABLE KEYS */;
INSERT INTO `icinga_service_contacts` VALUES (1,1,1,236),(2,1,2,236),(3,1,3,236),(4,1,4,236),(5,1,5,236),(6,1,6,236),(7,1,7,236),(8,1,8,236),(9,1,9,236),(10,1,10,236),(11,1,11,236),(12,1,12,236);
/*!40000 ALTER TABLE `icinga_service_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicechecks`
--

DROP TABLE IF EXISTS `icinga_servicechecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicechecks` (
  `servicecheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicecheck_id`),
  KEY `servicechecks_i_id_idx` (`instance_id`),
  KEY `servicechecks_time_id_idx` (`start_time`),
  KEY `servicechks_s_obj_id_idx` (`service_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical service checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicechecks`
--

LOCK TABLES `icinga_servicechecks` WRITE;
/*!40000 ALTER TABLE `icinga_servicechecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicechecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicedependencies`
--

DROP TABLE IF EXISTS `icinga_servicedependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicedependencies` (
  `servicedependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_ok` smallint(6) DEFAULT '0',
  `fail_on_warning` smallint(6) DEFAULT '0',
  `fail_on_unknown` smallint(6) DEFAULT '0',
  `fail_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`servicedependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`dependent_service_object_id`,`dependency_type`,`inherits_parent`,`fail_on_ok`,`fail_on_warning`,`fail_on_unknown`,`fail_on_critical`),
  KEY `idx_servicedependencies_dependent_service_object_id` (`dependent_service_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicedependencies`
--

LOCK TABLES `icinga_servicedependencies` WRITE;
/*!40000 ALTER TABLE `icinga_servicedependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicedependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contactgroups` (
  `serviceescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`serviceescalation_id`,`contactgroup_object_id`),
  KEY `serviceesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contactgroups`
--

LOCK TABLES `icinga_serviceescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contacts` (
  `serviceescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`serviceescalation_id`,`contact_object_id`),
  KEY `serviceesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contacts`
--

LOCK TABLES `icinga_serviceescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalations`
--

DROP TABLE IF EXISTS `icinga_serviceescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalations` (
  `serviceescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_warning` smallint(6) DEFAULT '0',
  `escalate_on_unknown` smallint(6) DEFAULT '0',
  `escalate_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`serviceescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `serviceesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalations`
--

LOCK TABLES `icinga_serviceescalations` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup_members`
--

DROP TABLE IF EXISTS `icinga_servicegroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup_members` (
  `servicegroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `servicegroup_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`servicegroup_member_id`),
  KEY `servicegroup_members_i_id_idx` (`instance_id`),
  KEY `sgmbrs_sgid_soid` (`servicegroup_id`,`service_object_id`),
  KEY `idx_servicegroup_members_object_id` (`service_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Servicegroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_members`
--

LOCK TABLES `icinga_servicegroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_members` DISABLE KEYS */;
INSERT INTO `icinga_servicegroup_members` VALUES (1,1,3,219),(2,1,3,220),(3,1,2,222),(4,1,1,223),(5,1,1,224);
/*!40000 ALTER TABLE `icinga_servicegroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroups`
--

DROP TABLE IF EXISTS `icinga_servicegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroups` (
  `servicegroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `servicegroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`servicegroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`servicegroup_object_id`),
  KEY `servicegroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Servicegroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroups`
--

LOCK TABLES `icinga_servicegroups` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroups` DISABLE KEYS */;
INSERT INTO `icinga_servicegroups` VALUES (1,1,1,230,'Disk Checks','','','','f7277d4b19d6dee0d5e6cff189ed6eb062692679719db63f6c71a5b92da71b3d'),(2,1,1,231,'HTTP Checks','','','','f2287f9134febf846a09e662aa80ffa071d2c32034f6ff3f65dac9101267d1ee'),(3,1,1,232,'Ping Checks','','','','ee4fcd04665cc1e6cfbc45c2d899d07d1fb2e063c93e4dbcf5379d8a2234adc5');
/*!40000 ALTER TABLE `icinga_servicegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_services`
--

DROP TABLE IF EXISTS `icinga_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_services` (
  `service_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(64) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_warning` smallint(6) DEFAULT '0',
  `notify_on_unknown` smallint(6) DEFAULT '0',
  `notify_on_critical` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_ok` smallint(6) DEFAULT '0',
  `stalk_on_warning` smallint(6) DEFAULT '0',
  `stalk_on_unknown` smallint(6) DEFAULT '0',
  `stalk_on_critical` smallint(6) DEFAULT '0',
  `is_volatile` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_ok` smallint(6) DEFAULT '0',
  `flap_detection_on_warning` smallint(6) DEFAULT '0',
  `flap_detection_on_unknown` smallint(6) DEFAULT '0',
  `flap_detection_on_critical` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`),
  KEY `service_object_id` (`service_object_id`),
  KEY `services_i_id_idx` (`instance_id`),
  KEY `services_host_object_id_idx` (`host_object_id`),
  KEY `services_combined_object_idx` (`service_object_id`,`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Service definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_services`
--

LOCK TABLES `icinga_services` WRITE;
/*!40000 ALTER TABLE `icinga_services` DISABLE KEYS */;
INSERT INTO `icinga_services` VALUES (1,1,1,213,218,'apt',4,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','fc8a3ee8bd328c41dd108de17dcb1056b020a3e11595ee8f41fe5cfc96424458'),(2,1,1,213,219,'ping4',88,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','dc4720a046e4fcf95c216579d4b0a02a483dfba4541fbb2863d99cae74d12838'),(3,1,1,213,220,'ping6',90,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','c8b64fbd5985dcb96b053d2bed909a4599441011bd32ec425a0c776f82bc5df6'),(4,1,1,213,221,'ssh',118,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','5f29b6d49a8b8d11847ddca29edf1000c61d5ad13f4ffb25445c6d6a3a466944'),(5,1,1,213,222,'http',34,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','404918e58e16949f4eec536783defa5a554721514a7f81e1cf094b6b92da1290'),(6,1,1,213,223,'disk',13,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','b234e1640854635e07c8170e99659f5d9403dce5b9c381609eb71a9a10ada39e'),(7,1,1,213,224,'disk /',13,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','b973c91a30ca130fab46785597b0df8d4383234c0e8d3bb535b88d0bc5f670be'),(8,1,1,213,225,'icinga',35,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','282a30ef760430616e960e85ddb865c5de2b7f936f5880f7531974bf611f76ce'),(9,1,1,213,226,'load',50,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','e33381b2d294f01f49c07e712e61bed2c6b33af1232011e73e670e460173a1fe'),(10,1,1,213,227,'procs',94,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','1d92f72a27c549615837e5fcf9513d9c7cf6b1565c17c4b4cc58058c655b54d5'),(11,1,1,213,228,'swap',122,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','00355670b8413bf5151153a8e440756276048d1ce05555d37275da9bbbae11a1'),(12,1,1,213,229,'users',129,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,25,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','','13dc0ce03ed9db65a6473f2c1b65b4a6172683e8717334833ba6ef931e0ec2de');
/*!40000 ALTER TABLE `icinga_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicestatus`
--

DROP TABLE IF EXISTS `icinga_servicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicestatus` (
  `servicestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` varchar(255) DEFAULT '',
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NULL DEFAULT NULL,
  `next_check` timestamp NULL DEFAULT NULL,
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NULL DEFAULT NULL,
  `last_hard_state_change` timestamp NULL DEFAULT NULL,
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_ok` timestamp NULL DEFAULT NULL,
  `last_time_warning` timestamp NULL DEFAULT NULL,
  `last_time_unknown` timestamp NULL DEFAULT NULL,
  `last_time_critical` timestamp NULL DEFAULT NULL,
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NULL DEFAULT NULL,
  `next_notification` timestamp NULL DEFAULT NULL,
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` int(10) unsigned DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicestatus_id`),
  UNIQUE KEY `object_id` (`service_object_id`),
  KEY `servicestatus_i_id_idx` (`instance_id`),
  KEY `srvcstatus_stat_upd_time_idx` (`status_update_time`),
  KEY `srvcstatus_current_state_idx` (`current_state`),
  KEY `srvcstatus_check_type_idx` (`check_type`),
  KEY `srvcstatus_state_type_idx` (`state_type`),
  KEY `srvcstatus_last_state_chg_idx` (`last_state_change`),
  KEY `srvcstatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `srvcstatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `srvcstatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `srvcstatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `srvcstatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `srvcstatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `srvcstatus_is_flapping_idx` (`is_flapping`),
  KEY `srvcstatus_p_state_chg_idx` (`percent_state_change`),
  KEY `srvcstatus_latency_idx` (`latency`),
  KEY `srvcstatus_ex_time_idx` (`execution_time`),
  KEY `srvcstatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Current service status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicestatus`
--

LOCK TABLES `icinga_servicestatus` WRITE;
/*!40000 ALTER TABLE `icinga_servicestatus` DISABLE KEYS */;
INSERT INTO `icinga_servicestatus` VALUES (1,1,218,'2018-04-24 07:16:32','APT CRITICAL: 75 packages available for upgrade (20 critical updates). ','','available_upgrades=75;;;0 critical_updates=20;;;0','ub16.04-template',2,1,1,1,5,'2018-04-24 07:16:32','2018-04-24 07:17:31',0,'2018-04-23 13:41:10','2018-04-23 13:42:42',2,NULL,NULL,NULL,'2018-04-24 07:16:32',1,'2018-04-24 07:17:13','2018-04-24 07:47:13',0,1,0,0,4,1,1,1,0,0,0,0.001532,2.921462,0,0,1,0,0,'null','','apt',1,0.5,0,1,211),(2,1,219,'2018-04-24 07:16:44','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.043000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ub16.04-template',0,1,1,1,5,'2018-04-24 07:16:44','2018-04-24 07:17:41',0,'2018-04-23 13:41:12','2018-04-23 13:41:12',0,'2018-04-24 07:16:44',NULL,NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.001361,4.00882,0,0,1,0,0,'null','','ping4',1,0.5,0,1,211),(3,1,220,'2018-04-24 07:16:28','PING OK - Packet loss = 0%, RTA = 0.04 ms','','rta=0.042000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','ub16.04-template',0,1,1,1,5,'2018-04-24 07:16:28','2018-04-24 07:17:27',0,'2018-04-23 13:41:11','2018-04-23 13:41:11',0,'2018-04-24 07:16:28',NULL,NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000778,4.00362,0,0,1,0,0,'null','','ping6',1,0.5,0,1,211),(4,1,221,'2018-04-24 07:17:06','SSH OK - OpenSSH_7.2p2 Ubuntu-4ubuntu2.4 (protocol 2.0) ','','time=0.005381s;;;0.000000;10.000000','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:06','2018-04-24 07:18:06',0,'2018-04-23 13:41:08','2018-04-23 13:41:08',0,'2018-04-24 07:17:06',NULL,NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000473,0.007063,0,0,1,0,0,'null','','ssh',1,0.5,0,1,211),(5,1,222,'2018-04-24 07:17:16','HTTP OK: HTTP/1.1 200 OK - 11595 bytes in 0.000 second response time ','','time=0.000451s;;;0.000000 size=11595B;;;0','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:16','2018-04-24 07:18:16',0,'2018-04-23 13:41:06','2018-04-23 13:41:06',0,'2018-04-24 07:17:16',NULL,NULL,NULL,1,NULL,'2018-04-24 07:47:13',0,1,0,0,0,1,1,1,0,0,0,0.001527,0.003086,0,0,1,0,0,'null','','http',1,0.5,0,1,211),(6,1,223,'2018-04-24 07:17:25','DISK OK - free space: / 5790 MB (70% inode=80%): /boot 341 MB (76% inode=99%):','','/=2437MB;6952;7821;0;8691 /boot=105MB;376;423;0;471','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:25','2018-04-24 07:18:25',0,'2018-04-23 13:41:08','2018-04-23 13:41:08',0,'2018-04-24 07:17:25',NULL,NULL,NULL,1,NULL,'2018-04-24 07:47:13',0,1,0,0,0,1,1,1,0,0,0,0.001888,0.002305,0,0,1,0,0,'null','','disk',1,0.5,0,1,211),(7,1,224,'2018-04-24 07:17:16','DISK OK - free space: / 5790 MB (70% inode=80%):','','/=2437MB;6952;7821;0;8691','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:16','2018-04-24 07:18:16',0,'2018-04-23 13:41:09','2018-04-23 13:41:09',0,'2018-04-24 07:17:16',NULL,NULL,NULL,1,NULL,'2018-04-24 07:47:13',0,1,0,0,0,1,1,1,0,0,0,0.000797,0.00184,0,0,1,0,0,'null','','disk',1,0.5,0,1,211),(8,1,225,'2018-04-24 07:17:12','Icinga 2 has been running for 31 minutes and 9 seconds. Version: r2.8.2-1','','api_num_conn_endpoints=0 api_num_endpoints=0 api_num_http_clients=0 api_num_json_rpc_clients=0 api_num_json_rpc_relay_queue_item_rate=0.650000 api_num_json_rpc_relay_queue_items=1 api_num_json_rpc_sync_queue_item_rate=0 api_num_json_rpc_sync_queue_items=0 api_num_json_rpc_work_queue_count=0 api_num_json_rpc_work_queue_item_rate=0 api_num_json_rpc_work_queue_items=0 api_num_not_conn_endpoints=0 checkercomponent_checker_idle=12 checkercomponent_checker_pending=1 idomysqlconnection_ido-mysql_queries_rate=3.016667 idomysqlconnection_ido-mysql_queries_1min=181 idomysqlconnection_ido-mysql_queries_5mins=905 idomysqlconnection_ido-mysql_queries_15mins=2714 idomysqlconnection_ido-mysql_query_queue_items=0 idomysqlconnection_ido-mysql_query_queue_item_rate=3.133333 livestatuslistener_livestatus_connections=0 active_host_checks=0.016667 passive_host_checks=0 active_host_checks_1min=1 passive_host_checks_1min=0 active_host_checks_5min=5 passive_host_checks_5min=0 active_host_checks_15min=15 passive_host_checks_15min=0 active_service_checks=0.200000 passive_service_checks=0 active_service_checks_1min=12 passive_service_checks_1min=0 active_service_checks_5min=60 passive_service_checks_5min=0 active_service_checks_15min=179 passive_service_checks_15min=0 min_latency=0.000044 max_latency=0.004655 avg_latency=0.001083 min_execution_time=0.000350 max_execution_time=4.008820 avg_execution_time=0.914314 num_services_ok=11 num_services_warning=0 num_services_critical=1 num_services_unknown=0 num_services_pending=0 num_services_unreachable=0 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=1869.517215 num_hosts_up=1 num_hosts_down=0 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:12','2018-04-24 07:18:12',0,'2018-04-23 13:41:09','2018-04-23 13:41:09',0,'2018-04-24 07:17:12',NULL,NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000447,0.000342,0,0,1,0,0,'null','','icinga',1,0.5,0,1,211),(9,1,226,'2018-04-24 07:16:44','OK - load average: 0.01, 0.11, 0.08','','load1=0.010;5.000;10.000;0; load5=0.110;4.000;6.000;0; load15=0.080;3.000;4.000;0;','ub16.04-template',0,1,1,1,5,'2018-04-24 07:16:44','2018-04-24 07:17:43',0,'2018-04-23 13:41:07','2018-04-23 13:41:07',0,'2018-04-24 07:16:44',NULL,NULL,NULL,1,'2018-04-24 06:47:02','2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000329,0.002922,0,0,1,0,0,'null','','load',1,0.5,0,1,211),(10,1,227,'2018-04-24 07:17:27','PROCS OK: 116 processes ','','procs=116;250;400;0;','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:27','2018-04-24 07:18:27',0,'2018-04-23 13:41:09','2018-04-23 13:41:09',0,'2018-04-24 07:17:27',NULL,NULL,NULL,1,NULL,'2018-04-24 07:47:13',0,1,0,0,0,1,1,1,0,0,0,0.000611,0.011787,0,0,1,0,0,'null','','procs',1,0.5,0,1,211),(11,1,228,'2018-04-24 07:16:38','SWAP OK - 100% free (762 MB out of 763 MB) ','','swap=762MB;381;190;0;763','ub16.04-template',0,1,1,1,5,'2018-04-24 07:16:38','2018-04-24 07:17:38',0,'2018-04-23 13:41:07','2018-04-23 13:41:07',0,'2018-04-24 07:16:38',NULL,NULL,NULL,1,NULL,'2018-04-24 07:17:08',0,1,0,0,0,1,1,1,0,0,0,0.000878,0.005097,0,0,1,0,0,'null','','swap',1,0.5,0,1,211),(12,1,229,'2018-04-24 07:17:26','USERS OK - 1 users currently logged in ','','users=1;20;50;0','ub16.04-template',0,1,1,1,5,'2018-04-24 07:17:26','2018-04-24 07:18:26',0,'2018-04-23 13:41:07','2018-04-23 13:41:07',0,'2018-04-24 07:17:26',NULL,NULL,NULL,1,NULL,'2018-04-24 07:47:13',0,1,0,0,0,1,1,1,0,0,0,0.000266,0.001671,0,0,1,0,0,'null','','users',1,0.5,0,1,211);
/*!40000 ALTER TABLE `icinga_servicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_statehistory`
--

DROP TABLE IF EXISTS `icinga_statehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_statehistory` (
  `statehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `state_time` timestamp NULL DEFAULT NULL,
  `state_time_usec` int(11) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state_change` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_state` smallint(6) DEFAULT '0',
  `last_hard_state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `check_source` varchar(255) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`statehistory_id`),
  KEY `statehist_i_id_o_id_s_ty_s_ti` (`instance_id`,`object_id`,`state_type`,`state_time`),
  KEY `statehist_state_idx` (`object_id`,`state`),
  KEY `sla_idx_sthist` (`object_id`,`state_time`),
  KEY `idx_statehistory_cleanup` (`instance_id`,`state_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service state changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_statehistory`
--

LOCK TABLES `icinga_statehistory` WRITE;
/*!40000 ALTER TABLE `icinga_statehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_statehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_systemcommands`
--

DROP TABLE IF EXISTS `icinga_systemcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_systemcommands` (
  `systemcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NULL DEFAULT NULL,
  `end_time_usec` int(11) DEFAULT '0',
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`systemcommand_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`start_time`,`start_time_usec`),
  KEY `systemcommands_i_id_idx` (`instance_id`),
  KEY `systemcommands_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical system commands that are executed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_systemcommands`
--

LOCK TABLES `icinga_systemcommands` WRITE;
/*!40000 ALTER TABLE `icinga_systemcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_systemcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod_timeranges`
--

DROP TABLE IF EXISTS `icinga_timeperiod_timeranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod_timeranges` (
  `timeperiod_timerange_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_id` bigint(20) unsigned DEFAULT '0',
  `day` smallint(6) DEFAULT '0',
  `start_sec` int(11) DEFAULT '0',
  `end_sec` int(11) DEFAULT '0',
  PRIMARY KEY (`timeperiod_timerange_id`),
  KEY `timeperiod_timeranges_i_id_idx` (`instance_id`),
  KEY `tperiod_tid_d_ss_es` (`timeperiod_id`,`day`,`start_sec`,`end_sec`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_timeranges`
--

LOCK TABLES `icinga_timeperiod_timeranges` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` DISABLE KEYS */;
INSERT INTO `icinga_timeperiod_timeranges` VALUES (1,1,1,5,79200,79200),(2,1,1,1,79200,79200),(3,1,1,6,79200,79200),(4,1,1,0,79200,79200),(5,1,1,4,79200,79200),(6,1,1,2,79200,79200),(7,1,1,3,79200,79200),(8,1,2,5,25200,54000),(9,1,2,1,25200,54000),(10,1,2,4,25200,54000),(11,1,2,2,25200,54000),(12,1,2,3,25200,54000);
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiods`
--

DROP TABLE IF EXISTS `icinga_timeperiods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiods` (
  `timeperiod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` varchar(255) DEFAULT '',
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`timeperiod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`timeperiod_object_id`),
  KEY `timeperiods_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiods`
--

LOCK TABLES `icinga_timeperiods` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiods` DISABLE KEYS */;
INSERT INTO `icinga_timeperiods` VALUES (1,1,1,233,'Icinga 2 24x7 TimePeriod','da66f54c773d8595e03e8042d84d9e22ba96ac1c58e049662b41cde621b7ebeb'),(2,1,1,234,'Icinga 2 9to5 TimePeriod','28bfd30c8ae4f64c62cd37f33b66720efb16631883a2f3ba438722901c5e1c1b'),(3,1,1,235,'Icinga 2 never TimePeriod','f04486922f2be4cbe3d7226edd975c7993be58a22a7feeada26e146bbf6cea2f');
/*!40000 ALTER TABLE `icinga_timeperiods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zones`
--

DROP TABLE IF EXISTS `icinga_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  `is_global` smallint(6) DEFAULT NULL,
  `config_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_object_id` (`zone_object_id`),
  KEY `idx_zones_parent_object_id` (`parent_zone_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Zone configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zones`
--

LOCK TABLES `icinga_zones` WRITE;
/*!40000 ALTER TABLE `icinga_zones` DISABLE KEYS */;
INSERT INTO `icinga_zones` VALUES (1,1,238,1,0,1,'ae3ed5e06748c55b5a17177016a073657f6f73ea8111fc3f332f737a83b3ab7b'),(2,1,239,1,0,1,'ae3ed5e06748c55b5a17177016a073657f6f73ea8111fc3f332f737a83b3ab7b'),(3,1,212,1,0,0,'c0c4fab92b07eeb4975beea9ff8b02dcba524607408a6036e0553443d8fe764f');
/*!40000 ALTER TABLE `icinga_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zonestatus`
--

DROP TABLE IF EXISTS `icinga_zonestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zonestatus` (
  `zonestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NULL DEFAULT NULL,
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`zonestatus_id`),
  KEY `idx_zonestatus_object_id` (`zone_object_id`),
  KEY `idx_zonestatus_parent_object_id` (`parent_zone_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Zone status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zonestatus`
--

LOCK TABLES `icinga_zonestatus` WRITE;
/*!40000 ALTER TABLE `icinga_zonestatus` DISABLE KEYS */;
INSERT INTO `icinga_zonestatus` VALUES (1,1,238,'2018-04-23 13:54:20',0),(2,1,239,'2018-04-23 13:54:20',0),(3,1,212,'2018-04-23 13:54:20',0);
/*!40000 ALTER TABLE `icinga_zonestatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-24  9:17:30
