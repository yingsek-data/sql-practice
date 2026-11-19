-- Platform: HackerRank
-- Topic: SQL_Basic_Basic SELECT
-- Date: 2026-11-19

SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

SELECT name
FROM city
WHERE population > 120000 AND countrycode = 'USA';

SELECT *
FROM city;

SELECT *
FROM city
WHERE id = '1661';

SELECT *
FROM city
WHERE countrycode = 'JPN';

SELECT name
FROM city
WHERE countrycode = 'JPN';

SELECT city, state
FROM station;

SELECT DISTINCT city
FROM station
WHERE id%2 = 0;

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

SELECT * 
FROM(
    SELECT TOP 1 city, LEN(city) AS length
    FROM station
    ORDER BY LEN(city) ASC, city ASC
) AS shortest

UNION

SELECT *
FROM(
    SELECT TOP 1 city, LEN(city) AS length
    FROM station
    ORDER BY LEN(city) DESC, city ASC
) AS longest;

SELECT city, state
FROM station;

SELECT DISTINCT city
FROM station
WHERE city LIKE '[aeiou]%';

SELECT DISTINCT city
FROM station
WHERE city LIKE '%[aeiou]';

SELECT DISTINCT city
FROM station
WHERE city LIKE '[aeiou]%[aeiou]';

SELECT DISTINCT city
FROM station
WHERE city LIKE '[^aeiou]%';

SELECT DISTINCT city
FROM station
WHERE city LIKE '%[^aeiou]';

SELECT DISTINCT city
FROM station
WHERE city LIKE '[^aeiou]%' OR city LIKE '%[^aeiou]';

SELECT DISTINCT city
FROM station
WHERE city LIKE '[^aeiou]%[^aeiou]';

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3) ASC, id ASC;

SELECT name
FROM employee
ORDER BY name ASC;

SELECT name
FROM employee
WHERE months < 10 AND salary > 2000
ORDER BY employee_id ASC;