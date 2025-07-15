SELECT customer_id, COUNT(visit_id) AS count_no_trans
-- get customer_id and count of visits as count_no_trans
-- we need to get 
FROM Visits
WHERE visit_id NOT IN (
-- we need the visit_id of visits that did not have any transactions
  SELECT visit_id
  FROM Transactions
  -- check each visit_id in Transactions
)
GROUP BY customer_id