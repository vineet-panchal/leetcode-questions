SELECT
  class
FROM
  Courses
GROUP BY
  class
HAVING
  COUNT(DISTINCT student_id) >= 5;