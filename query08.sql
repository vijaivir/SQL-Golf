-- Note: Aspects of this are *very* tricky
-- Retrieve the display name of all users who have
-- never posted a post that has been linked by another post
-- ordered ascending
-- 1.1 marks: <8 operators
-- 1.0 marks: <10 operators
-- 0.8 marks: correct answer

-- TODO: This query could be optimized further

SELECT DisplayName
FROM User
LEFT JOIN (
            SELECT OwnerUserId
            FROM Post AS P
            LEFT JOIN Link AS L ON (P.Id = L.RelatedPostId)
            WHERE L.RelatedPostId IS NOT NULL
            GROUP BY OwnerUserId) AS X     
    ON (Id = OwnerUserId)
WHERE OwnerUserId IS NULL
ORDER BY DisplayName ASC; 
