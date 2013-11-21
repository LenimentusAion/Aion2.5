CREATE TABLE `player_cmotions` (
  `player_id` int(11) NOT NULL,
  `cmotion_id` int(11) NOT NULL,
  `cmotion_active` tinyint(1) NOT NULL default '0',
  `cmotion_expires_time` bigint(20) NOT NULL default '0',
  `cmotion_creation_time` timestamp NOT NULL default '2011-01-01 00:00:01',
  PRIMARY KEY  (`player_id`,`cmotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;