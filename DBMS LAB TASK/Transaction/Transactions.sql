USE CollegeDB;

START TRANSACTION;

UPDATE Students
SET Age = 25
WHERE StudentID = 1;

SAVEPOINT sp1;

UPDATE Students
SET City = 'Hyderabad'
WHERE StudentID = 1;

ROLLBACK TO sp1;

COMMIT;

SELECT * FROM Students WHERE StudentID = 1;