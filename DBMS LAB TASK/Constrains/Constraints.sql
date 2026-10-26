USE CollegeDB;

CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
EmpID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Salary INT CHECK (Salary > 0),
DeptID INT,
Status VARCHAR(20) DEFAULT 'Active',
FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
SELECT * FROM Employee;

INSERT INTO Department VALUES (1, 'IT'), (2, 'HR');
INSERT INTO Employee (EmpID, Name, Salary, DeptID)
VALUES (101, 'Arun', 30000, 1);
SELECT * FROM Department;