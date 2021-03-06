-- Retrieve the display names of every user
-- who has received the Badge that has been
-- awarded the most times, excluding those badges
-- that have been awarded over ten thousand times.
-- Order the result in descending order.
-- 1.1 marks: <12 operators
-- 1.0 marks: <15 operators
-- 0.9 marks: <20 operators
-- 0.8 marks: correct answer

--TODO: This query is incorrect. It results in an extra row

SELECT DisplayName
FROM User 
JOIN(
    SELECT UserId 
    FROM Badge 
    WHERE Name = 'Nice Question'
    GROUP BY UserId
    ) AS X
ON (User.Id = X.UserId)
GROUP BY DisplayName
ORDER BY DisplayName DESC;
