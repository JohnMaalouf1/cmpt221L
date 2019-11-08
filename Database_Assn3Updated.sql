drop database if exists limbo_db; 
create database if not exists limbo_db;
# Creates Database
use limbo_db;

CREATE TABLE `Car` (
  `Model` text,
  `OwnerName` text,
  `Liscense Plate` text
);

CREATE TABLE `Account` (
  `Email` text,
  `userName` text,
  `Password` text,
  `DOB` DateTime,
  `Name` text,
  `residenceBuilding` text,
  `roomNumber` int,
  `phoneNumber` text,
  `idNumber` int AUTO_INCREMENT,
  PRIMARY KEY (`idNumber`)
);

CREATE TABLE `Customers` (
  `Email` text,
  `userName` text,
  `Password` text,
  `DOB` DateTime,
  `Name` text,
  `Location` text,
  `ProductID` int,
  `PhoneNumber` int,
  `idNumber` int AUTO_INCREMENT,
  FOREIGND KEY (`idNumber`)
);

CREATE TABLE `Departure` (
  `Time` DateTime,
  `Place` text,
  `DeperatureID` int
);

CREATE TABLE `Location` (
  `driverID` text,
  `time` DateTime,
  `place` text,
  `tracker` text
);

CREATE TABLE `Payment` (
  `PaymentID` int AUTO_INCREMENT,
  `Payment Type` text,
  `Payment Details` text,
  PRIMARY KEY (`PaymentID`)
);

CREATE TABLE `Item` (
  `Description` text,
  `Size` text,
  `ItemID` int AUTO_INCREMENT,
    PRIMARY KEY (`ItemID`)

);

CREATE TABLE `Driver` (
  `Email` text,
  `userName` text,
  `Password` text,
  `DOB` DateTime,
  `Name` text,
  `Location` text,
  `ProductID` int,
  `PhoneNumber` int,
  `idNumber` int,
  PRIMARY KEY (`idNumber`)
);

CREATE TABLE `Arrival` (
  `Time` DateTime,
  `Place` text,
  `ArrivalID` int AUTO_INCREMENT,
    PRIMARY KEY (`ArrivalID`)

);

CREATE TABLE `Transation` (
  `TransactionDecline` DateTime,
  `TransactionConfirmation` DateTime,
  `Amount` Double
);

show tables;