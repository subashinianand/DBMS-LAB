USE CollegeDB;

SELECT COUNT(*) AS TotalStudents FROM Students;

SELECT SUM(Age) AS TotalAge FROM Students;

SELECT AVG(Age) AS AverageAge FROM Students;

SELECT MIN(Age) AS MinimumAge FROM Students;

SELECT MAX(Age) AS MaximumAge FROM Students;