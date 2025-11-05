SELECT Employee.name, Bonus.bonus
-- select the employee name and bonus amount
FROM Employee
LEFT JOIN Bonus
-- perform a left join to include all employees
ON Employee.empid = Bonus.empid
-- join on empid to match employees with their bonuses
WHERE bonus < 1000 OR bonus IS NULL
-- filter for bonuses less than 1000 or no bonus at all