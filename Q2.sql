-- Support rep with most customers
SELECT e.EmployeeId, e.FirstName || " " || e.LastName AS Employee_Name, count(*) customers_no
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
GROUP BY 1
ORDER BY 3 DESC;