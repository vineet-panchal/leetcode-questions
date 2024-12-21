SELECT P.firstName, P.lastName, A.city, A.state from Person P, Address A
-- select firstName, lastName from Person table and select city, state from Address table
WHERE P.personId = A.personId 
-- create a table where the personId of Person table match the personId of the Address table
UNION -- join that table with
SELECT P.firstName, P.lastName, NULL, NULL from Person P
-- select firstName, lastName, and two null for city and state from Person table
WHERE P.personId NOT IN (SELECT personId from Address)
-- create a table where personId from Person table does not match personId from Address table