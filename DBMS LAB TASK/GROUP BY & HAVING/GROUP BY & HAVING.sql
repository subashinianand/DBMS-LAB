USE CollegeDB;
SELECT City, COUNT(*) AS TotalStudents
FROM Students
GROUP BY City
HAVING COUNT(*) > 1;