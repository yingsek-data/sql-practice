-- Platform: HackerRank
-- Topic: SQL_Basic_Advanced_Select
-- Date: 2026-11-20

SELECT
CASE 
    WHEN a + b <= c OR a + c <= b OR b + c <= a
        THEN 'Not A Triangle'
    WHEN a = b AND b = c
        THEN 'Equilateral'
    WHEN a = b OR b = c OR a = C
        THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM triangles;

SELECT CONCAT (name, '(', LEFT(occupation, 1), ')')
FROM occupations
ORDER BY name ASC;

SELECT CONCAT ('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.')
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation ASC;