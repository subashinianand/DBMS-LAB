USE CollegeDB;

SELECT * FROM Students
ORDER BY Name ASC;

SELECT DISTINCT City FROM Students;

SELECT * FROM Students
WHERE Name LIKE 'A%';

SELECT * FROM Students
WHERE City IN ('Chennai', 'Delhi');

SELECT * FROM Students
WHERE Age BETWEEN 20 AND 22;