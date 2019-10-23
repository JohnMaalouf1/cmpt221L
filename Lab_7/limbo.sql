#PURPOSE: TO HELP REUNITE USERS WITH THEIR LOST ITEMS
#AUTHORS: JACK MAALOUF, PATRICK PEKO, MAX TIECHE, JACKSON O'SULLIVAN
#VERSION: 1.0
drop database if exists limbo_db; 

create database if not exists limbo_db;
# Creates Database
use limbo_db;
# Uses Database
create TABLE if not exists users 
(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name TEXT, 
    last_name TEXT,
    email TEXT, 
    pass TEXT, 
    reg_date DATETIME
); # Creates table called users with attributes

INSERT INTO users 
(
    first_name , pass 
)
VALUES
( "admin" , "gaze11e");
# Inserts user with name admin and password gazelle
create TABLE if not exists stuff 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT NOT NULL,
    description TEXT NOT NULL,
    create_date DATETIME NOT NULL,
    update_date DATETIME NOT NULL, 
    room TEXT, owner TEXT, 
    finder TEXT, 
    status SET('found', 'lost', 'claimed') NOT NULL
); # Creates table called stuff with attributes

create TABLE if not exists locations ( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    create_date DATETIME NOT NULL, 
    update_date DATETIME NOT NULL,
    name TEXT NOT NULL
); # Creates table called locations with attributes

INSERT INTO locations ( create_date, update_date, name )
VALUES
( now(), now(), "Byrne House"),
( now(), now(), "Cannavino Library"),
( now(), now(), "Champ Hall"),
( now(), now(), "Chapel"),
( now(), now(), "Boathouse"),
( now(), now(), "Donnelly"),
( now(), now(), "Dyson"),
( now(), now(), "Fern Tor"),
( now(), now(), "Fontain"),
( now(), now(), "Foy Town Houses"),
( now(), now(), "Lower Fulton"),
( now(), now(), "Upper Fulton"),
( now(), now(), "Greystone"),
( now(), now(), "Hancock"),
( now(), now(), "Kieran Gatehouse"),
( now(), now(), "Kirk House"),
( now(), now(), "Leo "),
( now(), now(), "Longview Park"),
( now(), now(), "Lowell Thomas"),
( now(), now(), "Lower Town Houses"),
( now(), now(), "Marian Hall"),
( now(), now(), "Boat House"),
( now(), now(), "McCann Center"),
( now(), now(), "Mid-Rise"),
( now(), now(), "North Campus Housing"),
( now(), now(), "St. Ann's Hermitage"),
( now(), now(), "St. Peter's"),
( now(), now(), "Allied Health "),
( now(), now(), "Sheahan"),
( now(), now(), "Steel Plant"),
( now(), now(), "Student Center"),
( now(), now(), "Lower West"),
( now(), now(), "Upper West");
# Inserts locations on campus into the locations table
show tables;
SELECT name, create_date FROM locations;