drop database if exists site_db; 
create database site_db; 
use site_db;

create table if not exists presidents(
id INT AUTO_INCREMENT PRIMARY KEY,
fname TEXT NOT NULL,
lname TEXT NOT NULL,
num INT NOT NULL,
dob DATETIME NOT NULL

);

INSERT INTO presidents (fname, lname, num, dob)
VALUES ("Thomas", "Jefferson", 3, "1732-4-13 00:00:00"),
 ("Abraham", "Lincoln", 16, "1809-2-12 00:00:00"),
 ("Andrew", "Jackson", 7, "1767-3-15 00:00:00"),
 ("Ulysses", "Grant", 18, "1822-4-27 00:00:00");

select * from presidents;
select lname, num, dob from presidents order by num asc;
select lname, num, don from presidents order by lname asc;
select lname, num, dob from presidents order by dob desc;


EXPLAIN presidents;