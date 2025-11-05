SELECT name FROM Customer
-- select the name column from the Customer table
WHERE referee_id != 2 AND referee_id IS NOT NULL
-- filter so that referee_id is not 2 and is not null