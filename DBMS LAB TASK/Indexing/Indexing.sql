USE CollegeDB;

SELECT * FROM Students 
WHERE Name = 'Kavi';

CREATE INDEX idx_name ON Students(Name);

SELECT * FROM Students 
WHERE Name = 'Kavi';

EXPLAIN SELECT * FROM Students 
WHERE Name = 'Kavi';

DROP INDEX idx_name ON Students;