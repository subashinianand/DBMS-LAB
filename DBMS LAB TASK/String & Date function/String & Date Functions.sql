USE CollegeDB;

SELECT UPPER(Name) AS UpperName FROM Students;

SELECT LOWER(City) AS LowerCity FROM Students;

SELECT SUBSTR(Name, 1, 3) AS ShortName FROM Students;

SELECT ROUND(AVG(Age), 2) AS RoundedAverageAge FROM
Students;

SELECT NOW();

SELECT DATE_ADD(NOW(), INTERVAL 5 DAY);