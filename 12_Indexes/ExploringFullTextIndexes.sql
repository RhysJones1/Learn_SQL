USE sql_blog;

SELECT *
FROM posts
WHERE title LIKE '%react redux%' OR 
	body LIKE '%react redux%';
-- Take a look as above, while for a small database this won't cause issues
-- Imagine if you did this on a corporate database? Likely Big O here would be O/n^ 
	-- As the database gets larger so does the length of time it takes to search
    
-- This is where Full Text indexing comes in:

CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

SELECT *, MATCH (title, body) AGAINST ('react redux')
FROM posts
WHERE MATCH (title, body) AGAINST ('react redux');
-- This will return any posts with one or both these key words in title or body
-- Full text index comes with a relevancy search, similar to that you see on popular search engines like google
-- There are two modes Natural Text Mode and Boolean Mode

-- Boolean Mode:
SELECT *, MATCH (title, body) AGAINST ('react redux')
FROM posts
WHERE MATCH (title, body) AGAINST ('react -redux' IN BOOLEAN MODE) ;
-- Here we can use minus or a plus. Adding - before redux means we should exclude it from our searches
-- If we add a + this means we need to have the word within the search
-- ' " " ' searches for the exact text
