-- solution 1
SELECT euni.unique_id, e.name
-- select the unique_id from EmployeeUNI and name from Employees
FROM Employees e
-- from Employees table aliased as e
LEFT JOIN EmployeeUNI euni
-- left join with EmployeeUNI table aliased as euni
ON e.id = euni.id
-- on the condition that the id columns match
ORDER BY e.name
-- order the results by employee name

-- solution 2
SELECT euni.unique_id, e.name 
-- select the unique_id from EmployeeUNI and name from Employees
FROM Employees e
-- from Employees table aliased as e
RIGHT JOIN EmployeeUNI euni
-- right join with EmployeeUNI table aliased as euni
ON e.id = euni.id
-- on the condition that the id columns match
ORDER BY e.name;
-- order the results by employee name