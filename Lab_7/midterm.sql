drop database if exists midterm_db;
create database if not exists midterm_db;
use midterm_db;


create table if not exists person(
    age int,
    name text,
    height int);

insert into person (age, name, height)
VALUES (19, "Max", 6),
(19, "Jack", 5);
select name, age from person;

update person set height = 8, name = "kerchoo" where age = 19;
select name, age, height from person;
#show tables; 
#explain person;