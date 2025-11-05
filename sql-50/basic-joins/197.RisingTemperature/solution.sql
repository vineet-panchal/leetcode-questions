SELECT w1.id 
-- get the id column from the Weather table aliased as w1
FROM Weather w1
JOIN Weather w2
-- self-join the Weather table aliased as w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
-- join on the condition that the difference in days between the recordDate of w1 and w2 is 1
WHERE w1.temperature > w2.temperature
-- filter the results where the temperature of w1 is greater than that of w2