-- Retrieve the name and count of the Badge awarded
-- the second-most number of times
-- 1.1 marks: <10 operators
-- 1.0 marks: <12 operators
-- 0.9 marks: <15 operators
-- 0.8 marks: correct answer

SELECT Name, Frequency
FROM (SELECT Name, COUNT(*) AS Frequency
                    FROM Badge AS B
                    GROUP BY B.Name
                    ORDER BY COUNT(*) DESC
                    LIMIT 2) AS X
ORDER BY Frequency ASC
LIMIT 1;