DROP TABLE IF EXISTS `player_cmotions`;
DROP TABLE IF EXISTS `player_motions`;
CREATE TABLE `player_motions` (
  `player_id` int(11) NOT NULL,
  `motion_state` int(11) NOT NULL,
  `motion_active` tinyint(1) NOT NULL default '0',
  `motion_expires_time` bigint(20) NOT NULL default '0',
  `motion_date` timestamp NOT NULL default '2011-01-01 00:00:01',
  PRIMARY KEY  (`player_id`,`motion_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;