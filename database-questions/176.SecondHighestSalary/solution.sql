SELECT (SELECT DISTINCT Salary -- select a distinct value from salary
        FROM Employee -- from the Employee table
        ORDER BY Salary DESC -- order salary in descending order
        LIMIT 1 OFFSET 1) -- get the second value by skipping by 1
        AS SecondHighestSalary -- put that in a different table with column title being SecondHighestSalary