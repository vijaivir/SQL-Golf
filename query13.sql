-- Retrieve each unique pair
-- of badges by name that were last
-- awarded on the same day.
-- Sort in ascending order,
-- first by the first badge.
-- 1.1 marks: <10 operators
-- 1.0 marks: <14 operators
-- 0.9 marks: <20 operators
-- 0.8 marks: correct answer

SELECT B1.Name AS FirstName, B2.Name AS SecondName, B2.Date 
FROM (
     SELECT Name, DATE(MAX(Date)) AS Date 
     FROM Badge
     GROUP BY Name
     ORDER BY Name ASC) AS B1
     JOIN(
        SELECT Name, DATE(MAX(Date)) AS Date 
        FROM Badge
        GROUP BY Name
        ORDER BY Name ASC 
    ) AS B2 ON (B1.Date = B2.Date)
    WHERE B1.Name <> B2.Name AND B1.Name < B2.Name
    ORDER BY B1.Name, B2.Name ASC;
