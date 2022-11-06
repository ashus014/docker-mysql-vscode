SELECT * FROM sales 
ORDER BY volume DESC
LIMIT 10;

-- We can also use where clause as well but before ORDER BY

SELECT * FROM sales 
WHERE is_disputed IS NOT TRUE
ORDER BY volume DESC
LIMIT 10;

-- Using offset, here we have 5 biggest sales but the 3 biggest would be skipped

SELECT * FROM sales 
ORDER BY volume DESC
LIMIT 5
OFFSET 3; -- 4th & 5th record would be shown