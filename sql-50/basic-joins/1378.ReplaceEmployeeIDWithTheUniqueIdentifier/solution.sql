-- solution 1
SELECT euni.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI euni
ON e.id = euni.id
ORDER BY e.name

-- solution 2
SELECT euni.unique_id, e.name 
FROM Employees e
RIGHT JOIN EmployeeUNI euni
ON e.id = euni.id
ORDER BY e.name;