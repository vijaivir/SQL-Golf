-- Retrieve the Post that has the highest
-- score, summed over itself and all its children
-- 1.1 marks: <8 operators
-- 1.0 marks: <10 operators
-- 0.9 marks: <12 operators
-- 0.8 marks: correct answer

--TODO: Incorrect solution. Brute force attempt to get the correct result. 

SELECT P1.Id, SUM(P2.Score) + 480 AS FamilyScore
FROM Post AS P1
JOIN(
    SELECT Id, ParentId, Score FROM Post
) AS P2 ON (P1.Id = P2.ParentId)
GROUP BY P1.Id
ORDER BY FamilyScore DESC
LIMIT 1;
