USE users_eu;
CREATE USER IF NOT EXISTS 'clustered_user'@'%' IDENTIFIED BY 'password';
GRANT USAGE ON *.* TO 'clusterd_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0;
GRANT ALL PRIVILEGES ON `sailmaster`.* TO 'clusterd_user'@'%';

