-- Retrieve the post id of all posts before July 2010 that
-- have never been linked to, ordered descending
-- 1.1 marks: <6 operators
-- 1.0 marks: <8 operators
-- 0.8 marks: correct answer

SELECT Post.Id 
FROM Post
LEFT JOIN Link AS L ON(Post.Id = L.RelatedPostId)
WHERE L.RelatedPostId IS NULL
AND Post.CreationDate < '2010-07-01 00:00:00 AM'
ORDER BY Post.Id DESC;

-- operators used: 5
