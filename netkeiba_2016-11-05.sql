# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: localhost (MySQL 5.7.12)
# データベース: netkeiba
# 作成時刻: 2016-11-05 10:24:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ races
# ------------------------------------------------------------

DROP TABLE IF EXISTS `races`;

CREATE TABLE `races` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `horse_name` varchar(1000) DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `kaisai` varchar(1000) DEFAULT NULL,
  `race_name` varchar(1000) DEFAULT NULL,
  `umaban` varchar(1000) DEFAULT NULL,
  `odds` varchar(1000) DEFAULT NULL,
  `ninki` varchar(1000) DEFAULT NULL,
  `chakujun` varchar(1000) DEFAULT NULL,
  `kishu` varchar(1000) DEFAULT NULL,
  `kinryo` varchar(1000) DEFAULT NULL,
  `kyori` varchar(1000) DEFAULT NULL,
  `baba` varchar(1000) DEFAULT NULL,
  `taimu` varchar(1000) DEFAULT NULL,
  `chakusa` varchar(1000) DEFAULT NULL,
  `tsuka` varchar(1000) DEFAULT NULL,
  `agari` varchar(1000) DEFAULT NULL,
  `bataiju` varchar(1000) DEFAULT NULL,
  `kachiuma_or_nichakuba` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
