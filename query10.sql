-- Retrieve the postid and display name of the user who posted it
-- for *all* posts that have linked to at least twenty other posts,
-- ordered by postId
-- 1.1 marks: <8 operators
-- 1.0 marks: <9 operators
-- 0.9 marks: <11 operators
-- 0.8 marks: correct answer

--Incomplete

SELECT PostId, DisplayName
FROM User 
    JOIN Post 
    ON (Post.OwnerUserId = User.Id)
      JOIN(
            SELECT PostId, COUNT(*) Count
            FROM Link 
            GROUP BY PostId 
            HAVING COUNT(*) >= 20) AS X
        ON (Post.Id = X.PostId)
ORDER BY PostId;

