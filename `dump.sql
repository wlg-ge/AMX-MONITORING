DROP TABLE IF EXISTS `amx_admin`;
CREATE TABLE amx_admin (
`admin_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
`admin_name` VARCHAR(50) NOT NULL DEFAULT '',
`admin_pass` VARCHAR(50) NOT NULL DEFAULT '',
PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `amx_servers`;
CREATE TABLE amx_servers (
`server_id` MEDIUMINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
`server_name` VARCHAR(30) NOT NULL DEFAULT 'unknow',
`server_ip` VARCHAR(25) NOT NULL DEFAULT '0.0.0.0',
`server_map` VARCHAR(255) NOT NULL DEFAULT 'no_image',
`server_players` VARCHAR(2) NOT NULL DEFAULT '0',
`server_maxplayers` VARCHAR(2) NOT NULL DEFAULT '0',
`server_status` TINYINT(1) NOT NULL DEFAULT '0',
`server_location` VARCHAR(50) NOT NULL DEFAULT '',
`server_vip` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
`server_protokol` VARCHAR(5) NOT NULL DEFAULT '',
`server_regdata` TEXT NOT NULL,
`server_email` VARCHAR(255) NOT NULL DEFAULT '',
`server_icq` VARCHAR(30) NOT NULL DEFAULT '',
`server_new` TINYINT(1) UNSIGNED NOT NULL DEFAULT '1',
`server_site` VARCHAR(255) NOT NULL DEFAULT '',
`cron_time` VARCHAR(50) ,
`votes` MEDIUMINT(11) UNSIGNED NOT NULL,
`server_off` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
PRIMARY KEY (`server_id`),
FULLTEXT KEY `server_map` (`server_map`),
FULLTEXT KEY `server_protokol` (`server_protokol`),
FULLTEXT KEY `server_ip` (server_ip),
FULLTEXT KEY `server_players` (`server_players`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `amx_vote_ip`;
CREATE TABLE amx_vote_ip (
`vote_id` MEDIUMINT(11) NOT NULL auto_increment,
`id_resp` MEDIUMINT(11) NOT NULL,
`ip` varchar(15) NOT NULL,
`date_resp` datetime NOT NULL,
PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `amx_pages`;
CREATE TABLE amx_pages (
`pages_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
`pages_subject` varchar(200) DEFAULT NULL,
`pages_extended` text,
`pages_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
`pages_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`pages_id`),
KEY `pages_datestamp` (`pages_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `amx_news`;
CREATE TABLE amx_news (
`news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
`news_subject` varchar(200) DEFAULT NULL,
`news_extended` text,
`news_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
`news_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
PRIMARY KEY (`news_id`),
KEY `news_datestamp` (`news_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `amx_settings`;
CREATE TABLE amx_settings (
`sitename` VARCHAR(200) NOT NULL DEFAULT '',
`siteurl` VARCHAR(200) NOT NULL DEFAULT '',
`siteemail` VARCHAR(100) NOT NULL DEFAULT '',
`siteusername` VARCHAR(30) NOT NULL DEFAULT '',
`description` TEXT NOT NULL,
`keywords` TEXT NOT NULL,
`locale` VARCHAR(20) NOT NULL DEFAULT 'Russian',
`enable_registration` TINYINT(1) UNSIGNED DEFAULT '1' NOT NULL,
`license` TEXT NOT NULL,
`version` VARCHAR(10) NOT NULL DEFAULT '',
`AMX` TEXT NOT NULL,
`proverka` TEXT NOT NULL,
`maintenance` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
`maintenance_message` TEXT NOT NULL,
`Generator` TEXT NOT NULL,
`num_servers` TINYINT(1) UNSIGNED NOT NULL DEFAULT '20',
`register_MG1` TEXT NOT NULL,
`register_MG2` TEXT NOT NULL,
`copy_mon` TEXT NOT NULL,
`top_maps` int(5),
`news_top` int(5),
`top_servers` int(5),			
`top_search` int(5),
`all_serv_index` int(1),
`all_serv_search` int(1),
`register_off` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
`zname` VARCHAR(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
