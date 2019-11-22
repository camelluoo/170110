use toptea;
CREATE USER 'toptea'@'localhost' IDENTIFIED BY 'password'; 
ALTER USER 'toptea'@'localhost' IDENTIFIED BY 'abcd1234' PASSWORD EXPIRE NEVER;
ALTER USER 'toptea'@'localhost' IDENTIFIED WITH mysql_native_password BY 'abcd1234';
GRANT ALL PRIVILEGES ON *.* TO 'toptea'@'localhost';

