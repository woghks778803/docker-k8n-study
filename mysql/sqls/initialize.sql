DROP DATABASE IF EXISTS myapp;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
ALTER USER 'root'@'%' IDENTIFIED BY 'password';
CREATE USER 'jpro'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'jpro'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

CREATE DATABASE myapp;
GRANT ALL PRIVILEGES ON *.* TO 'jpro'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'jpro'@'%';

USE myapp;

CREATE TABLE lists (
    id INTEGER AUTO_INCREMENT,
    value TEXT,
    PRIMARY KEY (id)
);