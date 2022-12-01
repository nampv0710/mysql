CREATE DATABASE IF NOT EXISTS Testing_System;

USE testing_system;

/* Table department */
CREATE TABLE department(
	DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE `position`(
	PositionID INT PRIMARY KEY AUTO_INCREMENT,
    PositionName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE `account` (
	AccountID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Username VARCHAR(50) NOT NULL,
    FullName VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE,
    CONSTRAINT FOREIGN KEY fk_account_department(DepartmentID) REFERENCES department(DepartmentID)
);

/* CHECK contraints */
CREATE TABLE trainee (
	TraineeID INT PRIMARY KEY AUTO_INCREMENT,
	Full_Name VARCHAR(50),
    Birth_Date DATE,
    Gender ENUM('male', 'female', 'unknown'),
    ET_IQ INT CHECK (ET_IQ >= 0 AND ET_IQ <= 20),
    ET_Gmath INT CHECK (ET_Gmath >= 0 AND ET_Gmath <= 20),
    ET_English INT CHECK (ET_English >= 0 AND ET_English <= 50),
    Training_Class VARCHAR(25),
    Evaluation_Notes VARCHAR(250)
);


























