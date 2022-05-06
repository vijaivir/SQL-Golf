-- Retrieve by name and frequency the twenty unique Badges that have been awarded the most often after 2019
-- 1.1 marks: <7 operators
-- 1.0 marks: <9 operators
-- 0.8 marks: correct answer

SELECT Name, COUNT(*) Frequency
FROM Badge
WHERE Date > '2019-12-31 23:59:59 PM'
GROUP BY Name
ORDER BY COUNT(*) DESC
LIMIT 20;
