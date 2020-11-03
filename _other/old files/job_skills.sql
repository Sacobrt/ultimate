
CREATE TABLE `job_skills` (
  `user_id` int(10) unsigned NOT NULL,
  `skill_mehanicar` tinyint(3) NOT NULL,
  `skill_advokat` tinyint(3) NOT NULL,
  `skill_pilot` tinyint(3) NOT NULL,
  `skill_rudar` tinyint(3) NOT NULL,
  `skill_pnovca` tinyint(3) NOT NULL,
  `skill_uber` tinyint(3) NOT NULL,  
  `skill_pnamjestaja` tinyint(3) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
