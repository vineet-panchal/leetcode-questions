SELECT s.student_id, s.student_name, subs.subject_name, COUNT(e.student_id) attended_exams
-- select student_id, student_name, subject_name, COUNT(student_id) attended_exams
FROM Students s
CROSS JOIN Subjects subs
-- Get all combinations of students and subjects
LEFT JOIN Examinations e
-- Join on both student_id and subject_name to count attended exams
ON s.student_id = e.student_id
AND subs.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, subs.subject_name
-- Group by student and subject to get the count of attended exams
ORDER BY s.student_id, s.student_name, subs.subject_name
-- Order the results as required