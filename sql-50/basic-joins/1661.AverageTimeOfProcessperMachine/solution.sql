SELECT customer_id, ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
-- select the customer_id and the average processing time rounded to 3 decimal places
FROM Activity a, Activity b
-- self-join the Activity table aliased as a and b
WHERE a.machine_id = b.machine_id
-- join on the condition that the machine_id of a and b are the same
AND a.process_id = b.process_id
-- join on the condition that the process_id of a and b are the same
AND a.activity_type = 'start'
-- filter the results where the activity_type of a is 'start'
AND b.activity_type = 'end'
-- filter the results where the activity_type of b is 'end'
GROUP BY machine_id;
-- group the results by machine_id