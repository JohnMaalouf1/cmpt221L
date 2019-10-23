/*
Presidents.sql
Group Members:
John Maalouf, Patrick Peko, Max Tieche, Jackson O'Sullivan

*/

drop database if exists site_db; 
create database site_db; 
use site_db;

create table if not exists presidents(
id INT AUTO_INCREMENT PRIMARY KEY,
fname TEXT NOT NULL,
lname TEXT NOT NULL,
num INT NOT NULL
#dob DATETIME default 1735-10-30 00:00:00

);

INSERT INTO presidents (fname, lname, num)
VALUES ("Thomas", "Jefferson", 3)
 

#select * from presidents;
#select fname, lname, num from presidents order by num asc;
#select lname, num, dob from presidents order by lname asc;
#select lname, num, dob from presidents order by dob desc;


# EXPLAIN presidents;