-- Using sub-query to perform operation

SELECT customer_name, product_name
FROM (SELECT * FROM sales
WHERE volume > 1000) AS base_result;

-- A 'VIEW' is something that is stored in database, it is permanenently in database
-- it is not lost immediately.

-- create a view and use it later in the codes
CREATE VIEW base_result as SELECT * FROM sales
WHERE volume > 1000;

-- using the view in the query
SELECT customer_name, product_name
FROM base_result;

-- sub-queries are not only used for selecting queries but also for the insertion as well
-- we can store the result get from one table to the other table given the starcture of 
-- table in which we are goin gto insert has the same structure as tha of the incoming data
-- from inner query.
INSERT INTO top_sales (...)