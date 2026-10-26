DROP TABLE Students;
DROP TABLE Courses;
CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT,
    City VARCHAR(50)
);

DESC Students;

INSERT INTO Students (StudentID, Name, Email, Age, City) VALUES
(1, 'Joy', 'joy@gmail.com', 19, 'Thoothukudi'),
(2, 'Jenish', 'jeni@gmail.com', 18, 'Delhi'),
(3, 'Kavi', 'kavi@gmail.com', 21, 'Chennai');

SELECT * FROM Students;

CREATE TABLE Courses (
    CourseID INT,
    StudentID INT,
    CourseName VARCHAR(50)
);
DESC Courses;

INSERT INTO Courses VALUES
(101, 1, 'DBMS'),
(102, 2, 'Python'),
(103, 4, 'Java');

SELECT * FROM Courses;

SELECT Name FROM Students
WHERE StudentID IN (
    SELECT StudentID FROM Courses
);

SELECT Name FROM Students
WHERE Age > ANY (
    SELECT Age FROM Students
    WHERE City = 'Chennai'
);

SELECT Name FROM Students
WHERE Age > ALL (
    SELECT Age FROM Students
    WHERE City = 'Delhi'
);

SELECT Name FROM Students s
WHERE EXISTS (
    SELECT 1 FROM Courses c
    WHERE s.StudentID = c.StudentID
);
