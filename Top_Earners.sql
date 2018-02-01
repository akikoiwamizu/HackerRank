SELECT e.earnings, COUNT(e.employee_id)
FROM (SELECT *, (months*salary) as earnings
      FROM Employee) AS e
GROUP BY e.earnings
ORDER BY e.earnings DESC
LIMIT 1;
