USE users_us;
CREATE TABLE `accounts` (
  `lid` int(11) NOT NULL PRIMARY KEY,
  `gid` int(11) NOT NULL UNIQUE,
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `country_id` smallint(6) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf16;