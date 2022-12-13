USE users_eu;
CREATE USER IF NOT EXISTS 'clustered_user'@'%' IDENTIFIED BY 'password';
GRANT USAGE ON *.* TO 'clustered_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0;
GRANT ALL PRIVILEGES ON `users_eu`.* TO 'clustered_user'@'%';

