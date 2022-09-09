-- customer spent more than average
WITH t1 AS(
	SELECT c.CustomerId, c.LastName, c.FirstName, SUM(i.total) TotalSpent
	FROM Customer c
	JOIN Invoice i
	ON c.CustomerId = i.CustomerId
	GROUP BY 1
	ORDER BY 4 DESC)
	
SELECT *
FROM t1
WHERE t1.TotalSpent > (SELECT AVG(t2.TotalSpent) FROM t1 AS t2)
