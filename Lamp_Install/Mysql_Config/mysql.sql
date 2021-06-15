/* Mysql Configration after Installtion*/
/*
source mysql.sql
*/
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '23-Apr-2001';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;

