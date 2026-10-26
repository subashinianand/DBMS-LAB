CREATE DATABASE College____DB;
USE CollegeDB;
CREATE TABLE Students (
       StudentID INT PRIMARY KEY,
       Name VARCHAR(50) NOT NULL,
       Email VARCHAR(100) UNIQUE,
	   Age INT,
       City VARCHAR(50)
);
DESC Students