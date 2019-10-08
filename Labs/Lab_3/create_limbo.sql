# This file creates the Limbo database.
# Author: <John Maalouf, Patrick Peko, Max Tieche, Jackson O'Sullivan>

drop database if exists limbo_db; 
create database limbo_db ; 
use limbo_db ;
create table if not exists stuff(
id INT,
descr TEXT,
name TEXT,
age INT,
years TEXT

);


ALTER TABLE stuff
ADD PRIMARY KEY ( id ),
CHANGE descr description text,
ADD COLUMN room text,
ADD COLUMN owner text, 
ADD COLUMN finder text;


EXPLAIN stuff;
