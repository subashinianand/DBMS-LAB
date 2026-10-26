USE CollegeDB;

CREATE VIEW StudentView AS
SELECT Name, City FROM Students;

SELECT * FROM StudentView;

CREATE OR REPLACE VIEW StudentView AS
SELECT Name, Age FROM Students;

SELECT * FROM StudentView;

DROP VIEW StudentView;